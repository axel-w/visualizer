#!/usr/bin/env python
"""Visualizer for pipeline results.

This visualizer is a Flask based web application. It is build using plotly, dash
and dash-bootstrap-components.

When executed it will start a web server on http://127.0.0.1:8050/.
Any up-to-date chromium based browser will is compatible. The visualizer is
optimized for FullHd screens.

The app is programmed without relevant global states so it should be able to
handle multiple users if deployed on a server.

Dark mode can be enabled in this script by setting the template variable to
"darkly" ("flatly" for light mode).


The app is organized in 1 to 3 workload-group-cards (internally called 'wl-card'). They expand depending on the selected information.
Additionally there is one horizontal card for comparisons.
The app can be easily expanded for example by adding new graphs to any card.
This can be done for example by supplying different figures to the same
dcc.Graph depending on selected buttons (see update_heatmap() for an example).
"""
import copy
from dash import Dash, dcc, html, Input, Output, State, Patch, ALL, MATCH, ctx, no_update, dash_table
from dash.exceptions import PreventUpdate
import dash_bootstrap_components as dbc
from dash_bootstrap_templates import load_figure_template
import numpy as np
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from plotly.express.colors import sequential
import re
from result_decoder import get_groups, ResultGroup
from result_types import Results
from typing import Any

# switch for dark/light mode ('darkly'/'flatly')
template = 'darkly'

# dark/light mode related:
template_dict = {
    "darkly": dbc.themes.DARKLY,
    "flatly": dbc.themes.FLATLY,
}

table_template_dict = {
    "darkly": {
        'style_header': {
            'backgroundColor': 'rgb(30, 30, 30)'
        },
        'style_data': {
            'backgroundColor': 'rgb(50, 50, 50)'
        },
        'style_filter': {
            'backgroundColor': 'rgb(40, 40, 40)'
        },
        'style_cell': {
            'font-size': '0.8rem',
            'color': 'white',
            'textAlign': 'center'
        }
    },
    "flatly": {
        'style_header': {
            'backgroundColor': 'rgb(230, 230, 230)'
        },
        'style_data': {
            'backgroundColor': 'rgb(255, 255, 255)'
        },
        'style_filter': {
            'backgroundColor': 'rgb(240, 240, 240)'
        },
        'style_cell': {
            'font-size': '0.8rem',
            'color': 'black',
            'textAlign': 'center'
        }
    },
}

ignored_dropdown_theme = ''
if template != 'darkly':
    ignored_dropdown_theme = 'dark_mode_dropdown.css'
load_figure_template(template)

# button class:
common_button_class = 'btn btn-secondary'

################################################################################
# colors for data used in the bar chart and the data table
reds = sequential.Reds
amp = sequential.amp
purples = sequential.Purples
purp = sequential.Purp
mint = sequential.Mint
blues = sequential.Blues
ylorrd = sequential.YlOrRd
ice = sequential.ice

source_pattern_map = {
    'c0 D$': '',
    'c0 I$': '.',
    'c1 D$': '/',
    'c1 I$': '\\',
    'c2 D$': 'x',
    'c2 I$': '+',
    'c3 D$': '-',
    'c3 I$': '|',
    'c4 D$': '',
    'c4 I$': '.',
    'c5 D$': '/',
    'c5 I$': '\\',
    'c6 D$': 'x',
    'c6 I$': '+',
    'c7 D$': '-',
    'c7 I$': '|',
}

op_colors = {
    # change of permissions
    "ProbeBlock": purples[6],
    "ProbePerm": purp[5],
    "ProbeAck": purples[5],
    "ProbeAckData": purples[4],

    # write to slave
    "PutFullData": blues[6],
    "PutPartialData": blues[5],
    "AccessAcc": blues[3],
    "ArithmeticData": ice[3],
    "LogicalData": ice[4],

    # read from slave
    "Get": 'hsl(60, 50%, 50%)',
    "AccessAckData": 'hsl(60, 50%, 65%)',

    # master acquires
    "Intent": reds[8],
    "HintAck": reds[7],
    "AcquireBlock": reds[6],
    "AcquirePerm": amp[6],
    "Grant": reds[5],
    "GrantData": reds[4],
    "GrantAcc": reds[3],

    # master releases
    "Release": mint[6],
    "ReleaseData": mint[5],
    "ReleaseAck": mint[4],
    "-": "black"
}


def get_core_color_mapping(ncores: int) -> list:
    """Creates a color mapping for cores.

    The color mapping is used in the detailed table to help the user distinguish
    between messages of different cores.

    Args:
        ncores (int): number of cores

    Returns:
        list: list of dicts with conditional color formatting
    """
    if template == 'darkly':
        def background_color_lightness(
            x): return 70 / ncores * (ncores - x) + 25
    else:
        def background_color_lightness(x): return 70 / ncores * x + 25
    color_mapping = []
    for i in range(ncores):
        color_mapping.append({
            'if': {
                'filter_query': f'{{source}} contains "{f"c{i} "}"',
                'column_id': 'source'
            },
            'backgroundColor':
                f'hsla(0, 0%, {background_color_lightness(i)}%, 0.5)',
            'fontWeight':
                'bold',
            'pattern':
                '.'
        })
    return color_mapping


table_op_color_mapping = [{
    'if': {
        'filter_query': f'{{op}} = {op}',
        'column_id': 'op'
    },
    'backgroundColor': color,
    'fontWeight': 'bold'
} for op, color in op_colors.items()]

param_colors = {
    'cap': 'hsla(40, 50%, 25%,0.3)',
    'grow': 'hsla(120,50%,25%,0.3)',
    'prune': 'hsla(0, 50%, 50%, 0.3)',
    'report': 'hsla(0, 0%, 0%, 0.3)',
}
table_param_color_mapping = [{
    'if': {
        'filter_query': f'{{param}} contains {param}',
        'column_id': 'param'
    },
    'background_color': color
} for param, color in param_colors.items()]

detailed_table_columns = [{
    'name': 'tick',
    'id': 'tick',
    'type': 'numeric'
}, {
    'name': 'dir',
    'id': 'dir',
    'type': 'text'
}, {
    'name': 'channel',
    'id': 'channel',
    'type': 'text'
}, {
    'name': 'source',
    'id': 'source',
    'type': 'numeric'
}, {
    'name': 'sink',
    'id': 'sink',
    'type': 'numeric'
}, {
    'name': 'address',
    'id': 'address',
    'type': 'numeric'
}, {
    'name': 'op',
    'id': 'op',
    'type': 'text'
}, {
    'name': 'param',
    'id': 'param',
    'type': 'text'
}, {
    'name': 'data',
    'id': 'data',
    'type': 'numeric'
}, {
    'name': 'size',
    'id': 'size',
    'type': 'numeric'
}, {
    'name': 'mask',
    'id': 'mask',
    'type': 'numeric'
}, {
    'name': 'denied',
    'id': 'denied',
    'type': 'numeric'
}, {
    'name': 'corrupt',
    'id': 'corrupt',
    'type': 'numeric'
}]


