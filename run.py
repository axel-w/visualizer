#!/usr/bin/env python
import argparse
from dataclasses import dataclass
from datetime import datetime
import filecmp
from itertools import product, repeat 
from multiprocessing import cpu_count, current_process, Pool
import os
import pickle
from pathlib import Path
import re
from shutil import copy, rmtree
import subprocess
from time import sleep
from file_generators import MainGenerator, BenchHeaderGenerator, OpenOcdConfigGenerator

# TODO: try to substitute remaining os.path with pathlib

@dataclass
class Results:
    group: str
    benchmarks: list[str]
    ncores: int
    core_mask: list[int]
    cycles: list[int]
    return_values: list[int]
    debug_mode: bool
    log_mode: bool
    data: list[list[int]]

class Benchmark:
    def __init__(self, og_main_path: Path, main_line: int) -> None:
        self.name: str = str()
        self.group: str = str()
        self.og_dir_path: Path = Path()
        self.main_name: str = str()
        self.main_line: int = main_line
        self._init_from_main(og_main_path)

    def _init_from_main(self, main_path: Path) -> None:
        self.og_dir_path = main_path.parent
        self.main_name = main_path.name
        self.name = self.og_dir_path.name
        self.group = self.og_dir_path.parent.name

class Workload:
    def __init__(self, benchmarks: list[Benchmark], target_dir: Path, linking_dir: Path, ncores: int, core_mask: list=list(), measure_core: int=0, debug_mode: bool=False, log_mode: bool=False) -> None:
        self.benchmarks: list[Benchmark] = benchmarks
        self.name: str = '-'.join([b.name for b in benchmarks])
        self.dir_path: Path = target_dir / self.name
        self.riscv_exec: Path = self.dir_path / (self.name + '.riscv')
        self.out_csv: str = self.dir_path / 'out.csv'
        self.out_pickle: str = self.dir_path / 'out.pickle'
        self.sim_logs: str = self.dir_path / 'sim_logs'
        self.debug_mode: bool = debug_mode
        self.log_mode: bool = log_mode
        self.ncores: int = ncores
        self.core_mask: list[int] = core_mask
        self.measure_core: int = measure_core
        self.linking_dir: Path = linking_dir

    def check_existing(file):
        def _check_existing(f):
            def wrapper(self, argp: argparse.Namespace, *args):
                target_path = getattr(self, file)
                if not os.path.exists(target_path):
                    f(self, argp, *args)
                elif argp.force:
                    if os.path.isfile(target_path) or os.path.islink(target_path):
                        os.remove(target_path)
                    elif os.path.isdir(target_path):
                        rmtree(target_path)
                    f(self, argp, *args)
                else:
                    target_file = os.path.basename(target_path)
                    print(target_file + ' already exists')
            return wrapper
        return _check_existing

    # def _rename_duplicate(self, benchmark: Benchmark, file: Path, suffix: str) -> None:
    #     with open(file, 'r') as f:
    #         modified_content = f.read().replace(benchmark.name, benchmark.name + suffix)
    #     with open(file, 'w') as f:
    #         f.write(modified_content)

    def _convert_main(self, file: Path, main_line: int, task_name: str) -> None:
        with open(file, 'r') as f:
            content = f.readlines()
        content[main_line] = content[main_line].replace('main', task_name)
        main_forward_declaration = re.compile(r'int main *\( *(void)* *\) *;')
        for line_nr, line in enumerate(content):
            if main_forward_declaration.match(line):
                content[line_nr] = content[line_nr].replace('main', task_name)
                break
        with open(file, 'w') as f:
            f.writelines(content)

    def _reduce_main(self, file: Path, bm: Benchmark) -> str:
        new_header_name = f'{bm.name}_three_func'
        three_func_header = f'#include "{new_header_name}.h"\n'
        with open(file, 'r') as f:
            content = f.readlines()
        content = [three_func_header] + content[bm.main_line:]
        with open(file, 'w') as f:
            f.writelines(content)
        return new_header_name

    def _generate_main_header(self, file: Path, new_header_name: str) -> None:
        with open(file, 'r') as f:
            content = f.readlines()
        function_calls = list()
        for line in content[2:]:
            function_calls.append(re.search(r'(?!\b(if|while|for|return|_Pragma)\b)\b\w+(?=\s*\()', line))
        function_calls = [f'{f.group(0)}' for f in function_calls if f is not None]
        ifndef = f'#ifndef {new_header_name}_H\n#define {new_header_name}_H\n' # TODO: make upper case
        endif = '#endif'
        function_signatures: list = list()
        for i in function_calls:
            if 'return' in i:
                return_type = 'int'
            else:
                return_type = 'void'
            function_signatures.append(f'{return_type} {i}();\n')
        output = [ifndef] + function_signatures + [endif]
        with open(Path(self.dir_path / (new_header_name + '.h')), 'w') as f:
            f.writelines(output)
            
    @check_existing('dir_path')
    def gather_files(self, args: argparse.Namespace, common_dir: Path) -> None:
        already_copied_bms: dict[int] = dict()
        already_copied_files: list[Path] = list()
        # self.dir_path.mkdir(parents=True, exist_ok=True)
        for i, bm in enumerate(self.benchmarks):
            task_name: str = f'task_{i}'
            task_path: Path = self.dir_path / task_name
            task_path.mkdir(parents=True, exist_ok=True)
            new_main_path: Path = task_path / bm.main_name
            if bm.name not in already_copied_bms.keys():
                bm_files = bm.og_dir_path.iterdir()
                # new_files = list()
                # to_ignore = list()
                new_files = list()
                for f in bm_files:
                    found = False
                    for acf in already_copied_files:
                        if filecmp.cmp(f, acf) and f.name == acf.name:
                            found = True
                            break
                    if not found:
                        copy(f, task_path / f.name)
                        new_files.append(f)
                already_copied_files.extend(new_files)
                    # if not any([filecmp(f, acf) for acf in already_copied_files]):
                    #     already_copied_files.append(f)
                    #     copy(f, task_path)
                    # else:
                        # to_ignore.append(f)
                # print(new_files)
                # copytree(bm.og_dir_path, task_path, ignore=to_ignore)
                self._convert_main(new_main_path, bm.main_line, task_name)
            else:
                # task_path.mkdir(parents=True)
                copy(bm.og_dir_path / bm.main_name, task_path)
                self._convert_main(new_main_path, bm.main_line, task_name) # TODO order differently so maybe only one call
                # self._rename_duplicate(bm, new_main_path, str(already_copied_bms[bm.name]))
                new_header_name = self._reduce_main(new_main_path, bm)
                if already_copied_bms[bm.name] == 1:
                    self._generate_main_header(new_main_path, new_header_name)
            already_copied_bms[bm.name] = already_copied_bms.get(bm.name, 0) + 1
        MainGenerator(self.ncores, self.measure_core, self.core_mask, self.log_mode).get_file(self.dir_path / 'main.c')
        BenchHeaderGenerator(self.ncores, self.core_mask).get_file(self.dir_path / 'mt-tasks.h')
        crt_s_file = self.dir_path / 'crt.S'
        copy(self.linking_dir / 'crt.S', self.dir_path)
        modify_file_line(crt_s_file, 124, r'(?<= )1(?=\n)', str(self.ncores))
        logging_lib_files = [common_dir / 'msg_logger.c', common_dir / 'msg_logger.h']
        counting_lib_files = [common_dir / 'msg_counter.c', common_dir / 'msg_counter.h']
        measure_lib_files = logging_lib_files if self.log_mode else counting_lib_files
        measure_lib_files.append(common_dir / 'mmio.h')
        for measure_lib_file in measure_lib_files:
            copy(measure_lib_file, self.dir_path)
        if not self.log_mode:
            nsources = self.ncores * 4 + 1
            modify_file_line(self.dir_path / 'msg_counter.c', 20, r'(?<=s<)10(?=;)', str(nsources))

    @check_existing('riscv_exec')
    def compile(self, args: argparse.Namespace) -> None:
        riscv_gcc: str = 'riscv64-unknown-elf-gcc'
        cflags: str = '-DPREALLOCATE=1 -mcmodel=medany -static -std=gnu99 -g -O0 -fno-builtin-printf'
        ldlflags: str = f'-static -nostdlib -T{self.linking_dir}/test.ld -Wl,--no-warn-rwx-segments'
        includes: str = f'-I{self.linking_dir} -I{self.linking_dir}/env -I{self.dir_path} -I{self.dir_path}/task_0 -I{self.dir_path}/task_1'
        crt_S: str = str(self.dir_path / 'crt.S')
        c_files: str = ' '.join((*map(str, self.dir_path.rglob('**/*.c')),))
        c_files2: str = ' '.join((*map(str, self.linking_dir.glob('*.c')),))
        target: str = f'-o{self.riscv_exec}'
        cmd: str = ' '.join([riscv_gcc, cflags, ldlflags, includes, crt_S, c_files, c_files2, target])
        subprocess.run(cmd, cwd=str(self.dir_path), shell=True)

    @check_existing('out_csv')
    def simulate(self, args: argparse.Namespace, verilator_path: Path, dramsim_ini_path: Path) -> None:
        dut_simulator = f'{verilator_path}/simulator-{args.chipTop}-{args.chipConfig}'
        if self.debug_mode:
            self._debug_simulate(args.chipConfig, dut_simulator, dramsim_ini_path)
        else:
            self._run_simulate(args.chipConfig, dut_simulator, dramsim_ini_path)

    def _run_simulate(self, chipConfig: str, dut_simulator: str, dramsim_ini_path: Path) -> None:
        cmdfast=(f'(set -o pipefail &&  {dut_simulator} +permissive +dramsim '
        f'+dramsim_ini_dir={dramsim_ini_path} +max-cycles=100000000 +permissive-off '
        f'{self.riscv_exec} > {self.out_csv})') 
        print(f'Starting {chipConfig} simulator for {self.riscv_exec.name}')
        with open(self.sim_logs, 'w') as log_file:
            subprocess.run(cmdfast, shell=True, executable='/bin/bash', stderr=log_file)

    def _debug_simulate(self, chipConfig: str, dut_simulator: str, dramsim_ini_path: Path) -> None:
        process_id = current_process()._identity[0]
        gdb_port: int = 3333 + process_id
        telnet_port: int = 4444 + process_id
        tcl_port: int = 6666 + process_id
        rbb_port: int = 9823 + process_id
        openOcd_configs = self.dir_path / 'openOcdConfigs'
        openOcd_logs = self.dir_path / 'openOcdLogs'
        openOcd_configs.mkdir(parents=True)
        openOcd_logs.mkdir(parents=True)
        openOcd_log = openOcd_logs / f'openocd{process_id}.log'
        openOcdConfig = openOcd_configs / f'cemulator{process_id}.cfg'
        OpenOcdConfigGenerator(self.ncores, gdb_port, telnet_port, tcl_port, rbb_port).get_file(openOcdConfig)
        cmd_fast=(f'(set -o pipefail && {dut_simulator} +permissive +jtag_rbb_enable=1 --rbb-port={rbb_port} +dramsim '
        f'+dramsim_ini_dir={dramsim_ini_path} +max-cycles=100000000 +permissive-off '
        f'none > {self.sim_logs})')
        print(f'Starting {chipConfig} simulator for {self.riscv_exec.name}')
        sim_proc = subprocess.Popen(cmd_fast, shell=True, executable='/bin/bash', stderr=subprocess.PIPE, universal_newlines=True)
        procOut = str()
        while procOut != 'Attempting to accept client socket\n':
            procOut = sim_proc.stderr.readline()
            sleep(0.1)
        openOcd_cmd = f'openocd -f {openOcdConfig}'
        print(f'Starting OpenOCD for {self.riscv_exec.name}...')
        with open(openOcd_log, 'w') as f:
            subprocess.Popen(openOcd_cmd, shell=True, executable='/bin/bash', stdout=f, stderr=f, universal_newlines=True)
        procOut = list()
        while 'Ready for Remote Connections\n' not in procOut:
            with open(openOcd_log, 'r') as f:
                procOut = f.readlines()
            sleep(0.1)
        main_path = self.dir_path / 'main.c'
        with open(main_path, 'r') as f:
            content = f.readlines()
        for i, line in enumerate(content):
            if 'stop_counter' in line or 'stop_logger' in line:
                breakpoint = i + 3
                break
        print(f'Starting GDB for {self.riscv_exec.name}...')
        gdb_cmd = f'riscv64-unknown-elf-gdb --batch -ex "py riscv=\'{self.riscv_exec}\'; gdb_port={gdb_port}; source=\'{self.dir_path / "main.c"}\'; breakpoint={breakpoint}; ncores={self.ncores}; log_mode={self.log_mode}; log_file=\'{self.out_csv}\'" -x debug-script.py'
        with open(self.dir_path / 'gdb_logs', 'w') as f:
            subprocess.run(gdb_cmd, shell=True, stdout=f, stderr=f)

    @check_existing('out_pickle')
    def pickle_results(self, args):
        with open(self.out_csv, 'r') as f:
            csv_content = f.readlines()
        benchmark_names = [b.name for b in self.benchmarks]
        cycles = [None] * self.ncores
        return_values = [None] * self.ncores
        data = []
        for line in csv_content:
            if line.startswith('c'):
                corenr = int(re.search(f'(?<=c)\d+', line).group())
                cycle = int(re.search(f'(?<=: )\d+', line).group())
                cycles[corenr] = cycle
            elif line.startswith('r'):
                corenr = int(re.search(f'(?<=r)\d+', line).group())
                return_val = int(re.search(f'(?<=: )\d+', line).group())
                return_values[corenr] = return_val
            elif self.log_mode and re.search("(\d+( |\n)){12}", line) or not self.log_mode and re.search("(\d+ ){8}\n", line):
                data.append([*map(int, line.split()),])
        results: Results = Results(args.name, benchmark_names, self.ncores, self.core_mask, cycles, return_values, self.debug_mode, self.log_mode, data)
        with open(self.out_pickle, 'wb') as f:
            pickle.dump(results, f)

