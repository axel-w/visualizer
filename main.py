#!/usr/bin/env python

from dash import Dash, html, Input, Output, State, Patch, ALL, ctx, no_update
from dash.exceptions import PreventUpdate
import dash_bootstrap_components as dbc

def workload_card(id: int, class_name: str = '', close_btn_init_disabled: bool = False, move_btn_init_disabled: bool = False):
    return dbc.Card([
            dbc.CardHeader([
                    dbc.ButtonGroup(
                        [
                            dbc.Button("<", id={'type': 'move-left', 'index': id}, disabled=move_btn_init_disabled),
                            dbc.Button("+", id={'type': 'add-left', 'index': id}),
                        ]
                    ),
                    dbc.DropdownMenu(label=f'workload {id}'),
                    dbc.Button('✖', id={'type': 'remove-wl', 'index': id}, disabled=close_btn_init_disabled),
                    dbc.ButtonGroup(
                        [
                            dbc.Button("+", id={'type': 'add-right', 'index': id}),
                            dbc.Button(">", id={'type': 'move-right', 'index': id}, disabled=move_btn_init_disabled),
                        ]
                    ),
                ], class_name='wl-card-header'
                ),
            dbc.CardBody([
                    dbc.DropdownMenu(),
                    dbc.Button()
            ]),
        ], style={'height': 200}, id={'type': 'wl-card', 'index': id}, class_name=class_name)



app = Dash(__name__, external_stylesheets=[dbc.themes.DARKLY])#, suppress_callback_exceptions=True)
server = app.server

app.layout = html.Div([workload_card(0, 'single-wl-center', True, True)], className='single-wl', id='outer')