################################################################################
# data transformation:
def generate_workload_group_dropdown_options(
        groups: dict[ResultGroup]) -> list[dict[str, str]]:
    """Generates options for the workload group dropdown.

    Every workload group is represented by an option in the dropdown. Here these
    options are generated. Each option has a value, a label and a search string.
    All are derived from workload group information.

    Args:
        groups (dict[ResultGroup]): dict of ResultGroups

    Returns:
        list[dict[str, str]]: list of option dicts
    """
    options = []
    for n, group in groups.items():
        count_detailed = 'detailed' if group.log_mode else 'count'
        run_debug = 'debug' if group.debug_mode else 'run'
        option_label = dcc.Markdown(
            f'**{n}**  -  (wls: {len(group.results)}, ncores: {group.ncores},'
            f' {count_detailed}, {run_debug},'
            f' {group.insert_location[0]}-{group.insert_location[1]})')
        if group.core_mask != []:
            core_mask_str = map(str, group.core_mask)
            mask_search_string = f'mask: {" ".join(core_mask_str)}'
        else:
            mask_search_string = str()
        search_string: str = (
            f'{n} wls: {len(group.results)}, ncores: {group.ncores},'
            f' {count_detailed}, {run_debug}, {group.chip_config},'
            f' {mask_search_string}, optimization:'
            f' {group.compiler_optimization}'
            f' {group.insert_location[0]}={group.insert_location[1]})')
        option = {'label': option_label, 'search': search_string, 'value': n}
        options.append(option)
    return options


groups = get_groups()
wl_group_dropdown_options = generate_workload_group_dropdown_options(groups)

################################################################################
# layout part generators:


# sender/receiver selection:
def source_checklist(id: int, corenr: int) -> html.Div:
    """Generates a html.Div containing a label and a checklist.

    This component shows the horizontal checklist for selecting the two L1
    caches of a core as included sender/receiver.

    Args:
        id (int): workload-group card id
        corenr (int): core number

    Returns:
        html.Div: a html.Div containing a label and a checklist component
    """
    return html.Div(
        [
            dbc.Label(f'core {corenr}'),
            dbc.Checklist(
                options=[
                    {
                        "label": 'D$',
                        "value": f'c{corenr} D$'
                    },
                    {
                        "label": 'I$',
                        "value": f'c{corenr} I$'
                    },
                ],
                value=[f'c{corenr} D$', f'c{corenr} I$'],
                id={
                    'type': 'source-checklist',
                    'index': id,
                    'part': corenr
                },
                inline=True,
            ),
        ],
        style={
            'display': 'flex',
            'flexDirection': 'column',
            'justifyContent': 'center',
            'alignItems': 'center'
        })


def additional_sources(id: int, part: int) -> html.Div:
    """Generates a html.Div containing a label and a checkbox.

    This component is for the selection of channel E data as included.
    This is necessary since channel E data is not directly associated with a
    core.

    Args:
        id (int): workload-group card id
        part (int): A unique number for each active "source-checklist"
            component

    Returns:
        html.Div: a html.Div containing a label and a checklist component
    """
    return html.Div(
        [
            dbc.Checklist(
                options=[
                    {
                        "label": '(all E)',
                        "value": f'unknown(E)'
                    },
                ],
                value=['unknown(E)'],
                id={
                    'type': 'source-checklist',
                    'index': id,
                    'part': part
                },
            ),
        ],
        style={
            'display': 'inline-block',
            'flexDirection': 'row',
            'justifyContent': 'center',
            'alignItems': 'center'
        })


def universal_sources(id: int, part: int, source_name: int) -> html.Div:
    """Generates a html.Div containing a label and a checkbox.

    This component creates a source checkbox depending for the given source
    name. This is used to automatically create checkboxes for all sources which
    do not have a dedicated layout formatting like source_checklist() for the
    "sbus-l2" insertion.

    Args:
        id (int): workload-group card id
        part (int): A unique number for each active "source-checklist"
            component
        source_name (int): Name of the source

    Returns:
        html.Div: A html.Div containing a label and a checklist component
    """
    return html.Div(
        [
            dbc.Checklist(
                options=[
                    {
                        "label": source_name,
                        "value": source_name
                    },
                ],
                value=[source_name],
                id={
                    'type': 'source-checklist',
                    'index': id,
                    'part': part
                },
            )
        ],
        style={
            'display': 'flex',
            'flexDirection': 'column',
            'justifyContent': 'center',
            'alignItems': 'center'
        })


def create_source_checklists(id: int, ncores: int, insert_loc: list[str],
                             source_list: list[str]) -> html.Div:
    """Gathers all sender/receiver selection components for a workload-group.

    Creates a source selection html Div with components depending on the
    insertion location of the measurement facility.
    In case of master sbus insertion, source_checklist() creates a seperate
    checklist for every core in the workload-group and also adds the
    additional_sources() component.
    In all other cases it creates a universal_sources() component for every
    source in the a list of all sources.

    Args:
        id (int): workload-group card id
        ncores (int): number of cores in the workload-group
        insert_loc (list[str]): Insertion location of the measurement facility
        source_list (list[str]): List of all sources

    Returns:
        html.Div: A html.Div containing multiple labels and checklists
    """
    if insert_loc[0] == 'sbus':
        all_source_lists = [source_checklist(id, i) for i in range(ncores)]
        all_source_lists.append(additional_sources(id, ncores))
        return html.Div(all_source_lists,
                        style={
                            'display': 'flex',
                            'justifyContent': 'space-evenly',
                            'alignItems': 'center',
                            'paddingTop': '1rem',
                            'paddingBottom': '0.5rem'
                        })
    else:
        if source_list != None:
            all_source_lists = [
                universal_sources(id, part, source_name)
                for part, source_name in enumerate(source_list)
            ]
        else:
            all_source_lists = []
    return html.Div(all_source_lists,
                    style={
                        'display': 'flex',
                        'justifyContent': 'space-evenly',
                        'alignItems': 'center',
                        'paddingTop': '1rem',
                        'paddingBottom': '0.5rem'
                    })