def modify_file_line(file: Path, line_nr: int, pattern: str, replacement: str) -> None:
    with open(file, 'r') as f:
        content = f.readlines()
    content[line_nr] = re.sub(pattern, replacement, content[line_nr])
    with open(file, 'w') as f:
        f.writelines(content)

def find_available_benchmarks(bench_suite_dir) -> dict[Benchmark]:
    c_files: list(Path) = bench_suite_dir.rglob('**/*.c')
    benchmarks: dict = dict()
    main_pattern = re.compile(r'int main *\( *(void)* *\)[^;]')
    for c_file in c_files:
        with open(c_file, 'r') as f:
            for line_nr, line in enumerate(f):
                if main_pattern.match(line):
                    new_benchmark = Benchmark(c_file, line_nr)
                    benchmarks[new_benchmark.name] = new_benchmark
                    break
    return benchmarks

def generate_workloads(available_benchmarks: dict[Benchmark], target_dir: Path, linking_dir: Path, args: argparse.Namespace) -> list[Workload]:
    workloads: list[Workload] = list()
    benchmark_combinations: set(list(str)) = set()
    benchmark_names: list[str] = list()
    for benchmark_name, benchmark in available_benchmarks.items():
        included = benchmark_name in args.benchmarks or benchmark.group in args.benchmarks or 'all' in args.benchmarks
        excluded = benchmark_name in args.exclude or benchmark.group in args.exclude
        if included and not excluded:
            benchmark_names.append(benchmark.name)
    benchmark_combinations: set(str) = set(product(benchmark_names, repeat=args.ncores))
    benchmark_combinations.update(set(args.workloads))
    for benchmark_combination in benchmark_combinations:
        benchmarks = *map(available_benchmarks.get, benchmark_combination),
        workloads.append(Workload(benchmarks=benchmarks, target_dir=target_dir, linking_dir=linking_dir, ncores=args.ncores, core_mask=args.core_mask, measure_core=args.measure_core, debug_mode=args.debug_mode, log_mode=args.log_mode))
    return workloads

