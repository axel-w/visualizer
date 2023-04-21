#!/usr/bin/env python
from dataclasses import dataclass
import pandas as pd
from pathlib import Path
import pickle
from result_types import Results


opmap = [
    ['PutFullData', 'PutPartialData', 'ArithmeticData', 'LogicalData', 'Get', 'Intent', 'AcquireBlock', 'AcquirePerm'],
    ['PutFullData', 'PutPartialData', 'ArithmeticData', 'LogicalData', 'Get', 'Intent', 'ProbeBlock', 'ProbePerm'],
    ['AccessAcc', 'AccessAckData', 'HintAck', '-', 'ProbeAck', 'ProbeAckData', 'Release', 'ReleaseData'],
    ['AccessAcc', 'AccessAckData', 'HintAck', '-', 'Grant', 'GrantData', 'ReleaseAck', '-'],
    ['GrantAcc', '-', '-','-','-','-','-','-']
]

@dataclass
class FResult:
    group: str
    name: str
    benchmarks: list[str]
    ncores: int
    core_mask: list[int]
    cycles: list[int]
    return_values: list[int]
    debug_mode: bool
    log_mode: bool
    data: pd.DataFrame
    detailed: pd.DataFrame

@dataclass
class ResultGroup:
    name: str
    ncores: int
    core_mask: list[int]
    debug_mode: bool
    log_mode: bool
    results: dict[str, FResult]

def find_results(result_path: Path):
    results = []
    for i in result_path.rglob('*.pickle'):
        with open(i, 'rb') as f:
            result = pickle.load(f)
        results.append(result)
    return results

def derive_counts(data: pd.DataFrame):
    count_data = data[['source', 'channel', 'op']].copy()
    count_data = count_data.value_counts(dropna=False).reset_index(name='count')
    return count_data

def format_result(result: Results):
    fdata: list = list()
    if result.log_mode:
        for m in result.data:
            tick = m[0]
            channel_name = chr(ord('A')+m[1])
            address = f'{m[2]:x}'
            corrupt = m[3]
            data = m[4]
            denied = m[5]
            mask = m[6]
            op_name = opmap[m[1]][m[7]]
            param = m[8]
            sink = m[9]
            size = m[10]
            source = m[11]
            dir = 'out' if channel_name == 'B' or channel_name == 'D' else 'in'
            message = [tick, dir, channel_name, source, sink, address, op_name, param, data, size, mask, corrupt, denied]
            if channel_name == 'A' or channel_name == 'B':
                message[4] = None
                message[12] = None
            elif channel_name == 'C':
                message[4] = None
                message[10] = None
                message[12] = None
            elif channel_name == 'D':
                message[5] = None
                message[10] = None
            elif channel_name == 'E':
                for i in [3,5,6,7,8,9,10,11,12]:
                    message[i] = None
            fdata.append(message)
        columns = ['tick', 'dir', 'channel', 'source', 'sink', 'address', 'op', 'param', 'data', 'size', 'mask', 'corrupt', 'denied']
        detailed = pd.DataFrame(fdata, columns=columns)
        count_data = derive_counts(detailed)
    else:
        source = 0
        channel = 0
        for count_line in result.data:
            op = 0
            for count in count_line:
                if count != 0:
                    op_name = opmap[channel][op]
                    fdata.append([source, chr(ord('A')+channel), op_name, count])
                op += 1
            channel = (channel + 1) % 5
            if channel == 0: source += 1
        columns = ['source', 'channel', 'op', 'count']
        detailed = None
        count_data = pd.DataFrame(fdata, columns=columns)
    name = '-'.join([result.benchmarks[i] if i not in result.core_mask else '(empty)' for i in range(result.ncores) ])
    return FResult(
        group=result.group,
        name=name,
        benchmarks=result.benchmarks,
        ncores=result.ncores,
        core_mask=result.core_mask,
        cycles=result.cycles,
        return_values=result.return_values,
        debug_mode=result.debug_mode,
        log_mode=result.log_mode,
        data=count_data,
        detailed=detailed
    )

def generate_workload_dropdown_options(groups: dict[ResultGroup]) -> list[dict[str, str]]:
    options = []
    # (bms: {len(group.results)})
    for n, group in groups.items():
        count_detailed = 'detailed' if group.log_mode else 'count'
        run_debug = 'debug' if group.debug_mode else 'run'
        option_label: str = f'{n}  -  (bms: {len(group.results)}, ncores: {group.ncores}, {count_detailed}, {run_debug})'
        option = {'label': option_label, 'value': n}
        options.append(option)
    return options

def get_groups() -> dict[str, ResultGroup]:
    result_path = Path(__file__).parent.parent / 'tests' / 'generated'
    alternative_path = Path(__file__).parent / 'data'
    results = list()
    for p in [result_path, alternative_path]:
        if p.exists():
            results.extend(find_results(p))
    results = [format_result(result) for result in results]
    groups: dict[str, ResultGroup] = dict()
    for result in results:
        if result.group not in groups:
            groups[result.group] = ResultGroup(result.group, result.ncores, result.core_mask, result.debug_mode, result.log_mode, dict())
        groups[result.group].results[result.name] = result
    return groups