# workload group component:
def workload_group_card(id: int,
                        class_name: str = '',
                        close_btn_init_disabled: bool = False,
                        move_btn_init_disabled: bool = False) -> dbc.Card:
    """Generates a workload-group card.

    A workload-group card contains a header and a body. The header has the
    workload-group dropdown, two add workload-group buttons, two move
    workload-group buttons, a reload button and a close button. The body has a
    workload selection dropdown, a button to show all workloads and  button to
    toggle the details table, if it is available.
    Buttons are disabled or enabled depending on the current available data and
    the number of workload-group cards.

    Depending on button and dropdown activations the workload-group card expands
    vertically to show sender/receiver selection, a dcc.Graph of all workloads
    and a detailed table.

    Args:
        id (int): workload-group card id
        class_name (str, optional): class_name for the css configuration.
            Defaults to ''.
        close_btn_init_disabled (bool, optional): sets the initial value of the
            disabled attribute for the close button. Defaults to False.
        move_btn_init_disabled (bool, optional): sets the initial value of the
            disabled attribute for both move buttons. Defaults to False.

    Returns:
        dbc.Card: a workload-group card
    """
    return dbc.Card(
        [
            dbc.CardHeader([
                dbc.ButtonGroup([
                    dbc.Button("❮",
                               id={
                                   'type': 'move-left',
                                   'index': id
                               },
                               style={'margin': 'auto'},
                               className=common_button_class,
                               outline=True,
                               disabled=move_btn_init_disabled),
                    dbc.Button("＋",
                               id={
                                   'type': 'add-left',
                                   'index': id
                               },
                               outline=True,
                               className=common_button_class,
                               style={
                                   'fontWeight': 'bold',
                                   'margin': 'auto'
                               }),
                ]),
                html.Div([
                    dcc.Dropdown(
                        options=wl_group_dropdown_options,
                        id={
                            'type': 'workload-group-dropdown',
                            'index': id
                        },
                        placeholder='Select a test group',
                        maxHeight=500,
                    ),
                ],
                    style={
                    'display': 'inline-block',
                    'width': '50%',
                             'maxWidth': 700
                }),
                dbc.Button('⟳',
                           outline=True,
                           className=common_button_class,
                           id={
                               'type': 'update-data',
                               'index': id
                           }),
                dbc.Button('✖',
                           className=common_button_class,
                           id={
                               'type': 'remove-wl',
                               'index': id
                           },
                           outline=True,
                           disabled=close_btn_init_disabled),
                dbc.ButtonGroup([
                    dbc.Button("＋",
                               className=common_button_class,
                               id={
                                   'type': 'add-right',
                                   'index': id
                               },
                               outline=True,
                               style={
                                   'fontWeight': 'bold',
                                   'margin': 'auto'
                               }),
                    dbc.Button("❯",
                               className=common_button_class,
                               id={
                                   'type': 'move-right',
                                   'index': id
                               },
                               outline=True,
                               style={'margin': 'auto'},
                               disabled=move_btn_init_disabled),
                ]),
            ],
                class_name='wl-card-header'),
            dbc.CardBody([
                html.Div(
                    [
                        html.Div(dcc.Dropdown(
                            id={
                                'type': 'workload-dropdown',
                                'index': id
                            },
                            placeholder='Select a workload',
                            maxHeight=400,
                        ),
                            style={
                            'display': 'inline-block',
                            'width': '70%',
                                     'maxWidth': 800,
                        }),
                        dbc.Button('All workloads',
                                   className=common_button_class,
                                   id={
                                       'type': 'all-workloads',
                                       'index': id
                                   },
                                   color='primary',
                                   disabled=True,
                                   style={'display': 'inline-block'}),
                        dbc.Button('Details',
                                   className=common_button_class,
                                   id={
                                       'type': 'details-btn',
                                       'index': id
                                   },
                                   color='primary',
                                   disabled=True,
                                   style={'display': 'inline-block'})
                    ],
                    style={
                        'display': 'flex',
                        'justifyContent': 'space-evenly',
                        'alignItems': 'center',
                        'gap': '20px'
                    }),
                dbc.Collapse(id={
                    'type': 'source-checklists-container',
                    'index': id
                },
                    style={'width': '100%'}),
                html.Div(
                    dbc.Collapse(
                        html.Div(
                            [
                                dcc.Graph(id={
                                    'type': 'heatmap',
                                    'index': id
                                },
                                    style={
                                    'maxWidth': 'min(700px,85%)',
                                    'width': '100%',
                                    'height': '100%',
                                              'maxHeight': '100%'
                                }),
                                html.Div(
                                    [
                                        dbc.Button(
                                            '◱',
                                            class_name='btn',
                                            id={
                                                'type': 'control-hm-size',
                                                'index': id
                                            },
                                            outline=True,
                                            style={
                                                'fontWeight': 'bold',
                                                'fontSize': 30
                                            }),
                                        dbc.Switch(
                                            label='log',
                                            id={
                                                'type': 'log-switch',
                                                'index': id
                                            },
                                        ),
                                    ],
                                    className='d-grid gap-2',
                                    style={
                                        'alignSelf': 'flex-start',
                                        # 'marginRight': 5,
                                        # 'maxWidth': 5
                                    }),
                            ],
                            id={
                                'type': 'heatmap-container',
                                'index': id
                            },
                            style={
                                'display': 'flex',
                                'justifyContent': 'center',
                                'alignItems': 'center',
                                'height': 320,
                            }),
                        id={
                            'type': 'heatmap-container-collapse',
                            'index': id
                        },
                        is_open=False),),
                dbc.Collapse(html.Div(dash_table.DataTable(
                    columns=detailed_table_columns,
                    filter_action='native',
                    style_table={
                        'height': 750,
                        'overflowY': 'scroll',
                    },
                    style_header=table_template_dict[template]['style_header'],
                    style_data=table_template_dict[template]['style_data'],
                    style_filter=table_template_dict[template]['style_filter'],
                    style_cell=table_template_dict[template]['style_cell'],
                    id={
                        'type': 'detailed-table',
                        'index': id
                    }),
                    id={
                    'type': 'details-container',
                    'index': id
                },
                    style={'width': '100%'}),
                    id={
                    'type': 'details-container-collapse',
                    'index': id
                },
                    is_open=False)
            ]),
        ],
        id={
            'type': 'wl-card',
            'index': id
        },
        class_name=class_name,
        style={
            'width': '100%',
            'height': 'fit-content'
        })


comparison_graph = html.Div(
    [
        html.Div(dbc.Collapse(
            dbc.Card([dcc.Graph(id='comparison-graph')],
                     id='comparison-graph-card'),
            id='comparison-graph-collapse',
            is_open=False,
        ),
            style={
            'display': 'inline-block',
            'width': '100%'
        })
    ],
    className='smallcomparison',
    id='comparison-graph-container',
)

app = Dash(__name__,
           external_stylesheets=[template_dict[template]],
           assets_ignore=ignored_dropdown_theme,
           title='Link Monitor')

server = app.server

app.layout = html.Div([
    workload_group_card(0, 'single-wl-center', True, True),
    comparison_graph,
],
    className='single-wl',
    id='outer',
    style={
    'width': '100%',
    'height': '100%'
})

################################################################################
# Callbacks


@app.callback(Output('outer', 'children'),
              Output('outer', 'className'),
              Output({
                  'type': 'wl-card',
                  'index': ALL
              }, 'class_name'),
              State('outer', 'className'),
              State({
                  'type': 'wl-card',
                  'index': ALL
              }, 'id'),
              State({
                  'type': 'wl-card',
                  'index': ALL
              }, 'class_name'),
              Input({
                  'type': 'add-left',
                  'index': ALL
              }, 'n_clicks'),
              Input({
                  'type': 'add-right',
                  'index': ALL
              }, 'n_clicks'),
              Input({
                  'type': 'move-left',
                  'index': ALL
              }, 'n_clicks'),
              Input({
                  'type': 'move-right',
                  'index': ALL
              }, 'n_clicks'),
              Input({
                  'type': 'remove-wl',
                  'index': ALL
              }, 'n_clicks'),
              State('outer', 'children'),
              prevent_initial_call=True)