def process_workload(workload: Workload, args: argparse.Namespace, common_dir: Path, verilator_path: Path, dramsim_init_path: Path) -> Workload:
    workload.gather_files(args, common_dir)
    workload.compile(args)
    workload.simulate(args, verilator_path, dramsim_init_path)
    workload.pickle_results(args)
    return workload

def main():
    default_name = datetime.now().strftime(format='%d-%b-%y-%H-%M-%S')
    default_ncores: int = 2

    test_dir = Path(__file__).parent.parent / 'tests'
    chipyard_path = test_dir.parents[2]
    verilator_path = chipyard_path / 'sims' / 'verilator'
    dramsim_ini_path = chipyard_path / 'generators' / 'testchipip' / 'src' / 'main' / 'resources' / 'dramsim2_ini'
    bench_suite_dir = test_dir / 'tacle-bench' / 'bench'
    linking_dir = test_dir / 'linking'
    common_dir = test_dir / 'common'

    benchmarks = find_available_benchmarks(bench_suite_dir)
    benchmarks_benchgroups: set[str] = set([benchmark.group for benchmark in benchmarks.values()]).union(benchmarks.keys())
    parser = argparse.ArgumentParser(description='Execute a pipeline building, compiling and simulating workloads')
    parser.add_argument('-n', '--name', help='name of the target directory', action='store', default=default_name)
    parser.add_argument('--ncores', help='number of cores', action='store', default=default_ncores, type=int)
    parser.add_argument('--core_mask', help='list of cores not to use', action='store', default=list(), type=int, nargs='+')
    parser.add_argument('--measure-core', help='core to communicate with the measurement facility', action='store', default=0, type=int)
    parser.add_argument('-f', '--force', help='overwrite existing data', action='store_true')
    parser.add_argument('-d', '--debug_mode', help='simulate with gdb', action='store_true')
    parser.add_argument('-l', '--log_mode', help='generate detailed logs of each message instead of counts', action='store_true')
    parser.add_argument('--benchmarks', type=str, nargs='+', help='list of benchmarks or benchgroups to assemble to workloads', default=list(['all']), choices=benchmarks_benchgroups)
    parser.add_argument('--exclude', type=str, nargs='+', help='list of benchmarks or benchgroups to exclude from workloads', default=list([]), choices=benchmarks_benchgroups)
    parser.add_argument('-w', '--workloads', type=str, nargs='+', help='workload to execute (can be used multiple times)', default=list(list()), action='append')
    parser.add_argument('--chipTop', help='name of the chiptop to use', action='store', default='customtop', type=str)
    parser.add_argument('--chipConfig', help='name of the config to use', action='store', type=str)
    args = parser.parse_args()

    target_dir = test_dir / 'generated' / args.name


    if args.workloads:
        args.ncores = len(args.workloads[0])

    if not args.chipConfig:
        measurement_fac_type = 'Logger' if args.log_mode else 'Counter'
        args.chipConfig = f'Msg{measurement_fac_type}{args.ncores}BigConfig'

    args.workloads = set([tuple(workload) for workload in args.workloads])
    workloads: list(Workload) = generate_workloads(benchmarks, target_dir, linking_dir, args)
    cmd_sim_compilation = f"make SUB_PROJECT={args.chipTop} CONFIG={args.chipConfig}"

    if not target_dir.exists() or args.force:
        target_dir.mkdir(parents=True, exist_ok=args.force)
    with open(target_dir / 'simulator_compilation.log', 'w') as f:
        subprocess.run(cmd_sim_compilation, cwd=verilator_path, shell=True, stdout=f, stderr=f, executable='/bin/bash')


    with Pool(cpu_count()-1) as p:
        list(p.starmap(process_workload, zip(workloads, repeat(args), repeat(common_dir), repeat(verilator_path), repeat(dramsim_ini_path))))


if __name__ == "__main__":
    main()