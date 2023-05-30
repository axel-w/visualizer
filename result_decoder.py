#!/usr/bin/env python
"""Library for decoding the results of the monitoring generator."""
from dataclasses import dataclass
from functools import partial
from itertools import repeat
from multiprocessing import Pool, cpu_count
import pandas as pd
from pathlib import Path
import pickle
import re
from result_types import Results

opmap = [[
    'PutFullData', 'PutPartialData', 'ArithmeticData', 'LogicalData', 'Get',
    'Intent', 'AcquireBlock', 'AcquirePerm'
],
    [
    'PutFullData', 'PutPartialData', 'ArithmeticData', 'LogicalData',
    'Get', 'Intent', 'ProbeBlock', 'ProbePerm'
],
    [
    'AccessAcc', 'AccessAckData', 'HintAck', '-', 'ProbeAck',
    'ProbeAckData', 'Release', 'ReleaseData'
],
    [
    'AccessAcc', 'AccessAckData', 'HintAck', '-', 'Grant', 'GrantData',
    'ReleaseAck', '-'
], ['GrantAcc', '-', '-', '-', '-', '-', '-', '-']]

grow_permissions = ['grow NtoB', 'grow NtoT', 'grow BtoT']
cap_permissions = ['cap toT', 'cap toB', 'cap toN']
prune_report_permissions = [
    'prune TtoB', 'prune TtoN', 'prune BtoN', 'report TtoT', 'report BtoB',
    'report NtoN'
]
parammap = {
    'ArithmeticData': ['MIN', 'Max', 'MINU', 'MAXU', 'ADD'],
    'LogicalData': ['XOR', 'OR', 'AND', 'SWAP'],
    'Intent': [
        'PrefetchRead', 'PrefetchWrite', 'undefined', 'undefined', 'undefined',
        'CBOInval', 'CBOClean', 'CBOFlush'
    ],
    'AcquireBlock': grow_permissions,
    'AcquirePerm': grow_permissions,
    'ProbeBlock': cap_permissions,
    'ProbePerm': cap_permissions,
    'ProbeAck': prune_report_permissions,
    'ProbeAckData': prune_report_permissions,
    'Grant': grow_permissions,
    'GrantData': grow_permissions,
    'Release': prune_report_permissions,
    'ReleaseData': prune_report_permissions,
    'Intent': ['PrefetchRead', 'PrefetchWrite'],
}


@dataclass
class FResult:
    """The formatted result of a workload simulation"""
    group: str
    name: str
    chip_config: str
    insert_location: list[str]
    benchmarks: list[str]
    ncores: int
    core_mask: list[int]
    compiler_optimization: str
    cycles: list[int]
    return_values: list[int]
    debug_mode: bool
    log_mode: bool
    data: pd.DataFrame
    detailed: pd.DataFrame


@dataclass
class ResultGroup:
    """Group of formatted results"""
    name: str
    chip_config: str
    insert_location: list[str]
    ncores: int
    core_mask: list[int]
    compiler_optimization: str
    debug_mode: bool
    log_mode: bool
    results: dict[str, FResult]


def source_map(source: int, ncores: int, channel: int,
               insert_location: list[str]) -> str:
    """Maps the source of a message to a string

    The information for this mapping is taken from the prints on build time in
    made by monitoring/src/main/scala/MsgCounter.scala

    Args:
        source (int): Sender/receiver id
        ncores (int): Total number of cores
        channel (int): Channel id
        insert_location (list[str]): Insert location of the measurement facility

    Returns:
        str: Sender/receiver name
    """
    if insert_location[0] == 'sbus' or insert_location[0] == 'cbus':
        if channel == 4:
            return 'unknown(E)'
        elif source >= 0 and source < ncores * 4:
            corenr = ncores - 1 - source // 4
            match source % 4:
                case 0: cache_type = 'D$'
                case 1: cache_type = 'D$ MMIO'
                case 2: cache_type = 'I$'
                case 3: cache_type = 'unknown'
            return f'c{corenr} {cache_type}'
        elif source == ncores * 4:
            return 'serial-tl'
        else:
            if source > ncores * 4 and insert_location[0] == 'cbus':
                return 'custom-boot'
            else:
                return 'serial-tl'
    elif insert_location[0] == 'l2':
        return f'L2 - {source}'
    elif insert_location[0] == 'fbus':
        return f'serial-tl - {source}'


def find_results(result_path: Path) -> list[Results]:
    """Finds all pickled results in a directory

    Args:
        result_path (Path): Path to look for results

    Returns:
        list[Results]: List of loaded results
    """
    results = []
    for i in result_path.rglob('*.pickle'):
        with open(i, 'rb') as f:
            result = pickle.load(f)
        results.append(result)
    return results


def derive_counts(data: pd.DataFrame) -> pd.DataFrame:
    """Derives message counts for each operation-source-channel combination

    If a measurement is made in log mode the exact list of messages is available
    but not their counts. This function calculates these.

    Args:
        data (pd.DataFrame): Dataframe with detailed message logs

    Returns:
        pd.DataFrame: DataFrame with counts for each operation-source-channel
            combination
    """
    count_data = data[['source', 'channel', 'op']].copy()
    count_data = count_data.value_counts(
        dropna=False).reset_index(name='count')
    return count_data


