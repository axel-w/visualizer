from dataclasses import dataclass

@dataclass
class Results:
    group: str
    benchmarks: list
    ncores: int
    core_mask: list[int]
    cycles: list[int]
    return_values: list[int]
    debug_mode: bool
    log_mode: bool
    data: list[list[int]]