def update_outer(outer_className: str, wl_card_ids: list,
                 wl_card_className: list, add_left: list, add_right: list,
                 move_left: list, move_right: list, remove_wl: list,
                 outer_children: list) -> tuple:
    """Manages the top level layout.

    Updates the top-level layout structure of the app. It does so by setting the
    className of the outer div to classes defining different css grid layouts.
    It also updates the children of the outer div (adding, deleting, moving).
    Setting the classNames of the children sets their position in the grid.

    1. Creating a dictionary of all children (wl-group-cards)
    2. Check of the current grid layout (outer className)
        1. one wl-group-card:
            - only add is possible: add wl-group-card left or right (depending
            on which of both add buttons has been clicked)
        2. two wl-group-cards:
            - remove:
                - removes the wl-group-card that has been clicked
                - changes classNames of the remaining wl-group-cards and changes
                the top level layout grid
            - move: changes classNames of the two wl-group-cards
            - add:
                - adds a wl-group-card depending on the position of the clicked
                add button and its card
                - sets/changs classNames of the wl-group-cards for correct
                positioning
                - changes the top level layout grid
        3. three wl-group-cards:
            - remove:
                - removes the wl-group-card that has been clicked
                - changes classNames of the remaining wl-group-cards and changes
                the top level layout grid
            - move: changes classNames of the three wl-group-cards

    Args:
        outer_className (str): className of the outer div (top level layout)
        wl_card_ids (list): ids of all wl-group-cards
        wl_card_className (list): classNames(positions) of all wl-group-cards
        add_left (list): all add-left button clicks
        add_right (list): all add-right button clicks
        move_left (list): all move-left button clicks
        move_right (list): all move-right button clicks
        remove_wl (list): all remove button clicks
        outer_children (list): all wl-group-cards

    (Some arguments are not used. They to represent state and input of the
    callback. The information from these inputs/states is instead accessed via
    the ctx object.)

    Raises:
        PreventUpdate: if no outerClass-input combination matches. (This should
            never happen.)

    Returns:
        tuple: list of wl-group-cards, className of outer div, classNames of the
            wl-group-cards
    """
    triggered = ctx.triggered_id

    used_ids = [id['index'] for id in wl_card_ids]
    new_id = ([i for i in range(3) if i not in used_ids] or [None])[0]
    patched_children = Patch()
    card_dict = {}
    for id in used_ids:
        screen_position = ctx.states[
            f'{{"index":{id},"type":"wl-card"}}.class_name']
        list_position = wl_card_className.index(screen_position)
        card_dict[id] = {
            'screen_pos': screen_position,
            'list_pos': list_position
        }
    if outer_className == 'single-wl':
        if 'add' in triggered['type']:
            direction = triggered['type'].split('-')[1]
            opposite_direction = 'left' if direction == 'right' else 'right'
            new_card = workload_group_card(new_id, f'double-wl-{direction}')
            patched_children.append(new_card)
            return patched_children, 'double-wl', [
                f'double-wl-{opposite_direction}'
            ]
    elif outer_className == 'double-wl':
        if triggered['type'] == 'remove-wl':
            for i in outer_children:
                if i['props']['id'] != 'comparison-graph-container':
                    if i['props']['id']['index'] == triggered['index']:
                        remove_id = i
            outer_children.remove(remove_id)
            # patching children causes issues when also using detailed table
            # patched_children.remove(remove_id)
            used_ids.remove(triggered['index'])
            remaining = used_ids[0]
            class_names = [None, None]
            class_names[card_dict[triggered['index']]['list_pos']] = None
            class_names[card_dict[remaining]['list_pos']] = 'single-wl-center'
            return outer_children, 'single-wl', [
                'single-wl-center', 'single-wl-center'
            ]
        if 'move' in triggered['type']:
            new_class_names = [wl_card_className[1], wl_card_className[0]]
            return no_update, no_update, new_class_names
        if 'add' in triggered['type']:
            used_ids.remove(triggered['index'])
            remaining = used_ids[0]
            new_class_names = [None] * 2
            conv = {
                ('left', 'left'): {
                    'new': 'left',
                    'triggered': 'center',
                    'old': 'right'
                },
                ('left', 'right'): {
                    'new': 'center',
                    'triggered': 'right',
                    'old': 'left'
                },
                ('right', 'left'): {
                    'new': 'center',
                    'triggered': 'left',
                    'old': 'right'
                },
                ('right', 'right'): {
                    'new': 'right',
                    'triggered': 'center',
                    'old': 'left'
                }
            }
            direction = triggered['type'].split('-')[1]
            triggered_screen_pos = card_dict[
                triggered['index']]['screen_pos'].split('-')[2]
            new_card_screen_pos = conv[direction, triggered_screen_pos]["new"]
            new_card_class_name = (f'triple-wl-{new_card_screen_pos}')
            new_trig_pos = conv[direction, triggered_screen_pos]["triggered"]
            new_class_names[card_dict[triggered['index']]
                            ['list_pos']] = f'triple-wl-{new_trig_pos}'
            new_remaining_pos = conv[direction, triggered_screen_pos]["old"]
            new_class_names[card_dict[remaining]
                            ['list_pos']] = f'triple-wl-{new_remaining_pos}'
            new_card = workload_group_card(new_id, new_card_class_name)
            patched_children.append(new_card)
            return patched_children, 'triple-wl', new_class_names
    elif outer_className == 'triple-wl':
        triggered_screen_name = card_dict[triggered['index']]['screen_pos']
        if triggered['type'] == 'remove-wl':
            used_ids.remove(triggered['index'])
            for i in outer_children:
                if i['props']['id'] != 'comparison-graph-container':
                    if i['props']['id']['index'] == triggered['index']:
                        remove_id = i
            # patched_children.remove(remove_id)
            outer_children.remove(remove_id)
            new_class_names = [None] * 3
            for i in range(3):
                if i in used_ids:
                    new_screen_pos = card_dict[i]['screen_pos'].replace(
                        'triple', 'double')
                    if 'center' in card_dict[i]['screen_pos']:
                        if 'left' in triggered_screen_name:
                            new_screen_pos = new_screen_pos.replace(
                                'center', 'left')
                        else:
                            new_screen_pos = new_screen_pos.replace(
                                'center', 'right')
                else:
                    new_screen_pos = None
                new_class_names[card_dict[i]['list_pos']] = new_screen_pos

            return outer_children, 'double-wl', new_class_names
        else:
            triggered_screen_pos = triggered_screen_name.split('-')[2]
            screen_pos_conv = {
                'left': 'left',
                'center': 'center',
                'right': 'right'
            }
            if triggered['type'] == 'move-left':
                changes = {'left': 'right',
                           'center': 'left', 'right': 'center'}
            else:
                changes = {'left': 'center',
                           'center': 'right', 'right': 'left'}
            screen_pos_conv[triggered_screen_pos] = changes[
                triggered_screen_pos]
            screen_pos_conv[
                changes[triggered_screen_pos]] = triggered_screen_pos

            new_screen_pos = list()
            for old_name in wl_card_className:
                old_pos = old_name.split('-')[2]
                new_screen_pos.append(f'triple-wl-{screen_pos_conv[old_pos]}')
            return no_update, no_update, new_screen_pos
    raise PreventUpdate


