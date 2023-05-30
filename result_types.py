"""Library for the Results dataclass

Used to store the results of the pipeline and load them for the visualizer.
"""
from dataclasses import dataclass


@dataclass
class Results:
    group: str
    benchmarks: list[str]
    chip_config: str
    insert_location: list[str]
    ncores: int
    core_mask: list[int]
    compiler_optimization: int
    cycles: list[int]
    return_values: list[int]
    debug_mode: bool
    log_mode: bool
    data: list[list[int]]