@app.callback(
    Output('outer', 'children'),
    Output('outer', 'className'),
    Output({'type': 'wl-card', 'index': ALL}, 'class_name'),
    State('outer', 'className'),
    State({'type': 'wl-card', 'index': ALL}, 'id'),
    State({'type': 'wl-card', 'index': ALL}, 'class_name'),
    Input({'type': 'add-left', 'index': ALL}, 'n_clicks'),
    Input({'type': 'add-right', 'index': ALL}, 'n_clicks'),
    Input({'type': 'move-left', 'index': ALL}, 'n_clicks'),
    Input({'type': 'move-right', 'index': ALL}, 'n_clicks'),
    Input({'type': 'remove-wl', 'index': ALL}, 'n_clicks'),
    State('outer', 'children')
)
def update_outer(outer_className, wl_card_ids, wl_card_className, add_left, add_right, move_left, move_right, remove_wl, outer_children):
    triggered = ctx.triggered_id
    if triggered is None:
        raise PreventUpdate
    else:
        used_ids = [id['index'] for id in wl_card_ids]
        new_id = ([i for i in range(3) if i not in used_ids] or [None])[0]
        patched_children = Patch()
        card_dict = {}
        for id in used_ids:
            screen_position = ctx.states[f'{{"index":{id},"type":"wl-card"}}.class_name']
            list_position = wl_card_className.index(screen_position)
            card_dict[id] = {'screen_pos': screen_position, 'list_pos': list_position}
        if outer_className == 'single-wl':
            if 'add' in triggered['type']:
                direction = triggered['type'].split('-')[1]
                opposite_direction = 'left' if direction == 'right' else 'right'
                new_card = workload_card(new_id, f'double-wl-{direction}')
                patched_children.append(new_card)
                return patched_children, 'double-wl', [f'double-wl-{opposite_direction}']
        elif outer_className == 'double-wl':
            if triggered['type'] == 'remove-wl':
                for i in outer_children:
                    if i['props']['id']['index'] == triggered['index']:
                        remove_id = i
                patched_children.remove(remove_id)
                used_ids.remove(triggered['index'])
                remaining = used_ids[0]
                class_names = [None, None]
                class_names[card_dict[triggered['index']]['list_pos']] = None
                class_names[card_dict[remaining]['list_pos']] = 'single-wl-center'
                return patched_children, 'single-wl', ['single-wl-center', 'single-wl-center']
            if 'move' in triggered['type']:
                new_class_names = [wl_card_className[1], wl_card_className[0]]
                return no_update, no_update, new_class_names
            if 'add' in triggered['type']:
                used_ids.remove(triggered['index'])
                remaining = used_ids[0]
                new_class_names = [None] * 2
                conv = {('left','left'): {'new': 'left','triggered': 'center', 'old': 'right'},
                        ('left','right'): {'new': 'center','triggered': 'right', 'old': 'left'},
                        ('right','left'): {'new': 'center','triggered': 'left', 'old': 'right'},
                        ('right','right'): {'new': 'right','triggered': 'center', 'old': 'left'}}
                direction = triggered['type'].split('-')[1]
                triggered_screen_pos = card_dict[triggered['index']]['screen_pos'].split('-')[2]
                new_card_screen_pos = f'triple-wl-{conv[direction, triggered_screen_pos]["new"]}'
                new_class_names[card_dict[triggered['index']]['list_pos']] = f'triple-wl-{conv[direction, triggered_screen_pos]["triggered"]}'
                new_class_names[card_dict[remaining]['list_pos']] = f'triple-wl-{conv[direction, triggered_screen_pos]["old"]}'
                new_card = workload_card(new_id, new_card_screen_pos)
                patched_children.append(new_card)
                return patched_children, 'triple-wl', new_class_names
        elif outer_className == 'triple-wl':
            triggered_screen_name = card_dict[triggered['index']]['screen_pos']
            if triggered['type'] == 'remove-wl':
                used_ids.remove(triggered['index'])
                for i in outer_children:
                    if i['props']['id']['index'] == triggered['index']:
                        remove_id = i
                patched_children.remove(remove_id)
                new_class_names = [None] * 3
                for i in range(3):
                    if i in used_ids:
                        new_screen_pos = card_dict[i]['screen_pos'].replace('triple', 'double')
                        if 'center' in card_dict[i]['screen_pos']:
                            if 'left' in triggered_screen_name:
                                new_screen_pos = new_screen_pos.replace('center', 'left')
                            else:
                                new_screen_pos = new_screen_pos.replace('center', 'right')
                    else: 
                        new_screen_pos = None
                    new_class_names[card_dict[i]['list_pos']] = new_screen_pos
                        
                return patched_children, 'double-wl', new_class_names
            else:
                triggered_screen_pos = triggered_screen_name.split('-')[2]
                screen_pos_conv = {'left': 'left', 'center': 'center', 'right': 'right'}
                if triggered['type'] == 'move-left':
                    changes = {'left': 'right', 'center': 'left', 'right': 'center'}
                else:
                    changes = {'left': 'center', 'center': 'right', 'right': 'left'}
                screen_pos_conv[triggered_screen_pos] = changes[triggered_screen_pos]
                screen_pos_conv[changes[triggered_screen_pos]] = triggered_screen_pos
                
                new_screen_pos = list()
                for old_name in wl_card_className:
                    old_pos = old_name.split('-')[2]
                    new_screen_pos.append(f'triple-wl-{screen_pos_conv[old_pos]}')
                return no_update, no_update, new_screen_pos
        raise PreventUpdate
    
@app.callback(
    Output({'type': 'add-left', 'index': ALL}, 'disabled'),
    Output({'type': 'add-right', 'index': ALL}, 'disabled'),
    Input('outer', 'className'),
)
def control_add_buttons(outer_className):
    if outer_className == 'triple-wl':
        all_adders = [True] * len(ctx.outputs_list[0])
    else:
        all_adders = [False] * len(ctx.outputs_list[0])
    return all_adders, all_adders

@app.callback(
    Output({'type': 'remove-wl', 'index': ALL}, 'disabled'),
    Input('outer', 'className'),
)
def control_remove_buttons(outer_className):
    if outer_className == 'single-wl':
        return [True]
    else:
        return [False] * len(ctx.outputs_list)
    
@app.callback(
    Output({'type': 'move-left', 'index': ALL}, 'disabled'),
    Output({'type': 'move-right', 'index': ALL}, 'disabled'),
    Input('outer', 'className'),
)
def control_move_buttons(outer_className):
    if outer_className == 'single-wl':
        all_movers = [True]
    else:
        all_movers = [False] * len(ctx.outputs_list[0])
    return all_movers, all_movers


if __name__ == "__main__":
    app.server(debug=True)