@app.callback(
    Output({
        'type': 'add-left',
        'index': ALL
    }, 'disabled'),
    Output({
        'type': 'add-right',
        'index': ALL
    }, 'disabled'),
    Input('outer', 'className'),
)
def control_add_buttons(outer_className: str) -> tuple[list[bool], list[bool]]:
    """Enables/disables the add buttons.

    Based on the current layout (number of wl-group-cards) the add buttons are
    enabled/disabled.

    Args:
        outer_className (str): className of the outer div

    Returns:
        tuple[list[bool], list[bool]]: disabled attribute of all add buttons
    """
    if outer_className == 'triple-wl':
        all_adders = [True] * len(ctx.outputs_list[0])
    else:
        all_adders = [False] * len(ctx.outputs_list[0])
    return all_adders, all_adders


@app.callback(
    Output({
        'type': 'remove-wl',
        'index': ALL
    }, 'disabled'),
    Input('outer', 'className'),
)
def control_remove_buttons(outer_className: str) -> list[bool]:
    """Enables/disables the remove buttons.

    Based on the current layout (number of wl-group-cards) the remove buttons
    are enabled/disabled.

    Args:
        outer_className (str): className of the outer div

    Returns:
        list[bool]: disabled attribute of all remove buttons
    """
    if outer_className == 'single-wl':
        return [True]
    else:
        return [False] * len(ctx.outputs_list)


@app.callback(
    Output({
        'type': 'move-left',
        'index': ALL
    }, 'disabled'),
    Output({
        'type': 'move-right',
        'index': ALL
    }, 'disabled'),
    State({
        'type': 'move-right',
        'index': ALL
    }, 'disabled'),
    Input('outer', 'className'),
)
def control_move_buttons(disables: list[bool],
                         outer_className: str) -> tuple[list[bool], list[bool]]:
    """Enables/disables the move buttons.

    Based on the current layout (number of wl-group-cards) the move buttons are
    enabled/disabled.

    Args:
        disables (list[bool]): Number of move-right buttons
        outer_className (str): className of the outer div

    Returns:
        tuple[list[bool], list[bool]]: disabled attribute of all move buttons
    """
    if outer_className == 'single-wl':
        all_movers = [True]
    else:
        all_movers = [False] * len(disables)
    return all_movers, all_movers


@app.callback(
    Output({
        'type': 'workload-group-dropdown',
        'index': ALL
    }, 'options'), Input({
        'type': 'update-data',
        'index': ALL
    }, 'n_clicks'))
def update_data(n_clicks: list[int]) -> list[list[dict[str, str]]]:
    """Reloads the data.

    Searches again for all pickle files and loads their data to update the
    workload group dropdown options.

    Args:
        n_clicks (list[int]): number of clicks on the update button

    Raises:
        PreventUpdate: if the update button was never clicked

    Returns:
        list[list[dict[str, str]]]: reinitialized workload group dropdown
            options
    """
    global groups
    if any(n_clicks):
        groups = get_groups()
        wl_group_dropdown_options = generate_workload_group_dropdown_options(
            groups)
        return [wl_group_dropdown_options] * len(n_clicks)
    else:
        raise PreventUpdate