def generate_name(ncores: int, core_mask: list[int],
                  benchmarks: list[str]) -> str:
    """Generates a name for a workload

    The name is generated based on the benchmarks and which cores were masked.

    Args:
        ncores (int): Total number of cores
        core_mask (list[int]): List of masked cores
        benchmarks (list[str]): List of benchmarks

    Returns:
        str: Name of the workload
    """
    name_parts: list[str] = list()
    benchmark_index: int = 0
    for i in range(ncores):
        if i in core_mask:
            name_parts += ['empty']
        else:
            name_parts += [benchmarks[benchmark_index]]
            benchmark_index += 1
    name: str = '-'.join(name_parts)
    return name


def format_result(result: Results, result_paths: list[Path]) -> FResult:
    """Formats a result for humans to read

    Decodes detailed message logs and counts.
    Translates various ids into their names.

    Args:
        result (Results): Raw result to format

    Returns:
        FResult: Formatted result
    """
    fdata: list = list()
    name = generate_name(result.ncores, result.core_mask, result.benchmarks)
    if result.log_mode:
        sym_dict = get_sym_dict(result, result_paths, name)
        for m in result.data:
            tick = m[0]
            channel_name = chr(ord('A') + m[1])
            address = f'{m[2]:x}'
            if channel_name != 'D' and channel_name != 'E':
                address = sym_dict.get(address, address)
            corrupt = m[3]
            data = f'{m[4]:x}'
            data = sym_dict.get(data, data)
            denied = m[5]
            mask = m[6]
            if m[1] == 4:
                op_name = None
            else:
                op_name = opmap[m[1]][m[7]]
            if op_name in parammap:
                param = parammap[op_name][m[8]]
            else:
                param = None
            sink = m[9]
            size = m[10]
            source = source_map(m[11], result.ncores, m[1],
                                result.insert_location)
            dir = 'out' if channel_name == 'B' or channel_name == 'D' else 'in'
            message = [
                tick, dir, channel_name, source, sink, address, op_name, param,
                data, size, mask, corrupt, denied
            ]
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
                for i in [3, 5, 6, 7, 8, 9, 10, 11, 12]:
                    message[i] = None
            fdata.append(message)
        columns = [
            'tick', 'dir', 'channel', 'source', 'sink', 'address', 'op',
            'param', 'data', 'size', 'mask', 'corrupt', 'denied'
        ]
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
                    fdata.append([
                        source_map(source, result.ncores, channel,
                                   result.insert_location),
                        chr(ord('A') + channel), op_name, count
                    ])
                op += 1
            channel = (channel + 1) % 5
            if channel == 0:
                source += 1
        columns = ['source', 'channel', 'op', 'count']
        detailed = None
        count_data = pd.DataFrame(fdata, columns=columns)
    return FResult(group=result.group,
                   name=name,
                   chip_config=result.chip_config,
                   insert_location=result.insert_location,
                   benchmarks=result.benchmarks,
                   ncores=result.ncores,
                   core_mask=result.core_mask,
                   compiler_optimization=result.compiler_optimization,
                   cycles=result.cycles,
                   return_values=result.return_values,
                   debug_mode=result.debug_mode,
                   log_mode=result.log_mode,
                   data=count_data,
                   detailed=detailed)


def get_sym_dict(result, result_paths, name):
    sym_file = None
    for p in result_paths:
        if p.exists():
            sym_file = list(p.rglob(f'{result.group}_{name}.sym'))
            if sym_file:
                sym_file = sym_file[0]
                break
    sym_dict = dict()
    with open(sym_file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            if line.startswith('00000'):
                columns = line.split()
                address_int = int("0x" + columns[0], 16)
                no_lead_0 = f'{address_int:x}'
                sym_dict[no_lead_0] = columns[-1]
    return sym_dict


def get_groups() -> dict[str, ResultGroup]:
    """Finds, formats and groups all results

    Searches in /tests/generated and /tests/data for results, formats them and
    groups them by their group name.

    Returns:
        dict[str, ResultGroup]: Dictionary of result groups
    """
    result_paths = [Path(__file__).parent.parent / 'tests' / 'generated',
                    Path(__file__).parent.parent / 'tests' / 'pre-generated',
                    Path(__file__).parent / 'data']
    results = list()
    for p in result_paths:
        if p.exists():
            results.extend(find_results(p))
    results = [format_result(result, result_paths) for result in results]
    groups: dict[str, ResultGroup] = dict()
    for result in results:
        if result.group not in groups:
            groups[result.group] = ResultGroup(result.group, result.chip_config,
                                               result.insert_location,
                                               result.ncores, result.core_mask,
                                               result.compiler_optimization,
                                               result.debug_mode,
                                               result.log_mode, dict())
        groups[result.group].results[result.name] = result
    return groups