@app.callback(Output({
    'type': 'workload-dropdown',
    'index': MATCH
}, 'options'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def update_workload_dropdown(workload_group: str) -> list[dict[str, str]]:
    """Updates the options of a workload dropdown.

    If the value of a workload group dropdown changes, the options of the
    related workload dropdown are updated.

    Args:
        workload_group (str): value of the workload group dropdown

    Returns:
        list[dict[str, str]]: options of the workload dropdown
    """
    if workload_group is None:
        options = []
    else:
        options = [{
            'label': k,
            'value': k
        } for k in groups[workload_group].results.keys()]
    return options


@app.callback(Output({
    'type': 'workload-dropdown',
    'index': MATCH
}, 'value'),
    Input({
        'type': 'heatmap',
        'index': MATCH
    }, 'clickData'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    State({
        'type': 'workload-dropdown',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def update_workload_dropdown_value(clickData: dict[str, list], group: str,
                                   old_workload: str) -> str:
    """Updates the value of a workload dropdown.

    If a workload on the heatmap/scatter plot was clicked its name is set as new
    workload dropdown value. This has the chain effect of updating the
    comparison graph.

    Args:
        clickData (dict[str, list]): Data associated with the clicked point
        group (str): workload group
        old_workload (str): previously selected workload

    Returns:
        str: new workload dropdown value
    """
    if ctx.triggered_id['type'] == 'heatmap':
        if clickData != None:
            if 'hovertext' in clickData['points'][0]:
                return clickData['points'][0]['hovertext']
            else:
                x = clickData['points'][0]['x']
                y = clickData['points'][0]['y']
                return f'{y}-{x}'
        else:
            return None
    elif ctx.triggered_id['type'] == 'workload-group-dropdown':
        if group != None and old_workload in groups[group].results:
            return old_workload
        else:
            return None


@app.callback(
    Output({
        'type': 'workload-group-dropdown',
        'index': ALL
    }, 'optionHeight'),
    Input('outer', 'className'),
)
def adjust_workload_group_dropdown_height(outer_className: str) -> list[int]:
    """Adjusts the workload group dropdown height.

    If there are three workload group cards, many options in the work group
    dropdown wrap. In this case the original height of the workload group
    dropdown option text fields is too small. This function adjusts the height
    accordingly.

    Args:
        outer_className (str): className of the outer div

    Returns:
        list[int]: new heights for the option text fields of all workload group
            dropdowns
    """
    if outer_className == 'triple-wl':
        return [50] * 3
    elif outer_className == 'double-wl':
        return [50] * 2
    else:
        return [35]


@app.callback(Output({
    'type': 'source-checklists-container',
    'index': MATCH
}, 'children'),
    Output({
        'type': 'source-checklists-container',
        'index': MATCH
    }, 'is_open'),
    State({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'id'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def update_checklists(group_id: dict[str, Any],
                      workload_group: str) -> tuple[list[html.Div], bool]:
    """Updates the sender/receiver checklists.

    If a workload group is selected, the sender/receiver checklists are updated
    and their collapse component is opened. If the insert location is not
    sbus-l2 a list of all measured sources is created and given to the
    checklists generation as well.

    Args:
        group_id (dict[str, Any]): Id of the workload group dropdown
        workload_group (str): Current value of the workload group dropdown

    Returns:
        tuple[list[html.Div], bool]: a tuple containing the updated checklists
            and the bool for toggling the collapse component
    """
    if workload_group is None:
        return [], False
    else:
        source_set = set()
        if groups[workload_group].insert_location[0] != 'sbus':
            for wl in groups[workload_group].results.values():
                source_set.update(wl.data['source'].unique())
        source_list = list(source_set)
        source_list.sort()
        return create_source_checklists(group_id['index'],
                                        groups[workload_group].ncores,
                                        groups[workload_group].insert_location,
                                        source_list), True


@app.callback(Output({
    'type': 'heatmap-container-collapse',
    'index': MATCH
}, "is_open"),
    State({
        'type': 'heatmap-container-collapse',
        'index': MATCH
    }, "is_open"),
    Input({
        'type': 'all-workloads',
        'index': MATCH
    }, "n_clicks"),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def toggle_all_workloads(is_open: bool, n_clicks: int,
                         workload_group: str) -> bool:
    """Toggles the collapse containing the heatmap/scatter plot.

    If the "All Workloads" button is clicked, the collapse containing the Graph
    for the heatmap/scatter plot is toggled. If a workload group value is
    deleted, the collapse is closed as well.

    Args:
        is_open (bool): open/closed status of the collapse
        n_clicks (int): number of clicks on the "All Workloads" button
        workload_group (str): current value of the workload group dropdown

    Returns:
        bool: new open/closed status of the all workloads collapse
    """
    if ctx.triggered_id['type'] == 'workload-group-dropdown':
        if workload_group is not None and is_open:
            return True
        else:
            return False
    elif n_clicks is None:
        return False
    else:
        return not is_open


@app.callback(
    Output({
        'type': 'all-workloads',
        'index': MATCH
    }, "disabled"),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
)
def control_all_workloads_button(workload_group: str) -> bool:
    """Enables/disables the "All Workloads" button.

    If a workload group is selected, the "All Workloads" button is enabled.
    Otherwise it is disabled.

    Args:
        workload_group (str): current value of the workload group dropdown

    Returns:
        bool: new disabled status of the "All Workloads" button
    """
    if workload_group is None:
        return True
    else:
        return False


@app.callback(Output({
    'type': 'heatmap-container',
    'index': MATCH
}, 'style'),
    Input({
        'type': 'control-hm-size',
        'index': MATCH
    }, 'n_clicks'),
    State({
        'type': 'heatmap-container',
        'index': MATCH
    }, 'style'),
    prevent_initial_call=True)
def set_heatmap_size(n_clicks: int,
                     style: dict[str, Any]) -> dict[str, Any]:
    """Controls the height of the heatmap/scatter plot div container.

    If the control-hm-size button is clicked, the height of the heatmap/scatter
    plot div container is adjusted. The graph adjusts its size accordingly.

    Args:
        n_clicks (int): number of clicks on the control-hm-size button
        style (dict[str, Any]): html style of the heatmap/scatter plot div

    Raises:
        PreventUpdate: If the control-hm-size button is not clicked

    Returns:
        dict[str, Any]: html style of the heatmap/scatter plot div with adjusted
            height
    """
    if n_clicks is None:
        raise PreventUpdate
    else:
        if style['height'] == 320:
            style['height'] = 600
        else:
            style['height'] = 320
        return style


@app.callback(Output({
    'type': 'heatmap',
    'index': MATCH
}, 'figure'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    Input({
        'type': 'source-checklist',
        'index': MATCH,
        'part': ALL
    }, 'value'),
    Input({
        'type': 'log-switch',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def update_heatmap(group: str, checklists: list[list[str]],
                   log_switch: bool) -> go.Figure:
    """Updates the heatmap/scatter plot.

    If no workload group is selected, returns an empty px.scatter to avoid a
    white Graph seen during later animation (to not disturb dark mode).

    Otherwise, first, the plot data is prepared by filtering according to the
    selected sender/receiver.

    If the workload group has two unmasked cores a heatmap figure is prepared.
    Otherwise a scatter plot is created.

    Heatmap:
        1. Organization of all workloads in a pivot table with the cores as axes
        2. Calculation of the total messages for each workload (depending on the
            selected sender/receiver)
        3. Calculation and preparation of additional data for the hover text
        4. Creation of the heatmap figure

    Scatter plot:
        1. Calculation of the total messages, max cycles and messages/cycles
            for each workload (depending on the selected sender/receiver)
        2. Creation of the scatter plot figure

    Args:
        group (str): Value of the workload group dropdown
        checklists (list[list[str]]): List of lists of selected sources
        log_switch (bool): Logarithmic scale switch

    Returns:
        go.Figure: Updated heatmap/scatter plot figure
    """
    if group is None:
        return px.scatter([])
    else:

        active_sources = [c for checklist in checklists for c in checklist]
        active_cores = set()
        for s in active_sources:
            if s != None:
                core = re.search(r'(?<=c)\d+', s)
                if core:
                    active_cores.add(int(core.group()))
        *result_group, = groups[group].results.values()
        if groups[group].ncores == 2 and groups[group].core_mask == []:
            results = {'workloads': result_group}
            heatmap_df = pd.DataFrame(data=results)
            heatmap_df['core 0'] = heatmap_df.apply(
                lambda x: x['workloads'].benchmarks[0], axis=1)
            heatmap_df['core 1'] = heatmap_df.apply(
                lambda x: x['workloads'].benchmarks[1], axis=1)
            heatmap_pivot = heatmap_df.pivot(index='core 0', columns='core 1')
            heatmap_pivot = heatmap_pivot.droplevel(0, axis=1)
            heatmap_count_total = heatmap_pivot.applymap(lambda x: x.data.loc[
                x.data['source'].isin(active_sources)].loc[:, 'count'].sum(),
                na_action='ignore')
            if log_switch:
                fig_heatmap = heatmap_count_total.applymap(lambda x: np.log10(x)
                                                           if x > 0 else np.nan,
                                                           na_action='ignore')
            else:
                fig_heatmap = heatmap_count_total
            bench0_cycles = heatmap_pivot.applymap(lambda x: x.cycles[0],
                                                   na_action='ignore')
            bench1_cycles = heatmap_pivot.applymap(lambda x: x.cycles[1],
                                                   na_action='ignore')
            bench0_return = heatmap_pivot.applymap(lambda x: x.return_values[0],
                                                   na_action='ignore')
            bench1_return = heatmap_pivot.applymap(lambda x: x.return_values[1],
                                                   na_action='ignore')
            customdata = np.stack((bench0_cycles, bench1_cycles, bench0_return,
                                   bench1_return, heatmap_count_total),
                                  axis=-1)

            fig = px.imshow(fig_heatmap)
            fig.update(data=[{
                'customdata':
                    customdata,
                'hovertemplate': (
                    'messages: %{customdata[4]}<br>cycles0: %{customdata[0]}'
                    '<br>cycles1: %{customdata[1]}<br>return0: %{customdata[2]}'
                    '<br>return1: %{customdata[3]}<extra></extra>')
            }])
            fig.update_xaxes(side="top")
            fig.update_layout(margin=dict(l=20, t=20, b=20),)
            fig.update_coloraxes(colorbar_ticktext=['test'])
            return fig
        else:
            df = pd.DataFrame(data=result_group)
            print
            df['total messages'] = df.apply(lambda x: x.data.loc[x.data[
                'source'].isin(active_sources)].loc[:, 'count'].sum(),
                axis=1)
            df['max cycles'] = df.apply(lambda x: max(
                [x.cycles[i] for i in range(x['ncores']) if i in active_cores],
                default=np.NaN),
                axis=1)
            df['messages/cycles'] = df.apply(lambda x: x['total messages'] /
                                             (sum(
                                                 filter(None, [
                                                     x.cycles[i]
                                                     for i in range(x['ncores'])
                                                     if i in active_cores
                                                 ])) or np.NaN),
                                             axis=1)
            df['messages/cycles'].fillna(0, inplace=True)
            fig = px.scatter(df,
                             x='max cycles',
                             y='total messages',
                             hover_name='name',
                             color='messages/cycles',
                             size='messages/cycles',
                             log_x=log_switch,
                             log_y=log_switch,
                             text='name',
                             hover_data=['cycles', 'return_values'])
            fig.update_traces(mode='markers+text',
                              textposition="top center",
                              marker=dict(sizemode='area',
                                          line_width=3,
                                          line_color='white'))
            fig.update_layout(margin=dict(l=20, t=20, b=20),)
            return fig


@app.callback(
    Output('comparison-graph-collapse', 'is_open'),
    Input({
        'type': 'workload-dropdown',
        'index': ALL
    }, 'value'),
)
def show_hide_comparison_graph(workload: list[str]) -> bool:
    """Toggles the comparison graph collapse.

    If any workload is selected, the collapse is open, otherwise it is closed.

    Args:
        workload (list[str]): List of the values of all workload dropdowns

    Returns:
        bool: is_open status of the collapse
    """
    return any(workload)


@app.callback(Output('comparison-graph', 'figure'),
              Input({
                  'type': 'workload-group-dropdown',
                  'index': ALL
              }, 'value'),
              State({
                  'type': 'workload-group-dropdown',
                  'index': ALL
              }, 'id'),
              Input({
                  'type': 'workload-dropdown',
                  'index': ALL
              }, 'value'),
              Input({
                  'type': 'source-checklist',
                  'index': ALL,
                  'part': ALL
              }, 'value'),
              Input({
                  'type': 'wl-card',
                  'index': ALL
              }, 'class_name'),
              Input('comparison-graph-container', 'className'),
              prevent_initial_call=True)
def update_comparison_figure(group: list[str], group_id: list[str],
                             workload: list[str],
                             sources: list[list[list[str]]],
                             card_class: list[str],
                             comparison_graph_class: str) -> go.Figure:
    """Updates the comparison graph.

    Returns a figure without data if no workload or no group is selected.

    Otherwise:
    1. Finds all active sender/receivers
    2. Finds all workloads that appear multiple times (they were selected in
       multiple wl-group-cards)
    3. Creates a list of DataFrames (each workload is one DataFrame)
        1. Filter according to selected sender/receivers
        2. Creates a new workload name for the graph with position identifiers
            if a workload appears multiple times
    4. Creates a figure from all DataFrames

    Args:
        group (list[str]): List of the values of all workload group dropdowns
        group_id (list[str]): List of the ids of all workload group dropdowns
        workload (list[str]): List of the values of all workload dropdowns
        sources (list[list[list[str]]]): (List(all wl-group-cards)
            [List(all source-checklists)[List(all source-checklist-items)]])
        card_class (list[str]): List of all classNames of all wl-group-cards

    Returns:
        go.Figure: updated comparison bar plot figure
    """
    if group != [None] and workload != [None]:
        wide = (comparison_graph_class == 'smallcomparison' and len(
            card_class) == 1 or comparison_graph_class == 'mediumcomparison' and
            len(card_class) == 2 or comparison_graph_class == 'bigcomparison'
            and len(card_class) == 3)

        group_id = [g['index'] for g in group_id]
        # get all active sender/receivers:
        sources_input = ctx.inputs_list[2]

        active_sources = dict()
        for c in sources_input:
            active_sources.setdefault(c['id']['index'], []).extend(c['value'])
        # Find all workloads which appear more than once:
        used_workloads = []
        repeating_workloads = []
        for i in range(len(group)):
            if group[i] != None and workload[i] != None and workload[
                    i] in groups[group[i]].results:
                selected_workload = groups[group[i]].results[workload[i]].name
                selected_group = groups[group[i]].name
                selected = (selected_group, selected_workload)
                if selected in used_workloads:
                    repeating_workloads.append(selected)
                used_workloads.append(selected)
        # Create a list a list of DataFrames:
        result_dfs = [None] * 3
        for i in range(len(group)):
            if group[i] != None and workload[i] != None and workload[
                    i] in groups[group[i]].results:
                # filter by selected sender/receiver:
                if group_id[i] in active_sources:
                    wl_sources = active_sources[group_id[i]]
                else:
                    wl_sources = []
                selected_workload = groups[group[i]].results[workload[i]]
                result = copy.deepcopy(selected_workload.data)
                filtered_sources = copy.deepcopy(
                    result.loc[result['source'].isin(wl_sources)])
                # create x-axis-labels
                html_name = selected_workload.name.replace('-', '<br>')
                # If the graph is not wide enough the x labels will overlap
                if not wide:
                    html_name = '-'.join([b[0:3]
                                          for b in selected_workload.name.split('-')])
                xname = f'{groups[group[i]].name}<br>{html_name}'
                position = card_class[i].split('-')[2]
                if (groups[group[i]].name,
                        selected_workload.name) in repeating_workloads:
                    if not wide:
                        xname = f'{position}-{xname}'
                    else:
                        xname = f'{xname}<br>{position}'
                filtered_sources['workload'] = xname
                position_dict = {'left': 0, 'center': 1, 'right': 2}
                result_dfs[position_dict[position]] = filtered_sources
        # Create figure from DataFrames:
        result_dfs = [df for df in result_dfs if df is not None]
        if result_dfs != []:
            df = pd.concat(result_dfs)
            fig = px.bar(df,
                         x="workload",
                         y="count",
                         facet_col="channel",
                         color="op",
                         text="op",
                         hover_name='op',
                         hover_data=['op', 'source'],
                         template=template,
                         pattern_shape='source',
                         pattern_shape_map=source_pattern_map,
                         category_orders={'channel': [
                             'A', 'B', 'C', 'D', 'E']},
                         color_discrete_map=op_colors)
            fig.update_traces(hovertemplate=(
                '<b>%{customdata[0]}</b><br><br><b>%{customdata[1]}</b>'
                '<br>messages: %{y}<extra></extra>'))
            fig.update_layout(
                height=400,
                margin=dict(t=20, b=20),
            )
            fig.update_xaxes(title=None)
            return fig
    # empty figure in case of no workload or no group selected or no data
    empty_df = pd.DataFrame(
        columns=['workload', 'source', 'channel', 'op', 'count'])
    fig = px.bar(empty_df,
                 x="workload",
                 y="count",
                 facet_col="channel",
                 color="op",
                 hover_name='op',
                 hover_data=['op', 'source'],
                 template=template,
                 category_orders={'channel': ['A', 'B', 'C', 'D', 'E']})
    fig.update_xaxes(showgrid=False, showticklabels=False, zeroline=False)
    fig.update_yaxes(showgrid=False, showticklabels=False, zeroline=False)
    return fig


@app.callback(
    Output({
        'type': 'details-btn',
        'index': MATCH
    }, 'disabled'),
    State({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    Input({
        'type': 'workload-dropdown',
        'index': MATCH
    }, 'value'),
)
def enable_details_button(group: str, workload: str) -> bool:
    """Enables/disables the details.

    If a workload is selected that was measured in log mode, the details button
    is enabled. Otherwise it is disabled.

    Args:
        group (str): Value of the workload group dropdown
        workload (str): Value of the workload dropdown

    Returns:
        bool: Disabled state of the details button
    """
    if group is None or workload is None or workload not in groups[
            group].results or not groups[group].results[workload].log_mode:
        return True
    else:
        return False


@app.callback(Output({
    'type': 'details-container-collapse',
    'index': MATCH
}, 'is_open'),
    Input({
        'type': 'details-btn',
        'index': MATCH
    }, 'n_clicks'),
    Input({
        'type': 'details-container-collapse',
        'index': MATCH
    }, 'is_open'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    prevent_initial_call=True)
def toggle_details_container(n_clicks: int, is_open: bool, group: str) -> bool:
    """Toggles the details container.

    Depending on the details-button and the workload group selection the
    details collapse is opened. Otherwise it is closed.

    Args:
        n_clicks (int): Number of clicks on the details button
        is_open (bool): State of the details collapse
        group (str): Value of the workload group dropdown

    Returns:
        bool: is_open state of the details collapse
    """
    if n_clicks is None or is_open or group is None or not groups[
            group].log_mode:
        return False
    return not is_open


@app.callback(Output({
    'type': 'detailed-table',
    'index': MATCH
}, 'data'),
    Output({
        'type': 'detailed-table',
        'index': MATCH
    }, 'style_data_conditional'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    Input({
        'type': 'workload-dropdown',
        'index': MATCH
    }, 'value'),
    Input({
        'type': 'source-checklist',
        'index': MATCH,
        'part': ALL
    }, 'value'),
    prevent_initial_call=True)
def update_detailes_table(
        group: str, workload: str,
        sources: list[list[str]]) -> tuple[list[dict], list[int]]:
    """Updates the detailed table.

    If detailed data is available to a selected workload it is filtered by the
    selected senders/receivers. Further, conditional color mappings for the
    table are generated.

    Args:
        group (str): Value of the workload group dropdown
        workload (str): Value of the workload dropdown
        sources (list[list[str]]): List of lists of selected senders/receivers

    Returns:
        tuple[list[dict], list[int]]: A tuple containing a dictionary of the
            table data and a list of conditional color mappings
    """
    if group is None or workload is None or workload not in groups[
            group].results or not groups[group].results[workload].log_mode:
        return [], []
    else:
        active_sources = [c for checklist in sources for c in checklist]
        detailed_data = groups[group].results[workload].detailed
        filtered_sources = detailed_data.loc[detailed_data['source'].isin(
            active_sources)]
        sorted_data = filtered_sources.sort_values(by=['tick'])
        sorted_dict = sorted_data.to_dict('records')
        ncores = groups[group].results[workload].ncores
        core_color_mapping = get_core_color_mapping(ncores)
        table_colors = (core_color_mapping + table_op_color_mapping +
                        table_param_color_mapping)
        return sorted_dict, table_colors


@app.callback(Output({
    'type': 'wl-card',
    'index': MATCH
}, 'style'),
    State({
        'type': 'wl-card',
        'index': MATCH
    }, 'style'),
    Input({
        'type': 'workload-group-dropdown',
        'index': MATCH
    }, 'value'),
    Input({
        'type': 'heatmap-container-collapse',
        'index': MATCH
    }, 'is_open'),
    Input({
        'type': 'heatmap-container',
        'index': MATCH
    }, 'style'),
    Input({
        'type': 'details-container-collapse',
        'index': MATCH
    }, 'is_open'),
    prevent_initial_call=True)
def update_wl_card_span(style: dict[str, Any], group: str,
                        heatmap_is_open: bool, heatmap_style: dict[str, Any],
                        details_is_open: bool) -> dict[str, Any]:
    """Adjusts the vertical span of a workload group card.

    This is part of the top layout ordering mechanism. It works together with
    update_comparison_graph_container_size. It allows the workload group cards
    to have different heights in the css grid layout while still consuming as
    little as possible grid space. (This is necessary for the placement of the
    comparison graph.)

    Depending on the toggled items in a workload group card, the card's span is
    adjusted by adding rows to span in the css grid layout.

    Args:
        style (dict[str, Any]): Html style of the workload group card
        group (str): Value of the workload group dropdown
        heatmap_is_open (bool): is_open state of the heatmap collapse
        heatmap_style (dict[str, Any]): Html style of the heatmap container
        details_is_open (bool): is_open state of the details collapse

    Returns:
        dict[str, Any]: html style of the workload group card with adjusted row
            span
    """
    row_span = 1
    if group is not None:
        row_span += 1
    if heatmap_is_open:
        row_span += 2
        if heatmap_style['height'] == 600:
            row_span += 1
    if details_is_open:
        row_span += 4
    style['gridRowEnd'] = row_span
    return style


@app.callback(Output('comparison-graph-container', 'className'),
              Input('outer', 'className'),
              Input({
                  'type': 'wl-card',
                  'index': ALL
              }, 'class_name'),
              Input({
                  'type': 'heatmap-container-collapse',
                  'index': ALL
              }, 'is_open'),
              Input({
                  'type': 'heatmap-container',
                  'index': ALL
              }, 'style'),
              Input({
                  'type': 'details-container-collapse',
                  'index': ALL
              }, 'is_open'),
              prevent_initial_call=True)
def update_comparison_graph_container_size(outer_class_name: str,
                                           wl_card_class_names: list[str],
                                           heatmap_is_open: list[bool],
                                           heatmap_style: list[dict[str, Any]],
                                           is_open: bool) -> str:
    """Adjusts the size of the comparison graph container.

    This is a part of the top layout ordering mechanism. It works together with
    update_wl_card_span(). This callback allows the comparison graph container
    to be oriented as far to the top of the screen (with the help of css grid
    dense placement) as possible while still being as wide as possible.

    Depending on the number of workload group cards (outer className) and their
    toggled items, the comparison graph container is given a new className. The
    className sets the css grid layout column span of the comparison graph
    container.

    Args:
        outer_class_name (str): class_name of the outer div
        wl_card_class_names (list[str]): class_names of all workload group cards
        heatmap_is_open (list[bool]): list of is_open states of all heatmap
            collapses
        heatmap_style (dict[str, Any]): list of all heatmap styles
        is_open (bool): list of is_open states of all details collapses

    Returns:
        str: new class_name for the comparison graph container
    """
    big_hm_ids = list()
    for o, s in zip(ctx.inputs_list[2], ctx.inputs_list[3]):
        if o['value'] and s['value']['height'] == 600:
            big_hm_ids.append(o['id']['index'])
    open_ids = list()
    for i in ctx.inputs_list[4]:
        if i['value']:
            open_ids.append(i['id']['index'])
    center_id = None
    for i in ctx.inputs_list[1]:
        if 'center' in i['value']:
            center_id = i['id']['index']
            break
    if outer_class_name == 'single-wl':
        return 'smallcomparison'
    elif outer_class_name == 'double-wl':
        if (not any(is_open) or all(is_open)) and len(big_hm_ids) != 1:
            return 'mediumcomparison'
        return 'smallcomparison'
    else:
        if (not any(is_open) or all(is_open)):
            if big_hm_ids == []:
                return 'bigcomparison'
            elif center_id in big_hm_ids or len(big_hm_ids) == 2:
                return 'smallcomparison'
            else:
                return 'mediumcomparison'
        elif sum(is_open) == 1 and center_id not in open_ids:
            if len(big_hm_ids) != 1 and open_ids[0] not in big_hm_ids:
                return 'mediumcomparison'
        else:
            return 'smallcomparison'


if __name__ == "__main__":
    app.run_server(debug=False)
