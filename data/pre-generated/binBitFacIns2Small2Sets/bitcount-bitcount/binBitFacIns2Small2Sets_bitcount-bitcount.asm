
/home/axel/chipyard/generators/monitoring/tests/generated/binBitFacIns2Small2Sets/bitcount-bitcount/bitcount-bitcount.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_start>:
    .global _start
    .type _start, @function
_start:
    .cfi_startproc

    li x1, 0
    80000000:	       4081                	li	ra,0
    li x2, 0
    80000002:	       4101                	li	sp,0
    li x3, 0
    80000004:	       4181                	li	gp,0
    li x4, 0
    80000006:	       4201                	li	tp,0
    li x5, 0
    80000008:	       4281                	li	t0,0
    li x6, 0
    8000000a:	       4301                	li	t1,0
    li x7, 0
    8000000c:	       4381                	li	t2,0
    li x8, 0
    8000000e:	       4401                	li	s0,0
    li x9, 0
    80000010:	       4481                	li	s1,0
    li x10, 0
    80000012:	       4501                	li	a0,0
    li x11, 0
    80000014:	       4581                	li	a1,0
    li x12, 0
    80000016:	       4601                	li	a2,0
    li x13, 0
    80000018:	       4681                	li	a3,0
    li x14, 0
    8000001a:	       4701                	li	a4,0
    li x15, 0
    8000001c:	       4781                	li	a5,0
    li x16, 0
    8000001e:	       4801                	li	a6,0
    li x17, 0
    80000020:	       4881                	li	a7,0
    li x18, 0
    80000022:	       4901                	li	s2,0
    li x19, 0
    80000024:	       4981                	li	s3,0
    li x20, 0
    80000026:	       4a01                	li	s4,0
    li x21, 0
    80000028:	       4a81                	li	s5,0
    li x22, 0
    8000002a:	       4b01                	li	s6,0
    li x23, 0
    8000002c:	       4b81                	li	s7,0
    li x24, 0
    8000002e:	       4c01                	li	s8,0
    li x25, 0
    80000030:	       4c81                	li	s9,0
    li x26, 0
    80000032:	       4d01                	li	s10,0
    li x27, 0
    80000034:	       4d81                	li	s11,0
    li x28, 0
    80000036:	       4e01                	li	t3,0
    li x29, 0
    80000038:	       4e81                	li	t4,0
    li x30, 0
    8000003a:	       4f01                	li	t5,0
    li x31, 0
    8000003c:	       4f81                	li	t6,0

    li t0, (MSTATUS_FS | MSTATUS_XS)
    8000003e:	       62f9                	lui	t0,0x1e
    csrs mstatus, t0
    80000040:	       3002a073          	csrs	mstatus,t0

#ifdef __riscv_flen
    /* Initialize FPU if present */
    la t0, 1f
    80000044:	       00000297          	auipc	t0,0x0
    80000048:	       09028293          	addi	t0,t0,144 # 800000d4 <_start+0xd4>
    csrw mtvec, t0
    8000004c:	       30529073          	csrw	mtvec,t0

    fscsr zero
    80000050:	       00301073          	fscsr	zero
    fmv.s.x f0,  zero
    80000054:	       f0000053          	fmv.w.x	ft0,zero
    fmv.s.x f1,  zero
    80000058:	       f00000d3          	fmv.w.x	ft1,zero
    fmv.s.x f2,  zero
    8000005c:	       f0000153          	fmv.w.x	ft2,zero
    fmv.s.x f3,  zero
    80000060:	       f00001d3          	fmv.w.x	ft3,zero
    fmv.s.x f4,  zero
    80000064:	       f0000253          	fmv.w.x	ft4,zero
    fmv.s.x f5,  zero
    80000068:	       f00002d3          	fmv.w.x	ft5,zero
    fmv.s.x f6,  zero
    8000006c:	       f0000353          	fmv.w.x	ft6,zero
    fmv.s.x f7,  zero
    80000070:	       f00003d3          	fmv.w.x	ft7,zero
    fmv.s.x f8,  zero
    80000074:	       f0000453          	fmv.w.x	fs0,zero
    fmv.s.x f9,  zero
    80000078:	       f00004d3          	fmv.w.x	fs1,zero
    fmv.s.x f10, zero
    8000007c:	       f0000553          	fmv.w.x	fa0,zero
    fmv.s.x f11, zero
    80000080:	       f00005d3          	fmv.w.x	fa1,zero
    fmv.s.x f12, zero
    80000084:	       f0000653          	fmv.w.x	fa2,zero
    fmv.s.x f13, zero
    80000088:	       f00006d3          	fmv.w.x	fa3,zero
    fmv.s.x f14, zero
    8000008c:	       f0000753          	fmv.w.x	fa4,zero
    fmv.s.x f15, zero
    80000090:	       f00007d3          	fmv.w.x	fa5,zero
    fmv.s.x f16, zero
    80000094:	       f0000853          	fmv.w.x	fa6,zero
    fmv.s.x f17, zero
    80000098:	       f00008d3          	fmv.w.x	fa7,zero
    fmv.s.x f18, zero
    8000009c:	       f0000953          	fmv.w.x	fs2,zero
    fmv.s.x f19, zero
    800000a0:	       f00009d3          	fmv.w.x	fs3,zero
    fmv.s.x f20, zero
    800000a4:	       f0000a53          	fmv.w.x	fs4,zero
    fmv.s.x f21, zero
    800000a8:	       f0000ad3          	fmv.w.x	fs5,zero
    fmv.s.x f22, zero
    800000ac:	       f0000b53          	fmv.w.x	fs6,zero
    fmv.s.x f23, zero
    800000b0:	       f0000bd3          	fmv.w.x	fs7,zero
    fmv.s.x f24, zero
    800000b4:	       f0000c53          	fmv.w.x	fs8,zero
    fmv.s.x f25, zero
    800000b8:	       f0000cd3          	fmv.w.x	fs9,zero
    fmv.s.x f26, zero
    800000bc:	       f0000d53          	fmv.w.x	fs10,zero
    fmv.s.x f27, zero
    800000c0:	       f0000dd3          	fmv.w.x	fs11,zero
    fmv.s.x f28, zero
    800000c4:	       f0000e53          	fmv.w.x	ft8,zero
    fmv.s.x f29, zero
    800000c8:	       f0000ed3          	fmv.w.x	ft9,zero
    fmv.s.x f30, zero
    800000cc:	       f0000f53          	fmv.w.x	ft10,zero
    fmv.s.x f31, zero
    800000d0:	       f0000fd3          	fmv.w.x	ft11,zero

    /* Initialize global pointer; disable relaxation to avoid relaxing
       the address calculation to "addi gp, gp, 0" */
    .option push
    .option norelax
    la gp, __global_pointer$
    800000d4:	       00003197          	auipc	gp,0x3
    800000d8:	       62c18193          	addi	gp,gp,1580 # 80003700 <__global_pointer$>
    .option pop

    /* Initialize thread pointer */
    csrr s0, mhartid
    800000dc:	       f1402473          	csrr	s0,mhartid
    lui t0, %hi(__stack_shift)
    addi t0, t0, %lo(__stack_shift)
    800000e0:	       00f00293          	li	t0,15
    la tp, __stack_start
    800000e4:	       00024217          	auipc	tp,0x24
    800000e8:	       f1c20213          	addi	tp,tp,-228 # 80024000 <__heap_end>
    sll t0, s0, t0
    800000ec:	       005412b3          	sll	t0,s0,t0
    add tp, tp, t0
    800000f0:	       9216                	add	tp,tp,t0

    /* Initialize stack pointer */
    lui t0, %hi(__stack_size)
    800000f2:	       62a1                	lui	t0,0x8
    addi t0, t0, %lo(__stack_size)
    800000f4:	       00028293          	mv	t0,t0
    add sp, tp, t0
    800000f8:	       00520133          	add	sp,tp,t0

    /* Initialize trap vector */
    la t0, trap_entry
    800000fc:	       00000297          	auipc	t0,0x0
    80000100:	       04428293          	addi	t0,t0,68 # 80000140 <trap_entry>
    csrw mtvec, t0
    80000104:	       30529073          	csrw	mtvec,t0

    /* Initialize TLS */
    call __init_tls
    80000108:	       46a020ef          	jal	ra,80002572 <__init_tls>

    /* Skip global initialization if not the designated boot hart */
    la t0, __boot_hart
    8000010c:	       00000293          	li	t0,0
    bne s0, t0, _start_secondary
    80000110:	   [38;5;194m/--[0m 00540463          	beq	s0,t0,80000118 <_start+0x118>
    80000114:	   [38;5;194m|[0m   0f60006f          	j	8000020a <_start_secondary>

    /* Zero BSS segment */
    la t0, __bss_start
    80000118:	   [38;5;194m\->[0m 82818293          	addi	t0,gp,-2008 # 80002f28 <sense.0>
    la t1, __bss_end
    8000011c:	       dd018313          	addi	t1,gp,-560 # 800034d0 <_end>
    bgeu t0, t1, 2f
    80000120:	[38;5;228m/[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[0m 0062f763          	bgeu	t0,t1,8000012e <_start+0x12e>
1:
    SREG zero, (t0)
    80000124:	[38;5;228m|[0m  [38;5;146m/[38;5;146m-[38;5;146m>[0m 0002b023          	sd	zero,0(t0)
    addi t0, t0, REGBYTES
    80000128:	[38;5;228m|[0m  [38;5;146m|[0m   02a1                	addi	t0,t0,8
    bltu t0, t1, 1b
    8000012a:	[38;5;228m|[0m  [38;5;146m\[38;5;146m-[38;5;146m-[0m fe62ede3          	bltu	t0,t1,80000124 <_start+0x124>
2:

    /* Call global constructors */
    la a0, __libc_fini_array
    8000012e:	[38;5;228m\[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m>[0m 00002517          	auipc	a0,0x2
    80000132:	       51c50513          	addi	a0,a0,1308 # 8000264a <__libc_fini_array>
    call atexit
    80000136:	       4d8020ef          	jal	ra,8000260e <atexit>
    call __libc_init_array
    8000013a:	       546020ef          	jal	ra,80002680 <__libc_init_array>

    /* Call main function */
    tail _start_main
    8000013e:	       a075                	j	800001ea <_start_main>

0000000080000140 <trap_entry>:
    .cfi_endproc


    .align 2
trap_entry:
    csrw mscratch, sp
    80000140:	34011073          	csrw	mscratch,sp
    addi sp, sp, -(32*REGBYTES)
    80000144:	7111                	addi	sp,sp,-256

    /* Save trap frame */
    SREG x1, 1*REGBYTES(sp)
    80000146:	e406                	sd	ra,8(sp)
    csrr x1, mscratch
    80000148:	340020f3          	csrr	ra,mscratch
    SREG x1, 2*REGBYTES(sp)
    8000014c:	e806                	sd	ra,16(sp)
    SREG x3, 3*REGBYTES(sp)
    8000014e:	ec0e                	sd	gp,24(sp)
    SREG x4, 4*REGBYTES(sp)
    80000150:	f012                	sd	tp,32(sp)
    SREG x5, 5*REGBYTES(sp)
    80000152:	f416                	sd	t0,40(sp)
    SREG x6, 6*REGBYTES(sp)
    80000154:	f81a                	sd	t1,48(sp)
    SREG x7, 7*REGBYTES(sp)
    80000156:	fc1e                	sd	t2,56(sp)
    SREG x8, 8*REGBYTES(sp)
    80000158:	e0a2                	sd	s0,64(sp)
    SREG x9, 9*REGBYTES(sp)
    8000015a:	e4a6                	sd	s1,72(sp)
    SREG x10, 10*REGBYTES(sp)
    8000015c:	e8aa                	sd	a0,80(sp)
    SREG x11, 11*REGBYTES(sp)
    8000015e:	ecae                	sd	a1,88(sp)
    SREG x12, 12*REGBYTES(sp)
    80000160:	f0b2                	sd	a2,96(sp)
    SREG x13, 13*REGBYTES(sp)
    80000162:	f4b6                	sd	a3,104(sp)
    SREG x14, 14*REGBYTES(sp)
    80000164:	f8ba                	sd	a4,112(sp)
    SREG x15, 15*REGBYTES(sp)
    80000166:	fcbe                	sd	a5,120(sp)
    SREG x16, 16*REGBYTES(sp)
    80000168:	e142                	sd	a6,128(sp)
    SREG x17, 17*REGBYTES(sp)
    8000016a:	e546                	sd	a7,136(sp)
    SREG x18, 18*REGBYTES(sp)
    8000016c:	e94a                	sd	s2,144(sp)
    SREG x19, 19*REGBYTES(sp)
    8000016e:	ed4e                	sd	s3,152(sp)
    SREG x20, 20*REGBYTES(sp)
    80000170:	f152                	sd	s4,160(sp)
    SREG x21, 21*REGBYTES(sp)
    80000172:	f556                	sd	s5,168(sp)
    SREG x22, 22*REGBYTES(sp)
    80000174:	f95a                	sd	s6,176(sp)
    SREG x23, 23*REGBYTES(sp)
    80000176:	fd5e                	sd	s7,184(sp)
    SREG x24, 24*REGBYTES(sp)
    80000178:	e1e2                	sd	s8,192(sp)
    SREG x25, 25*REGBYTES(sp)
    8000017a:	e5e6                	sd	s9,200(sp)
    SREG x26, 26*REGBYTES(sp)
    8000017c:	e9ea                	sd	s10,208(sp)
    SREG x27, 27*REGBYTES(sp)
    8000017e:	edee                	sd	s11,216(sp)
    SREG x28, 28*REGBYTES(sp)
    80000180:	f1f2                	sd	t3,224(sp)
    SREG x29, 29*REGBYTES(sp)
    80000182:	f5f6                	sd	t4,232(sp)
    SREG x30, 30*REGBYTES(sp)
    80000184:	f9fa                	sd	t5,240(sp)
    SREG x31, 31*REGBYTES(sp)
    80000186:	fdfe                	sd	t6,248(sp)

    /* Invoke higher-level trap handler */
    csrr a0, mepc
    80000188:	34102573          	csrr	a0,mepc
    csrr a1, mcause
    8000018c:	342025f3          	csrr	a1,mcause
    csrr a2, mtval
    80000190:	34302673          	csrr	a2,mtval
    mv a3, sp
    80000194:	868a                	mv	a3,sp
    call handle_trap
    80000196:	3c6020ef          	jal	ra,8000255c <handle_trap>
    csrw mepc, a0
    8000019a:	34151073          	csrw	mepc,a0

    /* Remain in M-mode after return */
    li t0, MSTATUS_MPP
    8000019e:	6289                	lui	t0,0x2
    800001a0:	8002829b          	addiw	t0,t0,-2048 # 1800 <__stack_align+0x17f0>
    csrs mstatus, t0
    800001a4:	3002a073          	csrs	mstatus,t0

    LREG x1, 1*REGBYTES(sp)
    800001a8:	60a2                	ld	ra,8(sp)
    LREG x3, 3*REGBYTES(sp)
    800001aa:	61e2                	ld	gp,24(sp)
    LREG x4, 4*REGBYTES(sp)
    800001ac:	7202                	ld	tp,32(sp)
    LREG x5, 5*REGBYTES(sp)
    800001ae:	72a2                	ld	t0,40(sp)
    LREG x6, 6*REGBYTES(sp)
    800001b0:	7342                	ld	t1,48(sp)
    LREG x7, 7*REGBYTES(sp)
    800001b2:	73e2                	ld	t2,56(sp)
    LREG x8, 8*REGBYTES(sp)
    800001b4:	6406                	ld	s0,64(sp)
    LREG x9, 9*REGBYTES(sp)
    800001b6:	64a6                	ld	s1,72(sp)
    LREG x10, 10*REGBYTES(sp)
    800001b8:	6546                	ld	a0,80(sp)
    LREG x11, 11*REGBYTES(sp)
    800001ba:	65e6                	ld	a1,88(sp)
    LREG x12, 12*REGBYTES(sp)
    800001bc:	7606                	ld	a2,96(sp)
    LREG x13, 13*REGBYTES(sp)
    800001be:	76a6                	ld	a3,104(sp)
    LREG x14, 14*REGBYTES(sp)
    800001c0:	7746                	ld	a4,112(sp)
    LREG x15, 15*REGBYTES(sp)
    800001c2:	77e6                	ld	a5,120(sp)
    LREG x16, 16*REGBYTES(sp)
    800001c4:	680a                	ld	a6,128(sp)
    LREG x17, 17*REGBYTES(sp)
    800001c6:	68aa                	ld	a7,136(sp)
    LREG x18, 18*REGBYTES(sp)
    800001c8:	694a                	ld	s2,144(sp)
    LREG x19, 19*REGBYTES(sp)
    800001ca:	69ea                	ld	s3,152(sp)
    LREG x20, 20*REGBYTES(sp)
    800001cc:	7a0a                	ld	s4,160(sp)
    LREG x21, 21*REGBYTES(sp)
    800001ce:	7aaa                	ld	s5,168(sp)
    LREG x22, 22*REGBYTES(sp)
    800001d0:	7b4a                	ld	s6,176(sp)
    LREG x23, 23*REGBYTES(sp)
    800001d2:	7bea                	ld	s7,184(sp)
    LREG x24, 24*REGBYTES(sp)
    800001d4:	6c0e                	ld	s8,192(sp)
    LREG x25, 25*REGBYTES(sp)
    800001d6:	6cae                	ld	s9,200(sp)
    LREG x26, 26*REGBYTES(sp)
    800001d8:	6d4e                	ld	s10,208(sp)
    LREG x27, 27*REGBYTES(sp)
    800001da:	6dee                	ld	s11,216(sp)
    LREG x28, 28*REGBYTES(sp)
    800001dc:	7e0e                	ld	t3,224(sp)
    LREG x29, 29*REGBYTES(sp)
    800001de:	7eae                	ld	t4,232(sp)
    LREG x30, 30*REGBYTES(sp)
    800001e0:	7f4e                	ld	t5,240(sp)
    LREG x31, 31*REGBYTES(sp)
    800001e2:	7fee                	ld	t6,248(sp)
    /* Restore sp last */
    LREG x2, 2*REGBYTES(sp)
    800001e4:	6142                	ld	sp,16(sp)

    mret
    800001e6:	30200073          	mret

00000000800001ea <_start_main>:
    .endm

    .global _start_main
    .type _start_main, @function
_start_main:
    BARRIER_PASS __boot_sync
    800001ea:	52fd                	li	t0,-1
    800001ec:	0110000f          	fence	w,w
    800001f0:	ca51a823          	sw	t0,-848(gp) # 800033b0 <__boot_sync>
    ENTER main
    800001f4:	4505                	li	a0,1
    800001f6:	00003597          	auipc	a1,0x3
    800001fa:	c0258593          	addi	a1,a1,-1022 # 80002df8 <argv>
    800001fe:	8101b603          	ld	a2,-2032(gp) # 80002f10 <environ>
    80000202:	02a000ef          	jal	ra,8000022c <main>
    80000206:	41c0206f          	j	80002622 <exit>

000000008000020a <_start_secondary>:

    .global _start_secondary
    .type _start_secondary, @function
_start_secondary:
    /* Synchronize secondary harts */
    BARRIER_WAIT __boot_sync
    8000020a:	[38;5;140m/[38;5;140m-[38;5;140m>[0m cb01a283          	lw	t0,-848(gp) # 800033b0 <__boot_sync>
    8000020e:	[38;5;140m\[38;5;140m-[38;5;140m-[0m fe028ee3          	beqz	t0,8000020a <_start_secondary>
    80000212:	    0220000f          	fence	r,r
    ENTER __main
    80000216:	    4505                	li	a0,1
    80000218:	    00003597          	auipc	a1,0x3
    8000021c:	    be058593          	addi	a1,a1,-1056 # 80002df8 <argv>
    80000220:	    8101b603          	ld	a2,-2032(gp) # 80002f10 <environ>
    80000224:	    0ec000ef          	jal	ra,80000310 <__main>
    80000228:	    3fa0206f          	j	80002622 <exit>

000000008000022c <main>:
    8000022c:	1141                	addi	sp,sp,-16
    8000022e:	e406                	sd	ra,8(sp)
    80000230:	0e0000ef          	jal	ra,80000310 <__main>
    80000234:	60a2                	ld	ra,8(sp)
    80000236:	4501                	li	a0,0
    80000238:	0141                	addi	sp,sp,16
    8000023a:	8082                	ret

000000008000023c <start_logger>:
    8000023c:	6789                	lui	a5,0x2
    8000023e:	4705                	li	a4,1
    80000240:	c398                	sw	a4,0(a5)
    80000242:	8082                	ret

0000000080000244 <stop_logger>:
    80000244:	6789                	lui	a5,0x2
    80000246:	4705                	li	a4,1
    80000248:	c3d8                	sw	a4,4(a5)
    8000024a:	8082                	ret

000000008000024c <print_log>:
    8000024c:	       711d                	addi	sp,sp,-96
    8000024e:	       6789                	lui	a5,0x2
    80000250:	       e0ca                	sd	s2,64(sp)
    80000252:	       00c7a903          	lw	s2,12(a5) # 200c <__stack_align+0x1ffc>
    80000256:	       ec86                	sd	ra,88(sp)
    80000258:	       e8a2                	sd	s0,80(sp)
    8000025a:	       e4a6                	sd	s1,72(sp)
    8000025c:	       fc4e                	sd	s3,56(sp)
    8000025e:	[38;5;176m/[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[0m 05205963          	blez	s2,800002b0 <print_log+0x64>
    80000262:	[38;5;176m|[0m      4481                	li	s1,0
    80000264:	[38;5;176m|[0m      6409                	lui	s0,0x2
    80000266:	[38;5;176m|[0m      00002997          	auipc	s3,0x2
    8000026a:	[38;5;176m|[0m      5ba98993          	addi	s3,s3,1466 # 80002820 <__tbss_end>
    8000026e:	[38;5;176m|[0m  [38;5;196m/[38;5;196m-[38;5;196m>[0m 0004879b          	sext.w	a5,s1
    80000272:	[38;5;176m|[0m  [38;5;196m|[0m   c41c                	sw	a5,8(s0)
    80000274:	[38;5;176m|[0m  [38;5;196m|[0m   680c                	ld	a1,16(s0)
    80000276:	[38;5;176m|[0m  [38;5;196m|[0m   6c10                	ld	a2,24(s0)
    80000278:	[38;5;176m|[0m  [38;5;196m|[0m   7014                	ld	a3,32(s0)
    8000027a:	[38;5;176m|[0m  [38;5;196m|[0m   7418                	ld	a4,40(s0)
    8000027c:	[38;5;176m|[0m  [38;5;196m|[0m   781c                	ld	a5,48(s0)
    8000027e:	[38;5;176m|[0m  [38;5;196m|[0m   03843803          	ld	a6,56(s0) # 2038 <__stack_align+0x2028>
    80000282:	[38;5;176m|[0m  [38;5;196m|[0m   04043883          	ld	a7,64(s0)
    80000286:	[38;5;176m|[0m  [38;5;196m|[0m   6428                	ld	a0,72(s0)
    80000288:	[38;5;176m|[0m  [38;5;196m|[0m   05043303          	ld	t1,80(s0)
    8000028c:	[38;5;176m|[0m  [38;5;196m|[0m   05843e03          	ld	t3,88(s0)
    80000290:	[38;5;176m|[0m  [38;5;196m|[0m   06043f03          	ld	t5,96(s0)
    80000294:	[38;5;176m|[0m  [38;5;196m|[0m   06843e83          	ld	t4,104(s0)
    80000298:	[38;5;176m|[0m  [38;5;196m|[0m   2485                	addiw	s1,s1,1
    8000029a:	[38;5;176m|[0m  [38;5;196m|[0m   e02a                	sd	a0,0(sp)
    8000029c:	[38;5;176m|[0m  [38;5;196m|[0m   ec7a                	sd	t5,24(sp)
    8000029e:	[38;5;176m|[0m  [38;5;196m|[0m   f076                	sd	t4,32(sp)
    800002a0:	[38;5;176m|[0m  [38;5;196m|[0m   e872                	sd	t3,16(sp)
    800002a2:	[38;5;176m|[0m  [38;5;196m|[0m   e41a                	sd	t1,8(sp)
    800002a4:	[38;5;176m|[0m  [38;5;196m|[0m   2601                	sext.w	a2,a2
    800002a6:	[38;5;176m|[0m  [38;5;196m|[0m   854e                	mv	a0,s3
    800002a8:	[38;5;176m|[0m  [38;5;196m|[0m   31d000ef          	jal	ra,80000dc4 <iprintf>
    800002ac:	[38;5;176m|[0m  [38;5;196m\[38;5;196m-[38;5;196m-[0m fc9911e3          	bne	s2,s1,8000026e <print_log+0x22>
    800002b0:	[38;5;176m\[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m>[0m 60e6                	ld	ra,88(sp)
    800002b2:	       6446                	ld	s0,80(sp)
    800002b4:	       64a6                	ld	s1,72(sp)
    800002b6:	       6906                	ld	s2,64(sp)
    800002b8:	       79e2                	ld	s3,56(sp)
    800002ba:	       6125                	addi	sp,sp,96
    800002bc:	       8082                	ret

00000000800002be <barrier>:
    800002be:	       0ff0000f          	fence
    800002c2:	       00022703          	lw	a4,0(tp) # 0 <__boot_hart>
    800002c6:	       82c18693          	addi	a3,gp,-2004 # 80002f2c <count.1>
    800002ca:	       4605                	li	a2,1
    800002cc:	       00173713          	seqz	a4,a4
    800002d0:	       00e22023          	sw	a4,0(tp) # 0 <__boot_hart>
    800002d4:	       0f50000f          	fence	iorw,ow
    800002d8:	       04c6a72f          	amoadd.w.aq	a4,a2,(a3)
    800002dc:	       2701                	sext.w	a4,a4
    800002de:	       4685                	li	a3,1
    800002e0:	[38;5;153m/[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[0m 00d70c63          	beq	a4,a3,800002f8 <barrier+0x3a>
    800002e4:	[38;5;153m|[0m      00022683          	lw	a3,0(tp) # 0 <__boot_hart>
    800002e8:	[38;5;153m|[0m      82818713          	addi	a4,gp,-2008 # 80002f28 <sense.0>
    800002ec:	[38;5;153m|[0m  [38;5;230m/[38;5;230m-[38;5;230m>[0m 431c                	lw	a5,0(a4)
    800002ee:	[38;5;153m|[0m  [38;5;230m\[38;5;230m-[38;5;230m-[0m fed79fe3          	bne	a5,a3,800002ec <barrier+0x2e>
    800002f2:	[38;5;153m|[0m      0ff0000f          	fence
    800002f6:	[38;5;153m|[0m      8082                	ret
    800002f8:	[38;5;153m\[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m>[0m 00022783          	lw	a5,0(tp) # 0 <__boot_hart>
    800002fc:	       8201a623          	sw	zero,-2004(gp) # 80002f2c <count.1>
    80000300:	       82f1a423          	sw	a5,-2008(gp) # 80002f28 <sense.0>
    80000304:	       0ff0000f          	fence
    80000308:	       8082                	ret

000000008000030a <read_cycles>:
    8000030a:	c0002573          	rdcycle	a0
    8000030e:	8082                	ret

0000000080000310 <__main>:
    80000310:	       1101                	addi	sp,sp,-32
    80000312:	       ec06                	sd	ra,24(sp)
    80000314:	       e822                	sd	s0,16(sp)
    80000316:	       e426                	sd	s1,8(sp)
    80000318:	       e04a                	sd	s2,0(sp)
    8000031a:	       f1402473          	csrr	s0,mhartid
    8000031e:	       4785                	li	a5,1
    80000320:	[38;5;200m/[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[0m 0087f363          	bgeu	a5,s0,80000326 <__main+0x16>
    80000324:	[38;5;200m|[0m  [38;5;161m/[38;5;161m-[38;5;161m-[0m a001                	j	80000324 <__main+0x14>
    80000326:	[38;5;200m\[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m>[0m f99ff0ef          	jal	ra,800002be <barrier>
    8000032a:	   [38;5;137m/[38;5;137m-[38;5;137m-[0m e839                	bnez	s0,80000380 <__main+0x70>
    8000032c:	   [38;5;137m|[0m   f11ff0ef          	jal	ra,8000023c <start_logger>
    80000330:	   [38;5;137m|[0m   f8fff0ef          	jal	ra,800002be <barrier>
    80000334:	   [38;5;137m|[0m   c00024f3          	rdcycle	s1
    80000338:	   [38;5;137m|[0m   46c000ef          	jal	ra,800007a4 <task_0>
    8000033c:	   [38;5;137m|[0m   842a                	mv	s0,a0
    8000033e:	   [38;5;137m|[0m   c0002973          	rdcycle	s2
    80000342:	   [38;5;137m|[0m   f7dff0ef          	jal	ra,800002be <barrier>
    80000346:	   [38;5;137m|[0m   effff0ef          	jal	ra,80000244 <stop_logger>
    8000034a:	   [38;5;137m|[0m   f75ff0ef          	jal	ra,800002be <barrier>
    8000034e:	   [38;5;137m|[0m   85a2                	mv	a1,s0
    80000350:	   [38;5;137m|[0m   00002517          	auipc	a0,0x2
    80000354:	   [38;5;137m|[0m   51050513          	addi	a0,a0,1296 # 80002860 <__tbss_end+0x40>
    80000358:	   [38;5;137m|[0m   26d000ef          	jal	ra,80000dc4 <iprintf>
    8000035c:	   [38;5;137m|[0m   409905bb          	subw	a1,s2,s1
    80000360:	   [38;5;137m|[0m   00002517          	auipc	a0,0x2
    80000364:	   [38;5;137m|[0m   50850513          	addi	a0,a0,1288 # 80002868 <__tbss_end+0x48>
    80000368:	   [38;5;137m|[0m   25d000ef          	jal	ra,80000dc4 <iprintf>
    8000036c:	   [38;5;137m|[0m   f53ff0ef          	jal	ra,800002be <barrier>
    80000370:	   [38;5;137m|[0m   f4fff0ef          	jal	ra,800002be <barrier>
    80000374:	   [38;5;137m|[0m   6442                	ld	s0,16(sp)
    80000376:	   [38;5;137m|[0m   60e2                	ld	ra,24(sp)
    80000378:	   [38;5;137m|[0m   64a2                	ld	s1,8(sp)
    8000037a:	   [38;5;137m|[0m   6902                	ld	s2,0(sp)
    8000037c:	   [38;5;137m|[0m   6105                	addi	sp,sp,32
    8000037e:	   [38;5;137m|[0m   b5f9                	j	8000024c <print_log>
    80000380:	   [38;5;137m\[38;5;137m-[38;5;137m>[0m f3fff0ef          	jal	ra,800002be <barrier>
    80000384:	       c00024f3          	rdcycle	s1
    80000388:	       101000ef          	jal	ra,80000c88 <task_1>
    8000038c:	       842a                	mv	s0,a0
    8000038e:	       c0002973          	rdcycle	s2
    80000392:	       f2dff0ef          	jal	ra,800002be <barrier>
    80000396:	       f29ff0ef          	jal	ra,800002be <barrier>
    8000039a:	       f25ff0ef          	jal	ra,800002be <barrier>
    8000039e:	       85a2                	mv	a1,s0
    800003a0:	       00002517          	auipc	a0,0x2
    800003a4:	       4b050513          	addi	a0,a0,1200 # 80002850 <__tbss_end+0x30>
    800003a8:	       21d000ef          	jal	ra,80000dc4 <iprintf>
    800003ac:	       409905bb          	subw	a1,s2,s1
    800003b0:	       00002517          	auipc	a0,0x2
    800003b4:	       4a850513          	addi	a0,a0,1192 # 80002858 <__tbss_end+0x38>
    800003b8:	       20d000ef          	jal	ra,80000dc4 <iprintf>
    800003bc:	       f03ff0ef          	jal	ra,800002be <barrier>
    800003c0:	   [38;5;231m/[38;5;231m-[38;5;231m-[0m a001                	j	800003c0 <__main+0xb0>

00000000800003c2 <bitcount_bitcount>:
    800003c2:	555557b7          	lui	a5,0x55555
    800003c6:	55578793          	addi	a5,a5,1365 # 55555555 <__heap_size+0x55535555>
    800003ca:	40155713          	srai	a4,a0,0x1
    800003ce:	8f7d                	and	a4,a4,a5
    800003d0:	8d7d                	and	a0,a0,a5
    800003d2:	972a                	add	a4,a4,a0
    800003d4:	333336b7          	lui	a3,0x33333
    800003d8:	33368693          	addi	a3,a3,819 # 33333333 <__heap_size+0x33313333>
    800003dc:	40275793          	srai	a5,a4,0x2
    800003e0:	8ff5                	and	a5,a5,a3
    800003e2:	8f75                	and	a4,a4,a3
    800003e4:	97ba                	add	a5,a5,a4
    800003e6:	0f0f16b7          	lui	a3,0xf0f1
    800003ea:	f0f68693          	addi	a3,a3,-241 # f0f0f0f <__heap_size+0xf0d0f0f>
    800003ee:	4047d713          	srai	a4,a5,0x4
    800003f2:	8f75                	and	a4,a4,a3
    800003f4:	8ff5                	and	a5,a5,a3
    800003f6:	973e                	add	a4,a4,a5
    800003f8:	00ff06b7          	lui	a3,0xff0
    800003fc:	0ff68693          	addi	a3,a3,255 # ff00ff <__heap_size+0xfd00ff>
    80000400:	40875793          	srai	a5,a4,0x8
    80000404:	8ff5                	and	a5,a5,a3
    80000406:	8f75                	and	a4,a4,a3
    80000408:	97ba                	add	a5,a5,a4
    8000040a:	4107d513          	srai	a0,a5,0x10
    8000040e:	17c2                	slli	a5,a5,0x30
    80000410:	93c1                	srli	a5,a5,0x30
    80000412:	953e                	add	a0,a0,a5
    80000414:	8082                	ret

0000000080000416 <bitcount_bit_count>:
    80000416:	    87aa                	mv	a5,a0
    80000418:	    4501                	li	a0,0
    8000041a:	[38;5;171m/[38;5;171m-[38;5;171m-[0m e391                	bnez	a5,8000041e <bitcount_bit_count+0x8>
    8000041c:	[38;5;171m|[0m   8082                	ret
    8000041e:	[38;5;171m>[38;5;171m-[38;5;171m>[0m fff78713          	addi	a4,a5,-1
    80000422:	[38;5;171m|[0m   8ff9                	and	a5,a5,a4
    80000424:	[38;5;171m|[0m   2505                	addiw	a0,a0,1
    80000426:	[38;5;171m\[38;5;171m-[38;5;171m-[0m ffe5                	bnez	a5,8000041e <bitcount_bit_count+0x8>
    80000428:	    8082                	ret

000000008000042a <bitcount_init3>:
    8000042a:	       716d                	addi	sp,sp,-272
    8000042c:	       c602                	sw	zero,12(sp)
    8000042e:	       00002797          	auipc	a5,0x2
    80000432:	       44278793          	addi	a5,a5,1090 # 80002870 <__tbss_end+0x50>
    80000436:	       0818                	addi	a4,sp,16
    80000438:	       00002817          	auipc	a6,0x2
    8000043c:	       53880813          	addi	a6,a6,1336 # 80002970 <__tbss_end+0x150>
    80000440:	   [38;5;145m/[38;5;145m-[38;5;145m>[0m 6388                	ld	a0,0(a5)
    80000442:	   [38;5;145m|[0m   678c                	ld	a1,8(a5)
    80000444:	   [38;5;145m|[0m   6b90                	ld	a2,16(a5)
    80000446:	   [38;5;145m|[0m   6f94                	ld	a3,24(a5)
    80000448:	   [38;5;145m|[0m   e308                	sd	a0,0(a4)
    8000044a:	   [38;5;145m|[0m   e70c                	sd	a1,8(a4)
    8000044c:	   [38;5;145m|[0m   eb10                	sd	a2,16(a4)
    8000044e:	   [38;5;145m|[0m   ef14                	sd	a3,24(a4)
    80000450:	   [38;5;145m|[0m   02078793          	addi	a5,a5,32
    80000454:	   [38;5;145m|[0m   02070713          	addi	a4,a4,32
    80000458:	   [38;5;145m\[38;5;145m-[38;5;145m-[0m ff0794e3          	bne	a5,a6,80000440 <bitcount_init3+0x16>
    8000045c:	       c602                	sw	zero,12(sp)
    8000045e:	       4732                	lw	a4,12(sp)
    80000460:	       0ff00793          	li	a5,255
    80000464:	[38;5;141m/-----[0m 02e7c663          	blt	a5,a4,80000490 <bitcount_init3+0x66>
    80000468:	[38;5;141m|[0m      8b018593          	addi	a1,gp,-1872 # 80002fb0 <bitcount_bits>
    8000046c:	[38;5;141m|[0m      0ff00613          	li	a2,255
    80000470:	[38;5;141m|[0m  [38;5;156m/->[0m 46b2                	lw	a3,12(sp)
    80000472:	[38;5;141m|[0m  [38;5;156m|[0m   47b2                	lw	a5,12(sp)
    80000474:	[38;5;141m|[0m  [38;5;156m|[0m   4732                	lw	a4,12(sp)
    80000476:	[38;5;141m|[0m  [38;5;156m|[0m   11068693          	addi	a3,a3,272
    8000047a:	[38;5;141m|[0m  [38;5;156m|[0m   968a                	add	a3,a3,sp
    8000047c:	[38;5;141m|[0m  [38;5;156m|[0m   2705                	addiw	a4,a4,1
    8000047e:	[38;5;141m|[0m  [38;5;156m|[0m   f006c683          	lbu	a3,-256(a3)
    80000482:	[38;5;141m|[0m  [38;5;156m|[0m   c63a                	sw	a4,12(sp)
    80000484:	[38;5;141m|[0m  [38;5;156m|[0m   4732                	lw	a4,12(sp)
    80000486:	[38;5;141m|[0m  [38;5;156m|[0m   97ae                	add	a5,a5,a1
    80000488:	[38;5;141m|[0m  [38;5;156m|[0m   00d78023          	sb	a3,0(a5)
    8000048c:	[38;5;141m|[0m  [38;5;156m\--[0m fee652e3          	bge	a2,a4,80000470 <bitcount_init3+0x46>
    80000490:	[38;5;141m\---->[0m 6151                	addi	sp,sp,272
    80000492:	       8082                	ret

0000000080000494 <bitcount_ntbl_bitcount>:
    80000494:	00455793          	srli	a5,a0,0x4
    80000498:	8b018693          	addi	a3,gp,-1872 # 80002fb0 <bitcount_bits>
    8000049c:	00f57593          	andi	a1,a0,15
    800004a0:	00855713          	srli	a4,a0,0x8
    800004a4:	8bbd                	andi	a5,a5,15
    800004a6:	95b6                	add	a1,a1,a3
    800004a8:	97b6                	add	a5,a5,a3
    800004aa:	00c55613          	srli	a2,a0,0xc
    800004ae:	8b3d                	andi	a4,a4,15
    800004b0:	0005ce03          	lbu	t3,0(a1)
    800004b4:	9736                	add	a4,a4,a3
    800004b6:	0007c783          	lbu	a5,0(a5)
    800004ba:	01055593          	srli	a1,a0,0x10
    800004be:	8a3d                	andi	a2,a2,15
    800004c0:	00074303          	lbu	t1,0(a4)
    800004c4:	9636                	add	a2,a2,a3
    800004c6:	01455713          	srli	a4,a0,0x14
    800004ca:	89bd                	andi	a1,a1,15
    800004cc:	00064883          	lbu	a7,0(a2)
    800004d0:	95b6                	add	a1,a1,a3
    800004d2:	01855613          	srli	a2,a0,0x18
    800004d6:	8b3d                	andi	a4,a4,15
    800004d8:	0005c803          	lbu	a6,0(a1)
    800004dc:	9736                	add	a4,a4,a3
    800004de:	01c787bb          	addw	a5,a5,t3
    800004e2:	8a3d                	andi	a2,a2,15
    800004e4:	00074583          	lbu	a1,0(a4)
    800004e8:	006787bb          	addw	a5,a5,t1
    800004ec:	9636                	add	a2,a2,a3
    800004ee:	01c5571b          	srliw	a4,a0,0x1c
    800004f2:	00064603          	lbu	a2,0(a2)
    800004f6:	011787bb          	addw	a5,a5,a7
    800004fa:	00e68533          	add	a0,a3,a4
    800004fe:	00054503          	lbu	a0,0(a0)
    80000502:	010787bb          	addw	a5,a5,a6
    80000506:	9fad                	addw	a5,a5,a1
    80000508:	9fb1                	addw	a5,a5,a2
    8000050a:	9d3d                	addw	a0,a0,a5
    8000050c:	8082                	ret

000000008000050e <bitcount_BW_btbl_bitcount>:
    8000050e:	00855693          	srli	a3,a0,0x8
    80000512:	8b018793          	addi	a5,gp,-1872 # 80002fb0 <bitcount_bits>
    80000516:	0ff57713          	zext.b	a4,a0
    8000051a:	0ff6f693          	zext.b	a3,a3
    8000051e:	96be                	add	a3,a3,a5
    80000520:	0185561b          	srliw	a2,a0,0x18
    80000524:	973e                	add	a4,a4,a5
    80000526:	8141                	srli	a0,a0,0x10
    80000528:	0006c583          	lbu	a1,0(a3)
    8000052c:	00074703          	lbu	a4,0(a4)
    80000530:	00c786b3          	add	a3,a5,a2
    80000534:	0ff57513          	zext.b	a0,a0
    80000538:	0006c683          	lbu	a3,0(a3)
    8000053c:	97aa                	add	a5,a5,a0
    8000053e:	0007c503          	lbu	a0,0(a5)
    80000542:	00b707bb          	addw	a5,a4,a1
    80000546:	9fb5                	addw	a5,a5,a3
    80000548:	9d3d                	addw	a0,a0,a5
    8000054a:	8082                	ret

000000008000054c <bitcount_AR_btbl_bitcount>:
    8000054c:	00855693          	srli	a3,a0,0x8
    80000550:	8b018793          	addi	a5,gp,-1872 # 80002fb0 <bitcount_bits>
    80000554:	0ff57613          	zext.b	a2,a0
    80000558:	01055713          	srli	a4,a0,0x10
    8000055c:	0ff6f693          	zext.b	a3,a3
    80000560:	963e                	add	a2,a2,a5
    80000562:	96be                	add	a3,a3,a5
    80000564:	0ff77713          	zext.b	a4,a4
    80000568:	00064603          	lbu	a2,0(a2)
    8000056c:	0006c683          	lbu	a3,0(a3)
    80000570:	973e                	add	a4,a4,a5
    80000572:	0185551b          	srliw	a0,a0,0x18
    80000576:	00074703          	lbu	a4,0(a4)
    8000057a:	97aa                	add	a5,a5,a0
    8000057c:	0007c503          	lbu	a0,0(a5)
    80000580:	00c687bb          	addw	a5,a3,a2
    80000584:	9fb9                	addw	a5,a5,a4
    80000586:	9d3d                	addw	a0,a0,a5
    80000588:	8082                	ret

000000008000058a <bitcount_bit_shifter>:
    8000058a:	             87aa                	mv	a5,a0
    8000058c:	[38;5;157m/[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[0m cd11                	beqz	a0,800005a8 <bitcount_bit_shifter+0x1e>
    8000058e:	[38;5;157m|[0m            04000713          	li	a4,64
    80000592:	[38;5;157m|[0m            4501                	li	a0,0
    80000594:	[38;5;157m|[0m        [38;5;229m/[38;5;229m-[38;5;229m-[0m a011                	j	80000598 <bitcount_bit_shifter+0xe>
    80000596:	[38;5;157m|[0m  [38;5;186m/--[38;5;151m/[38;5;151m-[38;5;151m-[38;5;229m|[38;5;151m-[38;5;186mX[0m cb01                	beqz	a4,800005a6 <bitcount_bit_shifter+0x1c>
    80000598:	[38;5;157m|[0m  [38;5;186m|[0m  [38;5;151m|[0m  [38;5;229m\[38;5;229m-[38;5;229m>[0m 0017f693          	andi	a3,a5,1
    8000059c:	[38;5;157m|[0m  [38;5;186m|[0m  [38;5;151m|[0m      8785                	srai	a5,a5,0x1
    8000059e:	[38;5;157m|[0m  [38;5;186m|[0m  [38;5;151m|[0m      377d                	addiw	a4,a4,-1
    800005a0:	[38;5;157m|[0m  [38;5;186m|[0m  [38;5;151m|[0m      9d35                	addw	a0,a0,a3
    800005a2:	[38;5;157m|[0m  [38;5;186m|[0m  [38;5;151m\[38;5;151m-[38;5;151m-[38;5;151m-[38;5;151m-[38;5;151m-[0m fbf5                	bnez	a5,80000596 <bitcount_bit_shifter+0xc>
    800005a4:	[38;5;157m|[0m  [38;5;186m|[0m         8082                	ret
    800005a6:	[38;5;157m|[0m  [38;5;186m\------->[0m 8082                	ret
    800005a8:	[38;5;157m\[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m-[38;5;157m>[0m 4501                	li	a0,0
    800005aa:	             8082                	ret

00000000800005ac <bitcount_return>:
    800005ac:	8381b503          	ld	a0,-1992(gp) # 80002f38 <bitcount_n>
    800005b0:	bb950513          	addi	a0,a0,-1095
    800005b4:	00a03533          	snez	a0,a0
    800005b8:	8082                	ret

00000000800005ba <bitcount_init>:
    800005ba:	4785                	li	a5,1
    800005bc:	1141                	addi	sp,sp,-16
    800005be:	84f1b823          	sd	a5,-1968(gp) # 80002f50 <bitcount_randseed>
    800005c2:	47a9                	li	a5,10
    800005c4:	e406                	sd	ra,8(sp)
    800005c6:	82f1a823          	sw	a5,-2000(gp) # 80002f30 <bitcount_iterations>
    800005ca:	8201bc23          	sd	zero,-1992(gp) # 80002f38 <bitcount_n>
    800005ce:	e5dff0ef          	jal	ra,8000042a <bitcount_init3>
    800005d2:	60a2                	ld	ra,8(sp)
    800005d4:	0141                	addi	sp,sp,16
    800005d6:	a419                	j	800007dc <bitcount_init4>

00000000800005d8 <bitcount_random>:
    800005d8:	    85018693          	addi	a3,gp,-1968 # 80002f50 <bitcount_randseed>
    800005dc:	    629c                	ld	a5,0(a3)
    800005de:	    677d                	lui	a4,0x1f
    800005e0:	    31d70713          	addi	a4,a4,797 # 1f31d <__stack_size+0x1731d>
    800005e4:	    02e7e533          	rem	a0,a5,a4
    800005e8:	    02e7c7b3          	div	a5,a5,a4
    800005ec:	    6711                	lui	a4,0x4
    800005ee:	    1a770713          	addi	a4,a4,423 # 41a7 <__stack_align+0x4197>
    800005f2:	    02e50533          	mul	a0,a0,a4
    800005f6:	    777d                	lui	a4,0xfffff
    800005f8:	    4ec70713          	addi	a4,a4,1260 # fffffffffffff4ec <__heap_end+0xffffffff7ffdb4ec>
    800005fc:	    02e787b3          	mul	a5,a5,a4
    80000600:	    953e                	add	a0,a0,a5
    80000602:	[38;5;226m/--[0m 00a04763          	bgtz	a0,80000610 <bitcount_random+0x38>
    80000606:	[38;5;226m|[0m   800007b7          	lui	a5,0x80000
    8000060a:	[38;5;226m|[0m   fff7c793          	not	a5,a5
    8000060e:	[38;5;226m|[0m   953e                	add	a0,a0,a5
    80000610:	[38;5;226m\->[0m e288                	sd	a0,0(a3)
    80000612:	    8082                	ret

0000000080000614 <bitcount_main>:
    80000614:	                      7119                	addi	sp,sp,-128
    80000616:	                      f862                	sd	s8,48(sp)
    80000618:	                      7c7d                	lui	s8,0xfffff
    8000061a:	                      4ecc0793          	addi	a5,s8,1260 # fffffffffffff4ec <__heap_end+0xffffffff7ffdb4ec>
    8000061e:	                      e03e                	sd	a5,0(sp)
    80000620:	                      800007b7          	lui	a5,0x80000
    80000624:	                      e0da                	sd	s6,64(sp)
    80000626:	                      f466                	sd	s9,40(sp)
    80000628:	                      6b7d                	lui	s6,0x1f
    8000062a:	                      6c91                	lui	s9,0x4
    8000062c:	                      fff7c793          	not	a5,a5
    80000630:	                      f4a6                	sd	s1,104(sp)
    80000632:	                      f0ca                	sd	s2,96(sp)
    80000634:	                      ecce                	sd	s3,88(sp)
    80000636:	                      e4d6                	sd	s5,72(sp)
    80000638:	                      fc5e                	sd	s7,56(sp)
    8000063a:	                      f06a                	sd	s10,32(sp)
    8000063c:	                      fc86                	sd	ra,120(sp)
    8000063e:	                      f8a2                	sd	s0,112(sp)
    80000640:	                      e8d2                	sd	s4,80(sp)
    80000642:	                      ec6e                	sd	s11,24(sp)
    80000644:	                      4481                	li	s1,0
    80000646:	                      85018b93          	addi	s7,gp,-1968 # 80002f50 <bitcount_randseed>
    8000064a:	                      84018d13          	addi	s10,gp,-1984 # 80002f40 <bitcount_seed>
    8000064e:	                      83018913          	addi	s2,gp,-2000 # 80002f30 <bitcount_iterations>
    80000652:	                      31db0b13          	addi	s6,s6,797 # 1f31d <__stack_size+0x1731d>
    80000656:	                      1a7c8c93          	addi	s9,s9,423 # 41a7 <__stack_align+0x4197>
    8000065a:	                      e43e                	sd	a5,8(sp)
    8000065c:	                      84818a93          	addi	s5,gp,-1976 # 80002f48 <bitcount_res>
    80000660:	                      00002997          	auipc	s3,0x2
    80000664:	                      31098993          	addi	s3,s3,784 # 80002970 <__tbss_end+0x150>
    80000668:	            [38;5;209m/------->[0m 000bb783          	ld	a5,0(s7)
    8000066c:	            [38;5;209m|[0m         6702                	ld	a4,0(sp)
    8000066e:	            [38;5;209m|[0m         0367e533          	rem	a0,a5,s6
    80000672:	            [38;5;209m|[0m         0367c7b3          	div	a5,a5,s6
    80000676:	            [38;5;209m|[0m         03950533          	mul	a0,a0,s9
    8000067a:	            [38;5;209m|[0m         02e787b3          	mul	a5,a5,a4
    8000067e:	            [38;5;209m|[0m         953e                	add	a0,a0,a5
    80000680:	            [38;5;209m|[0m     [38;5;217m/--[0m 00a04463          	bgtz	a0,80000688 <bitcount_main+0x74>
    80000684:	            [38;5;209m|[0m     [38;5;217m|[0m   67a2                	ld	a5,8(sp)
    80000686:	            [38;5;209m|[0m     [38;5;217m|[0m   953e                	add	a0,a0,a5
    80000688:	            [38;5;209m|[0m     [38;5;217m\->[0m 00092783          	lw	a5,0(s2)
    8000068c:	            [38;5;209m|[0m         00249413          	slli	s0,s1,0x2
    80000690:	            [38;5;209m|[0m         00abb023          	sd	a0,0(s7)
    80000694:	            [38;5;209m|[0m         00ad3023          	sd	a0,0(s10)
    80000698:	            [38;5;209m|[0m         4d81                	li	s11,0
    8000069a:	            [38;5;209m|[0m         83818c13          	addi	s8,gp,-1992 # 80002f38 <bitcount_n>
    8000069e:	            [38;5;209m|[0m         4a1d                	li	s4,7
    800006a0:	            [38;5;209m|[0m         944e                	add	s0,s0,s3
    800006a2:	            [38;5;209m|[0m  [38;5;156m/[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[0m cb95                	beqz	a5,800006d6 <bitcount_main+0xc2>
    800006a4:	[38;5;158m/-----------[38;5;209m|[38;5;158m--[38;5;156m|[38;5;158m--[38;5;189m/[38;5;189m-[38;5;158mX[0m 0e9a6363          	bltu	s4,s1,8000078a <bitcount_main+0x176>
    800006a8:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   401c                	lw	a5,0(s0)
    800006aa:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   97ce                	add	a5,a5,s3
    800006ac:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   8782                	jr	a5
    800006ae:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   e9fff0ef          	jal	ra,8000054c <bitcount_AR_btbl_bitcount>
    800006b2:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   87aa                	mv	a5,a0
    800006b4:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   000d3503          	ld	a0,0(s10)
    800006b8:	[38;5;158m|[0m           [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   00faa023          	sw	a5,0(s5)
    800006bc:	[38;5;158m|[0m  [38;5;151m/--------[38;5;209m|[38;5;151m--[38;5;156m|[38;5;151m--[38;5;189m|[38;5;151m->[0m 000c3603          	ld	a2,0(s8)
    800006c0:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   00092583          	lw	a1,0(s2)
    800006c4:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   0535                	addi	a0,a0,13
    800006c6:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   97b2                	add	a5,a5,a2
    800006c8:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   00fc3023          	sd	a5,0(s8)
    800006cc:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   2d85                	addiw	s11,s11,1
    800006ce:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m|[0m   00ad3023          	sd	a0,0(s10)
    800006d2:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m|[0m  [38;5;189m\[38;5;189m-[38;5;189m-[0m fcbde9e3          	bltu	s11,a1,800006a4 <bitcount_main+0x90>
    800006d6:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m  [38;5;156m\[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m>[0m 2485                	addiw	s1,s1,1
    800006d8:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m|[0m         47a1                	li	a5,8
    800006da:	[38;5;158m|[0m  [38;5;151m|[0m        [38;5;209m\--------[0m f8f497e3          	bne	s1,a5,80000668 <bitcount_main+0x54>
    800006de:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m/[38;5;231m-[38;5;231m>[0m 70e6                	ld	ra,120(sp)
    800006e0:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7446                	ld	s0,112(sp)
    800006e2:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   74a6                	ld	s1,104(sp)
    800006e4:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7906                	ld	s2,96(sp)
    800006e6:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   69e6                	ld	s3,88(sp)
    800006e8:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   6a46                	ld	s4,80(sp)
    800006ea:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   6aa6                	ld	s5,72(sp)
    800006ec:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   6b06                	ld	s6,64(sp)
    800006ee:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7be2                	ld	s7,56(sp)
    800006f0:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7c42                	ld	s8,48(sp)
    800006f2:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7ca2                	ld	s9,40(sp)
    800006f4:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   7d02                	ld	s10,32(sp)
    800006f6:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   6de2                	ld	s11,24(sp)
    800006f8:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   6109                	addi	sp,sp,128
    800006fa:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   8082                	ret
    800006fc:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   e13ff0ef          	jal	ra,8000050e <bitcount_BW_btbl_bitcount>
    80000700:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   87aa                	mv	a5,a0
    80000702:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   00faa023          	sw	a5,0(s5)
    80000706:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   000d3503          	ld	a0,0(s10)
    8000070a:	[38;5;158m|[0m  [38;5;151m+--------------[38;5;231m|[38;5;151m--[0m bf4d                	j	800006bc <bitcount_main+0xa8>
    8000070c:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   d89ff0ef          	jal	ra,80000494 <bitcount_ntbl_bitcount>
    80000710:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   87aa                	mv	a5,a0
    80000712:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   00faa023          	sw	a5,0(s5)
    80000716:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   000d3503          	ld	a0,0(s10)
    8000071a:	[38;5;158m|[0m  [38;5;151m+--------------[38;5;231m|[38;5;151m--[0m b74d                	j	800006bc <bitcount_main+0xa8>
    8000071c:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   15a000ef          	jal	ra,80000876 <bitcount_btbl_bitcnt>
    80000720:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   87aa                	mv	a5,a0
    80000722:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   00faa023          	sw	a5,0(s5)
    80000726:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   000d3503          	ld	a0,0(s10)
    8000072a:	[38;5;158m|[0m  [38;5;151m+--------------[38;5;231m|[38;5;151m--[0m bf49                	j	800006bc <bitcount_main+0xa8>
    8000072c:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   11a000ef          	jal	ra,80000846 <bitcount_ntbl_bitcnt>
    80000730:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   87aa                	mv	a5,a0
    80000732:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   00faa023          	sw	a5,0(s5)
    80000736:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   000d3503          	ld	a0,0(s10)
    8000073a:	[38;5;158m|[0m  [38;5;151m+--------------[38;5;231m|[38;5;151m--[0m b749                	j	800006bc <bitcount_main+0xa8>
    8000073c:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   c87ff0ef          	jal	ra,800003c2 <bitcount_bitcount>
    80000740:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   87aa                	mv	a5,a0
    80000742:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   00faa023          	sw	a5,0(s5)
    80000746:	[38;5;158m|[0m  [38;5;151m|[0m              [38;5;231m|[0m   000d3503          	ld	a0,0(s10)
    8000074a:	[38;5;158m|[0m  [38;5;151m+--------------[38;5;231m|[38;5;151m--[0m bf8d                	j	800006bc <bitcount_main+0xa8>
    8000074c:	[38;5;158m|[0m  [38;5;151m|[0m     [38;5;201m/[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;231m|[38;5;201m-[38;5;201m>[0m 882e                	mv	a6,a1
    8000074e:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m/[38;5;195m-[38;5;195m-[38;5;201m|[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;231m|[38;5;195m-[38;5;195m>[0m 000c3783          	ld	a5,0(s8)
    80000752:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   00092603          	lw	a2,0(s2)
    80000756:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   0535                	addi	a0,a0,13
    80000758:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   97c2                	add	a5,a5,a6
    8000075a:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   00baa023          	sw	a1,0(s5)
    8000075e:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   00fc3023          	sd	a5,0(s8)
    80000762:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   2d85                	addiw	s11,s11,1
    80000764:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m|[0m   00ad3023          	sd	a0,0(s10)
    80000768:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m        [38;5;231m\[38;5;231m-[38;5;231m-[0m f6cdfbe3          	bgeu	s11,a2,800006de <bitcount_main+0xca>
    8000076c:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m            87aa                	mv	a5,a0
    8000076e:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m/[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[0m c905                	beqz	a0,8000079e <bitcount_main+0x18a>
    80000770:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m         04000613          	li	a2,64
    80000774:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m         4581                	li	a1,0
    80000776:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m     [38;5;172m/[38;5;172m-[38;5;172m-[0m a019                	j	8000077c <bitcount_main+0x168>
    80000778:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m  [38;5;164m/--[38;5;172m|[38;5;164m->[0m 367d                	addiw	a2,a2,-1
    8000077a:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m+[38;5;201m-[38;5;201m-[38;5;211m|[38;5;201m-[38;5;201m-[38;5;164m|[38;5;201m-[38;5;201m-[38;5;172m|[38;5;201m-[38;5;201m-[0m da69                	beqz	a2,8000074c <bitcount_main+0x138>
    8000077c:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m  [38;5;164m|[0m  [38;5;172m\[38;5;172m-[38;5;172m>[0m 0017f813          	andi	a6,a5,1
    80000780:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m  [38;5;164m|[0m      8785                	srai	a5,a5,0x1
    80000782:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m  [38;5;164m|[0m      00b805bb          	addw	a1,a6,a1
    80000786:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m|[0m  [38;5;211m|[0m  [38;5;164m\-----[0m fbed                	bnez	a5,80000778 <bitcount_main+0x164>
    80000788:	[38;5;158m|[0m  [38;5;151m|[0m  [38;5;195m|[0m  [38;5;201m\[38;5;201m-[38;5;201m-[38;5;211m|[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[38;5;201m-[0m b7d1                	j	8000074c <bitcount_main+0x138>
    8000078a:	[38;5;158m\--[38;5;151m|[38;5;158m--[38;5;195m|[38;5;158m-----[38;5;211m|[38;5;158m------->[0m 000d3503          	ld	a0,0(s10)
    8000078e:	   [38;5;151m|[0m  [38;5;195m|[0m     [38;5;211m|[0m         c89ff0ef          	jal	ra,80000416 <bitcount_bit_count>
    80000792:	   [38;5;151m|[0m  [38;5;195m|[0m     [38;5;211m|[0m         87aa                	mv	a5,a0
    80000794:	   [38;5;151m|[0m  [38;5;195m|[0m     [38;5;211m|[0m         00faa023          	sw	a5,0(s5)
    80000798:	   [38;5;151m|[0m  [38;5;195m|[0m     [38;5;211m|[0m         000d3503          	ld	a0,0(s10)
    8000079c:	   [38;5;151m\--[38;5;195m|[38;5;151m-----[38;5;211m|[38;5;151m--------[0m b705                	j	800006bc <bitcount_main+0xa8>
    8000079e:	      [38;5;195m|[0m     [38;5;211m\[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m>[0m 4801                	li	a6,0
    800007a0:	      [38;5;195m|[0m               4581                	li	a1,0
    800007a2:	      [38;5;195m\[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[38;5;195m-[0m b775                	j	8000074e <bitcount_main+0x13a>

00000000800007a4 <task_0>:
    800007a4:	1141                	addi	sp,sp,-16
    800007a6:	4785                	li	a5,1
    800007a8:	e406                	sd	ra,8(sp)
    800007aa:	e022                	sd	s0,0(sp)
    800007ac:	84f1b823          	sd	a5,-1968(gp) # 80002f50 <bitcount_randseed>
    800007b0:	83818413          	addi	s0,gp,-1992 # 80002f38 <bitcount_n>
    800007b4:	47a9                	li	a5,10
    800007b6:	82f1a823          	sw	a5,-2000(gp) # 80002f30 <bitcount_iterations>
    800007ba:	00043023          	sd	zero,0(s0)
    800007be:	c6dff0ef          	jal	ra,8000042a <bitcount_init3>
    800007c2:	01a000ef          	jal	ra,800007dc <bitcount_init4>
    800007c6:	e4fff0ef          	jal	ra,80000614 <bitcount_main>
    800007ca:	6008                	ld	a0,0(s0)
    800007cc:	60a2                	ld	ra,8(sp)
    800007ce:	6402                	ld	s0,0(sp)
    800007d0:	bb950513          	addi	a0,a0,-1095
    800007d4:	00a03533          	snez	a0,a0
    800007d8:	0141                	addi	sp,sp,16
    800007da:	8082                	ret

00000000800007dc <bitcount_init4>:
    800007dc:	       716d                	addi	sp,sp,-272
    800007de:	       c602                	sw	zero,12(sp)
    800007e0:	       00002797          	auipc	a5,0x2
    800007e4:	       1b078793          	addi	a5,a5,432 # 80002990 <__tbss_end+0x170>
    800007e8:	       0818                	addi	a4,sp,16
    800007ea:	       00002817          	auipc	a6,0x2
    800007ee:	       2a680813          	addi	a6,a6,678 # 80002a90 <__tbss_end+0x270>
    800007f2:	   [38;5;135m/[38;5;135m-[38;5;135m>[0m 6388                	ld	a0,0(a5)
    800007f4:	   [38;5;135m|[0m   678c                	ld	a1,8(a5)
    800007f6:	   [38;5;135m|[0m   6b90                	ld	a2,16(a5)
    800007f8:	   [38;5;135m|[0m   6f94                	ld	a3,24(a5)
    800007fa:	   [38;5;135m|[0m   e308                	sd	a0,0(a4)
    800007fc:	   [38;5;135m|[0m   e70c                	sd	a1,8(a4)
    800007fe:	   [38;5;135m|[0m   eb10                	sd	a2,16(a4)
    80000800:	   [38;5;135m|[0m   ef14                	sd	a3,24(a4)
    80000802:	   [38;5;135m|[0m   02078793          	addi	a5,a5,32
    80000806:	   [38;5;135m|[0m   02070713          	addi	a4,a4,32
    8000080a:	   [38;5;135m\[38;5;135m-[38;5;135m-[0m ff0794e3          	bne	a5,a6,800007f2 <bitcount_init4+0x16>
    8000080e:	       c602                	sw	zero,12(sp)
    80000810:	       4732                	lw	a4,12(sp)
    80000812:	       0ff00793          	li	a5,255
    80000816:	[38;5;127m/-----[0m 02e7c663          	blt	a5,a4,80000842 <bitcount_init4+0x66>
    8000081a:	[38;5;127m|[0m      9b018593          	addi	a1,gp,-1616 # 800030b0 <bitcount_bits>
    8000081e:	[38;5;127m|[0m      0ff00613          	li	a2,255
    80000822:	[38;5;127m|[0m  [38;5;169m/[38;5;169m-[38;5;169m>[0m 46b2                	lw	a3,12(sp)
    80000824:	[38;5;127m|[0m  [38;5;169m|[0m   47b2                	lw	a5,12(sp)
    80000826:	[38;5;127m|[0m  [38;5;169m|[0m   4732                	lw	a4,12(sp)
    80000828:	[38;5;127m|[0m  [38;5;169m|[0m   11068693          	addi	a3,a3,272
    8000082c:	[38;5;127m|[0m  [38;5;169m|[0m   968a                	add	a3,a3,sp
    8000082e:	[38;5;127m|[0m  [38;5;169m|[0m   2705                	addiw	a4,a4,1
    80000830:	[38;5;127m|[0m  [38;5;169m|[0m   f006c683          	lbu	a3,-256(a3)
    80000834:	[38;5;127m|[0m  [38;5;169m|[0m   c63a                	sw	a4,12(sp)
    80000836:	[38;5;127m|[0m  [38;5;169m|[0m   4732                	lw	a4,12(sp)
    80000838:	[38;5;127m|[0m  [38;5;169m|[0m   97ae                	add	a5,a5,a1
    8000083a:	[38;5;127m|[0m  [38;5;169m|[0m   00d78023          	sb	a3,0(a5)
    8000083e:	[38;5;127m|[0m  [38;5;169m\[38;5;169m-[38;5;169m-[0m fee652e3          	bge	a2,a4,80000822 <bitcount_init4+0x46>
    80000842:	[38;5;127m\---->[0m 6151                	addi	sp,sp,272
    80000844:	       8082                	ret

0000000080000846 <bitcount_ntbl_bitcnt>:
    80000846:	       00f57713          	andi	a4,a0,15
    8000084a:	       9b018593          	addi	a1,gp,-1616 # 800030b0 <bitcount_bits>
    8000084e:	       972e                	add	a4,a4,a1
    80000850:	       00455793          	srli	a5,a0,0x4
    80000854:	       00074503          	lbu	a0,0(a4)
    80000858:	[38;5;165m/[38;5;165m-[38;5;165m-[38;5;165m-[38;5;165m-[38;5;165m-[0m cf91                	beqz	a5,80000874 <bitcount_ntbl_bitcnt+0x2e>
    8000085a:	[38;5;165m|[0m      4601                	li	a2,0
    8000085c:	[38;5;165m|[0m  [38;5;127m/->[0m 00f7f713          	andi	a4,a5,15
    80000860:	[38;5;165m|[0m  [38;5;127m|[0m   972e                	add	a4,a4,a1
    80000862:	[38;5;165m|[0m  [38;5;127m|[0m   00074683          	lbu	a3,0(a4)
    80000866:	[38;5;165m|[0m  [38;5;127m|[0m   8391                	srli	a5,a5,0x4
    80000868:	[38;5;165m|[0m  [38;5;127m|[0m   9e29                	addw	a2,a2,a0
    8000086a:	[38;5;165m|[0m  [38;5;127m|[0m   0006851b          	sext.w	a0,a3
    8000086e:	[38;5;165m|[0m  [38;5;127m\--[0m f7fd                	bnez	a5,8000085c <bitcount_ntbl_bitcnt+0x16>
    80000870:	[38;5;165m|[0m      00c6853b          	addw	a0,a3,a2
    80000874:	[38;5;165m\[38;5;165m-[38;5;165m-[38;5;165m-[38;5;165m-[38;5;165m>[0m 8082                	ret

0000000080000876 <bitcount_btbl_bitcnt>:
    80000876:	       0ff57713          	zext.b	a4,a0
    8000087a:	       9b018593          	addi	a1,gp,-1616 # 800030b0 <bitcount_bits>
    8000087e:	       972e                	add	a4,a4,a1
    80000880:	       00855793          	srli	a5,a0,0x8
    80000884:	       00074503          	lbu	a0,0(a4)
    80000888:	[38;5;149m/[38;5;149m-[38;5;149m-[38;5;149m-[38;5;149m-[38;5;149m-[0m cf91                	beqz	a5,800008a4 <bitcount_btbl_bitcnt+0x2e>
    8000088a:	[38;5;149m|[0m      4601                	li	a2,0
    8000088c:	[38;5;149m|[0m  [38;5;162m/->[0m 0ff7f713          	zext.b	a4,a5
    80000890:	[38;5;149m|[0m  [38;5;162m|[0m   972e                	add	a4,a4,a1
    80000892:	[38;5;149m|[0m  [38;5;162m|[0m   00074703          	lbu	a4,0(a4)
    80000896:	[38;5;149m|[0m  [38;5;162m|[0m   83a1                	srli	a5,a5,0x8
    80000898:	[38;5;149m|[0m  [38;5;162m|[0m   9e29                	addw	a2,a2,a0
    8000089a:	[38;5;149m|[0m  [38;5;162m|[0m   0007051b          	sext.w	a0,a4
    8000089e:	[38;5;149m|[0m  [38;5;162m\--[0m f7fd                	bnez	a5,8000088c <bitcount_btbl_bitcnt+0x16>
    800008a0:	[38;5;149m|[0m      00e6053b          	addw	a0,a2,a4
    800008a4:	[38;5;149m\[38;5;149m-[38;5;149m-[38;5;149m-[38;5;149m-[38;5;149m>[0m 8082                	ret

00000000800008a6 <bitcount_bitcount_t1>:
    800008a6:	555557b7          	lui	a5,0x55555
    800008aa:	55578793          	addi	a5,a5,1365 # 55555555 <__heap_size+0x55535555>
    800008ae:	40155713          	srai	a4,a0,0x1
    800008b2:	8f7d                	and	a4,a4,a5
    800008b4:	8d7d                	and	a0,a0,a5
    800008b6:	972a                	add	a4,a4,a0
    800008b8:	333336b7          	lui	a3,0x33333
    800008bc:	33368693          	addi	a3,a3,819 # 33333333 <__heap_size+0x33313333>
    800008c0:	40275793          	srai	a5,a4,0x2
    800008c4:	8ff5                	and	a5,a5,a3
    800008c6:	8f75                	and	a4,a4,a3
    800008c8:	97ba                	add	a5,a5,a4
    800008ca:	0f0f16b7          	lui	a3,0xf0f1
    800008ce:	f0f68693          	addi	a3,a3,-241 # f0f0f0f <__heap_size+0xf0d0f0f>
    800008d2:	4047d713          	srai	a4,a5,0x4
    800008d6:	8f75                	and	a4,a4,a3
    800008d8:	8ff5                	and	a5,a5,a3
    800008da:	973e                	add	a4,a4,a5
    800008dc:	00ff06b7          	lui	a3,0xff0
    800008e0:	0ff68693          	addi	a3,a3,255 # ff00ff <__heap_size+0xfd00ff>
    800008e4:	40875793          	srai	a5,a4,0x8
    800008e8:	8ff5                	and	a5,a5,a3
    800008ea:	8f75                	and	a4,a4,a3
    800008ec:	97ba                	add	a5,a5,a4
    800008ee:	4107d513          	srai	a0,a5,0x10
    800008f2:	17c2                	slli	a5,a5,0x30
    800008f4:	93c1                	srli	a5,a5,0x30
    800008f6:	953e                	add	a0,a0,a5
    800008f8:	8082                	ret

00000000800008fa <bitcount_bit_count_t1>:
    800008fa:	    87aa                	mv	a5,a0
    800008fc:	    4501                	li	a0,0
    800008fe:	[38;5;158m/[38;5;158m-[38;5;158m-[0m e391                	bnez	a5,80000902 <bitcount_bit_count_t1+0x8>
    80000900:	[38;5;158m|[0m   8082                	ret
    80000902:	[38;5;158m>[38;5;158m-[38;5;158m>[0m fff78713          	addi	a4,a5,-1
    80000906:	[38;5;158m|[0m   8ff9                	and	a5,a5,a4
    80000908:	[38;5;158m|[0m   2505                	addiw	a0,a0,1
    8000090a:	[38;5;158m\[38;5;158m-[38;5;158m-[0m ffe5                	bnez	a5,80000902 <bitcount_bit_count_t1+0x8>
    8000090c:	    8082                	ret

000000008000090e <bitcount_init3_t1>:
    8000090e:	       716d                	addi	sp,sp,-272
    80000910:	       c602                	sw	zero,12(sp)
    80000912:	       00002797          	auipc	a5,0x2
    80000916:	       17e78793          	addi	a5,a5,382 # 80002a90 <__tbss_end+0x270>
    8000091a:	       0818                	addi	a4,sp,16
    8000091c:	       00002817          	auipc	a6,0x2
    80000920:	       27480813          	addi	a6,a6,628 # 80002b90 <__tbss_end+0x370>
    80000924:	   [38;5;191m/->[0m 6388                	ld	a0,0(a5)
    80000926:	   [38;5;191m|[0m   678c                	ld	a1,8(a5)
    80000928:	   [38;5;191m|[0m   6b90                	ld	a2,16(a5)
    8000092a:	   [38;5;191m|[0m   6f94                	ld	a3,24(a5)
    8000092c:	   [38;5;191m|[0m   e308                	sd	a0,0(a4)
    8000092e:	   [38;5;191m|[0m   e70c                	sd	a1,8(a4)
    80000930:	   [38;5;191m|[0m   eb10                	sd	a2,16(a4)
    80000932:	   [38;5;191m|[0m   ef14                	sd	a3,24(a4)
    80000934:	   [38;5;191m|[0m   02078793          	addi	a5,a5,32
    80000938:	   [38;5;191m|[0m   02070713          	addi	a4,a4,32
    8000093c:	   [38;5;191m\--[0m ff0794e3          	bne	a5,a6,80000924 <bitcount_init3_t1+0x16>
    80000940:	       c602                	sw	zero,12(sp)
    80000942:	       4732                	lw	a4,12(sp)
    80000944:	       0ff00793          	li	a5,255
    80000948:	[38;5;134m/-----[0m 02e7c663          	blt	a5,a4,80000974 <bitcount_init3_t1+0x66>
    8000094c:	[38;5;134m|[0m      ab018593          	addi	a1,gp,-1360 # 800031b0 <bitcount_bits_t1>
    80000950:	[38;5;134m|[0m      0ff00613          	li	a2,255
    80000954:	[38;5;134m|[0m  [38;5;169m/[38;5;169m-[38;5;169m>[0m 46b2                	lw	a3,12(sp)
    80000956:	[38;5;134m|[0m  [38;5;169m|[0m   47b2                	lw	a5,12(sp)
    80000958:	[38;5;134m|[0m  [38;5;169m|[0m   4732                	lw	a4,12(sp)
    8000095a:	[38;5;134m|[0m  [38;5;169m|[0m   11068693          	addi	a3,a3,272
    8000095e:	[38;5;134m|[0m  [38;5;169m|[0m   968a                	add	a3,a3,sp
    80000960:	[38;5;134m|[0m  [38;5;169m|[0m   2705                	addiw	a4,a4,1
    80000962:	[38;5;134m|[0m  [38;5;169m|[0m   f006c683          	lbu	a3,-256(a3)
    80000966:	[38;5;134m|[0m  [38;5;169m|[0m   c63a                	sw	a4,12(sp)
    80000968:	[38;5;134m|[0m  [38;5;169m|[0m   4732                	lw	a4,12(sp)
    8000096a:	[38;5;134m|[0m  [38;5;169m|[0m   97ae                	add	a5,a5,a1
    8000096c:	[38;5;134m|[0m  [38;5;169m|[0m   00d78023          	sb	a3,0(a5)
    80000970:	[38;5;134m|[0m  [38;5;169m\[38;5;169m-[38;5;169m-[0m fee652e3          	bge	a2,a4,80000954 <bitcount_init3_t1+0x46>
    80000974:	[38;5;134m\---->[0m 6151                	addi	sp,sp,272
    80000976:	       8082                	ret

0000000080000978 <bitcount_ntbl_bitcount_t1>:
    80000978:	00455793          	srli	a5,a0,0x4
    8000097c:	ab018693          	addi	a3,gp,-1360 # 800031b0 <bitcount_bits_t1>
    80000980:	00f57593          	andi	a1,a0,15
    80000984:	00855713          	srli	a4,a0,0x8
    80000988:	8bbd                	andi	a5,a5,15
    8000098a:	95b6                	add	a1,a1,a3
    8000098c:	97b6                	add	a5,a5,a3
    8000098e:	00c55613          	srli	a2,a0,0xc
    80000992:	8b3d                	andi	a4,a4,15
    80000994:	0005ce03          	lbu	t3,0(a1)
    80000998:	9736                	add	a4,a4,a3
    8000099a:	0007c783          	lbu	a5,0(a5)
    8000099e:	01055593          	srli	a1,a0,0x10
    800009a2:	8a3d                	andi	a2,a2,15
    800009a4:	00074303          	lbu	t1,0(a4)
    800009a8:	9636                	add	a2,a2,a3
    800009aa:	01455713          	srli	a4,a0,0x14
    800009ae:	89bd                	andi	a1,a1,15
    800009b0:	00064883          	lbu	a7,0(a2)
    800009b4:	95b6                	add	a1,a1,a3
    800009b6:	01855613          	srli	a2,a0,0x18
    800009ba:	8b3d                	andi	a4,a4,15
    800009bc:	0005c803          	lbu	a6,0(a1)
    800009c0:	9736                	add	a4,a4,a3
    800009c2:	01c787bb          	addw	a5,a5,t3
    800009c6:	8a3d                	andi	a2,a2,15
    800009c8:	00074583          	lbu	a1,0(a4)
    800009cc:	006787bb          	addw	a5,a5,t1
    800009d0:	9636                	add	a2,a2,a3
    800009d2:	01c5571b          	srliw	a4,a0,0x1c
    800009d6:	00064603          	lbu	a2,0(a2)
    800009da:	011787bb          	addw	a5,a5,a7
    800009de:	00e68533          	add	a0,a3,a4
    800009e2:	00054503          	lbu	a0,0(a0)
    800009e6:	010787bb          	addw	a5,a5,a6
    800009ea:	9fad                	addw	a5,a5,a1
    800009ec:	9fb1                	addw	a5,a5,a2
    800009ee:	9d3d                	addw	a0,a0,a5
    800009f0:	8082                	ret

00000000800009f2 <bitcount_BW_btbl_bitcount_t1>:
    800009f2:	00855693          	srli	a3,a0,0x8
    800009f6:	ab018793          	addi	a5,gp,-1360 # 800031b0 <bitcount_bits_t1>
    800009fa:	0ff57713          	zext.b	a4,a0
    800009fe:	0ff6f693          	zext.b	a3,a3
    80000a02:	96be                	add	a3,a3,a5
    80000a04:	0185561b          	srliw	a2,a0,0x18
    80000a08:	973e                	add	a4,a4,a5
    80000a0a:	8141                	srli	a0,a0,0x10
    80000a0c:	0006c583          	lbu	a1,0(a3)
    80000a10:	00074703          	lbu	a4,0(a4)
    80000a14:	00c786b3          	add	a3,a5,a2
    80000a18:	0ff57513          	zext.b	a0,a0
    80000a1c:	0006c683          	lbu	a3,0(a3)
    80000a20:	97aa                	add	a5,a5,a0
    80000a22:	0007c503          	lbu	a0,0(a5)
    80000a26:	00b707bb          	addw	a5,a4,a1
    80000a2a:	9fb5                	addw	a5,a5,a3
    80000a2c:	9d3d                	addw	a0,a0,a5
    80000a2e:	8082                	ret

0000000080000a30 <bitcount_AR_btbl_bitcount_t1>:
    80000a30:	00855693          	srli	a3,a0,0x8
    80000a34:	ab018793          	addi	a5,gp,-1360 # 800031b0 <bitcount_bits_t1>
    80000a38:	0ff57613          	zext.b	a2,a0
    80000a3c:	01055713          	srli	a4,a0,0x10
    80000a40:	0ff6f693          	zext.b	a3,a3
    80000a44:	963e                	add	a2,a2,a5
    80000a46:	96be                	add	a3,a3,a5
    80000a48:	0ff77713          	zext.b	a4,a4
    80000a4c:	00064603          	lbu	a2,0(a2)
    80000a50:	0006c683          	lbu	a3,0(a3)
    80000a54:	973e                	add	a4,a4,a5
    80000a56:	0185551b          	srliw	a0,a0,0x18
    80000a5a:	00074703          	lbu	a4,0(a4)
    80000a5e:	97aa                	add	a5,a5,a0
    80000a60:	0007c503          	lbu	a0,0(a5)
    80000a64:	00c687bb          	addw	a5,a3,a2
    80000a68:	9fb9                	addw	a5,a5,a4
    80000a6a:	9d3d                	addw	a0,a0,a5
    80000a6c:	8082                	ret

0000000080000a6e <bitcount_bit_shifter_t1>:
    80000a6e:	             87aa                	mv	a5,a0
    80000a70:	[38;5;130m/-----------[0m cd11                	beqz	a0,80000a8c <bitcount_bit_shifter_t1+0x1e>
    80000a72:	[38;5;130m|[0m            04000713          	li	a4,64
    80000a76:	[38;5;130m|[0m            4501                	li	a0,0
    80000a78:	[38;5;130m|[0m        [38;5;192m/--[0m a011                	j	80000a7c <bitcount_bit_shifter_t1+0xe>
    80000a7a:	[38;5;130m|[0m  [38;5;231m/[38;5;231m-[38;5;231m-[38;5;154m/[38;5;154m-[38;5;154m-[38;5;192m|[38;5;154m-[38;5;231mX[0m cb01                	beqz	a4,80000a8a <bitcount_bit_shifter_t1+0x1c>
    80000a7c:	[38;5;130m|[0m  [38;5;231m|[0m  [38;5;154m|[0m  [38;5;192m\->[0m 0017f693          	andi	a3,a5,1
    80000a80:	[38;5;130m|[0m  [38;5;231m|[0m  [38;5;154m|[0m      8785                	srai	a5,a5,0x1
    80000a82:	[38;5;130m|[0m  [38;5;231m|[0m  [38;5;154m|[0m      377d                	addiw	a4,a4,-1
    80000a84:	[38;5;130m|[0m  [38;5;231m|[0m  [38;5;154m|[0m      9d35                	addw	a0,a0,a3
    80000a86:	[38;5;130m|[0m  [38;5;231m|[0m  [38;5;154m\[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[0m fbf5                	bnez	a5,80000a7a <bitcount_bit_shifter_t1+0xc>
    80000a88:	[38;5;130m|[0m  [38;5;231m|[0m         8082                	ret
    80000a8a:	[38;5;130m|[0m  [38;5;231m\[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m>[0m 8082                	ret
    80000a8c:	[38;5;130m\---------->[0m 4501                	li	a0,0
    80000a8e:	             8082                	ret

0000000080000a90 <bitcount_return_t1>:
    80000a90:	8601b503          	ld	a0,-1952(gp) # 80002f60 <bitcount_n_t1>
    80000a94:	bb950513          	addi	a0,a0,-1095
    80000a98:	00a03533          	snez	a0,a0
    80000a9c:	8082                	ret

0000000080000a9e <bitcount_init_t1>:
    80000a9e:	4785                	li	a5,1
    80000aa0:	1141                	addi	sp,sp,-16
    80000aa2:	86f1bc23          	sd	a5,-1928(gp) # 80002f78 <bitcount_randseed_t1>
    80000aa6:	47a9                	li	a5,10
    80000aa8:	e406                	sd	ra,8(sp)
    80000aaa:	84f1ac23          	sw	a5,-1960(gp) # 80002f58 <bitcount_iterations_t1>
    80000aae:	8601b023          	sd	zero,-1952(gp) # 80002f60 <bitcount_n_t1>
    80000ab2:	e5dff0ef          	jal	ra,8000090e <bitcount_init3_t1>
    80000ab6:	60a2                	ld	ra,8(sp)
    80000ab8:	0141                	addi	sp,sp,16
    80000aba:	a419                	j	80000cc0 <bitcount_init4_t1>

0000000080000abc <bitcount_random_t1>:
    80000abc:	    87818693          	addi	a3,gp,-1928 # 80002f78 <bitcount_randseed_t1>
    80000ac0:	    629c                	ld	a5,0(a3)
    80000ac2:	    677d                	lui	a4,0x1f
    80000ac4:	    31d70713          	addi	a4,a4,797 # 1f31d <__stack_size+0x1731d>
    80000ac8:	    02e7e533          	rem	a0,a5,a4
    80000acc:	    02e7c7b3          	div	a5,a5,a4
    80000ad0:	    6711                	lui	a4,0x4
    80000ad2:	    1a770713          	addi	a4,a4,423 # 41a7 <__stack_align+0x4197>
    80000ad6:	    02e50533          	mul	a0,a0,a4
    80000ada:	    777d                	lui	a4,0xfffff
    80000adc:	    4ec70713          	addi	a4,a4,1260 # fffffffffffff4ec <__heap_end+0xffffffff7ffdb4ec>
    80000ae0:	    02e787b3          	mul	a5,a5,a4
    80000ae4:	    953e                	add	a0,a0,a5
    80000ae6:	[38;5;196m/[38;5;196m-[38;5;196m-[0m 00a04763          	bgtz	a0,80000af4 <bitcount_random_t1+0x38>
    80000aea:	[38;5;196m|[0m   800007b7          	lui	a5,0x80000
    80000aee:	[38;5;196m|[0m   fff7c793          	not	a5,a5
    80000af2:	[38;5;196m|[0m   953e                	add	a0,a0,a5
    80000af4:	[38;5;196m\[38;5;196m-[38;5;196m>[0m e288                	sd	a0,0(a3)
    80000af6:	    8082                	ret

0000000080000af8 <bitcount_main_t1>:
    80000af8:	                      7119                	addi	sp,sp,-128
    80000afa:	                      f862                	sd	s8,48(sp)
    80000afc:	                      7c7d                	lui	s8,0xfffff
    80000afe:	                      4ecc0793          	addi	a5,s8,1260 # fffffffffffff4ec <__heap_end+0xffffffff7ffdb4ec>
    80000b02:	                      e03e                	sd	a5,0(sp)
    80000b04:	                      800007b7          	lui	a5,0x80000
    80000b08:	                      e0da                	sd	s6,64(sp)
    80000b0a:	                      f466                	sd	s9,40(sp)
    80000b0c:	                      6b7d                	lui	s6,0x1f
    80000b0e:	                      6c91                	lui	s9,0x4
    80000b10:	                      fff7c793          	not	a5,a5
    80000b14:	                      f4a6                	sd	s1,104(sp)
    80000b16:	                      f0ca                	sd	s2,96(sp)
    80000b18:	                      ecce                	sd	s3,88(sp)
    80000b1a:	                      e4d6                	sd	s5,72(sp)
    80000b1c:	                      fc5e                	sd	s7,56(sp)
    80000b1e:	                      f06a                	sd	s10,32(sp)
    80000b20:	                      fc86                	sd	ra,120(sp)
    80000b22:	                      f8a2                	sd	s0,112(sp)
    80000b24:	                      e8d2                	sd	s4,80(sp)
    80000b26:	                      ec6e                	sd	s11,24(sp)
    80000b28:	                      4481                	li	s1,0
    80000b2a:	                      87818b93          	addi	s7,gp,-1928 # 80002f78 <bitcount_randseed_t1>
    80000b2e:	                      86818d13          	addi	s10,gp,-1944 # 80002f68 <bitcount_seed_t1>
    80000b32:	                      85818913          	addi	s2,gp,-1960 # 80002f58 <bitcount_iterations_t1>
    80000b36:	                      31db0b13          	addi	s6,s6,797 # 1f31d <__stack_size+0x1731d>
    80000b3a:	                      1a7c8c93          	addi	s9,s9,423 # 41a7 <__stack_align+0x4197>
    80000b3e:	                      e43e                	sd	a5,8(sp)
    80000b40:	                      87018a93          	addi	s5,gp,-1936 # 80002f70 <bitcount_res_t1>
    80000b44:	                      00002997          	auipc	s3,0x2
    80000b48:	                      04c98993          	addi	s3,s3,76 # 80002b90 <__tbss_end+0x370>
    80000b4c:	            [38;5;156m/[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m>[0m 000bb783          	ld	a5,0(s7)
    80000b50:	            [38;5;156m|[0m         6702                	ld	a4,0(sp)
    80000b52:	            [38;5;156m|[0m         0367e533          	rem	a0,a5,s6
    80000b56:	            [38;5;156m|[0m         0367c7b3          	div	a5,a5,s6
    80000b5a:	            [38;5;156m|[0m         03950533          	mul	a0,a0,s9
    80000b5e:	            [38;5;156m|[0m         02e787b3          	mul	a5,a5,a4
    80000b62:	            [38;5;156m|[0m         953e                	add	a0,a0,a5
    80000b64:	            [38;5;156m|[0m     [38;5;161m/--[0m 00a04463          	bgtz	a0,80000b6c <bitcount_main_t1+0x74>
    80000b68:	            [38;5;156m|[0m     [38;5;161m|[0m   67a2                	ld	a5,8(sp)
    80000b6a:	            [38;5;156m|[0m     [38;5;161m|[0m   953e                	add	a0,a0,a5
    80000b6c:	            [38;5;156m|[0m     [38;5;161m\->[0m 00092783          	lw	a5,0(s2)
    80000b70:	            [38;5;156m|[0m         00249413          	slli	s0,s1,0x2
    80000b74:	            [38;5;156m|[0m         00abb023          	sd	a0,0(s7)
    80000b78:	            [38;5;156m|[0m         00ad3023          	sd	a0,0(s10)
    80000b7c:	            [38;5;156m|[0m         4d81                	li	s11,0
    80000b7e:	            [38;5;156m|[0m         86018c13          	addi	s8,gp,-1952 # 80002f60 <bitcount_n_t1>
    80000b82:	            [38;5;156m|[0m         4a1d                	li	s4,7
    80000b84:	            [38;5;156m|[0m         944e                	add	s0,s0,s3
    80000b86:	            [38;5;156m|[0m  [38;5;188m/[38;5;188m-[38;5;188m-[38;5;188m-[38;5;188m-[38;5;188m-[0m cb95                	beqz	a5,80000bba <bitcount_main_t1+0xc2>
    80000b88:	[38;5;145m/-----------[38;5;156m|[38;5;145m--[38;5;188m|[38;5;145m--[38;5;135m/-[38;5;145mX[0m 0e9a6363          	bltu	s4,s1,80000c6e <bitcount_main_t1+0x176>
    80000b8c:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   401c                	lw	a5,0(s0)
    80000b8e:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   97ce                	add	a5,a5,s3
    80000b90:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   8782                	jr	a5
    80000b92:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   e9fff0ef          	jal	ra,80000a30 <bitcount_AR_btbl_bitcount_t1>
    80000b96:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   87aa                	mv	a5,a0
    80000b98:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   000d3503          	ld	a0,0(s10)
    80000b9c:	[38;5;145m|[0m           [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   00faa023          	sw	a5,0(s5)
    80000ba0:	[38;5;145m|[0m  [38;5;190m/--------[38;5;156m|[38;5;190m--[38;5;188m|[38;5;190m--[38;5;135m|[38;5;190m->[0m 000c3603          	ld	a2,0(s8)
    80000ba4:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   00092583          	lw	a1,0(s2)
    80000ba8:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   0535                	addi	a0,a0,13
    80000baa:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   97b2                	add	a5,a5,a2
    80000bac:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   00fc3023          	sd	a5,0(s8)
    80000bb0:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   2d85                	addiw	s11,s11,1
    80000bb2:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m|[0m   00ad3023          	sd	a0,0(s10)
    80000bb6:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m|[0m  [38;5;135m\--[0m fcbde9e3          	bltu	s11,a1,80000b88 <bitcount_main_t1+0x90>
    80000bba:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m  [38;5;188m\[38;5;188m-[38;5;188m-[38;5;188m-[38;5;188m-[38;5;188m>[0m 2485                	addiw	s1,s1,1
    80000bbc:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m|[0m         47a1                	li	a5,8
    80000bbe:	[38;5;145m|[0m  [38;5;190m|[0m        [38;5;156m\[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[0m f8f497e3          	bne	s1,a5,80000b4c <bitcount_main_t1+0x54>
    80000bc2:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m/->[0m 70e6                	ld	ra,120(sp)
    80000bc4:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7446                	ld	s0,112(sp)
    80000bc6:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   74a6                	ld	s1,104(sp)
    80000bc8:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7906                	ld	s2,96(sp)
    80000bca:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   69e6                	ld	s3,88(sp)
    80000bcc:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   6a46                	ld	s4,80(sp)
    80000bce:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   6aa6                	ld	s5,72(sp)
    80000bd0:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   6b06                	ld	s6,64(sp)
    80000bd2:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7be2                	ld	s7,56(sp)
    80000bd4:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7c42                	ld	s8,48(sp)
    80000bd6:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7ca2                	ld	s9,40(sp)
    80000bd8:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   7d02                	ld	s10,32(sp)
    80000bda:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   6de2                	ld	s11,24(sp)
    80000bdc:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   6109                	addi	sp,sp,128
    80000bde:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   8082                	ret
    80000be0:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   e13ff0ef          	jal	ra,800009f2 <bitcount_BW_btbl_bitcount_t1>
    80000be4:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   87aa                	mv	a5,a0
    80000be6:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   00faa023          	sw	a5,0(s5)
    80000bea:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   000d3503          	ld	a0,0(s10)
    80000bee:	[38;5;145m|[0m  [38;5;190m+--------------[38;5;180m|[38;5;190m--[0m bf4d                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000bf0:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   d89ff0ef          	jal	ra,80000978 <bitcount_ntbl_bitcount_t1>
    80000bf4:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   87aa                	mv	a5,a0
    80000bf6:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   00faa023          	sw	a5,0(s5)
    80000bfa:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   000d3503          	ld	a0,0(s10)
    80000bfe:	[38;5;145m|[0m  [38;5;190m+--------------[38;5;180m|[38;5;190m--[0m b74d                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000c00:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   15a000ef          	jal	ra,80000d5a <bitcount_btbl_bitcnt_t1>
    80000c04:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   87aa                	mv	a5,a0
    80000c06:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   00faa023          	sw	a5,0(s5)
    80000c0a:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   000d3503          	ld	a0,0(s10)
    80000c0e:	[38;5;145m|[0m  [38;5;190m+--------------[38;5;180m|[38;5;190m--[0m bf49                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000c10:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   11a000ef          	jal	ra,80000d2a <bitcount_ntbl_bitcnt_t1>
    80000c14:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   87aa                	mv	a5,a0
    80000c16:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   00faa023          	sw	a5,0(s5)
    80000c1a:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   000d3503          	ld	a0,0(s10)
    80000c1e:	[38;5;145m|[0m  [38;5;190m+--------------[38;5;180m|[38;5;190m--[0m b749                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000c20:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   c87ff0ef          	jal	ra,800008a6 <bitcount_bitcount_t1>
    80000c24:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   87aa                	mv	a5,a0
    80000c26:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   00faa023          	sw	a5,0(s5)
    80000c2a:	[38;5;145m|[0m  [38;5;190m|[0m              [38;5;180m|[0m   000d3503          	ld	a0,0(s10)
    80000c2e:	[38;5;145m|[0m  [38;5;190m+--------------[38;5;180m|[38;5;190m--[0m bf8d                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000c30:	[38;5;145m|[0m  [38;5;190m|[0m     [38;5;194m/[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;180m|[38;5;194m-[38;5;194m>[0m 882e                	mv	a6,a1
    80000c32:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m/[38;5;159m-[38;5;159m-[38;5;194m|[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;180m|[38;5;159m-[38;5;159m>[0m 000c3783          	ld	a5,0(s8)
    80000c36:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   00092603          	lw	a2,0(s2)
    80000c3a:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   0535                	addi	a0,a0,13
    80000c3c:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   97c2                	add	a5,a5,a6
    80000c3e:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   00baa023          	sw	a1,0(s5)
    80000c42:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   00fc3023          	sd	a5,0(s8)
    80000c46:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   2d85                	addiw	s11,s11,1
    80000c48:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m|[0m   00ad3023          	sd	a0,0(s10)
    80000c4c:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m        [38;5;180m\--[0m f6cdfbe3          	bgeu	s11,a2,80000bc2 <bitcount_main_t1+0xca>
    80000c50:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m            87aa                	mv	a5,a0
    80000c52:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m/[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[0m c905                	beqz	a0,80000c82 <bitcount_main_t1+0x18a>
    80000c54:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m         04000613          	li	a2,64
    80000c58:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m         4581                	li	a1,0
    80000c5a:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m     [38;5;224m/--[0m a019                	j	80000c60 <bitcount_main_t1+0x168>
    80000c5c:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m  [38;5;179m/--[38;5;224m|[38;5;179m->[0m 367d                	addiw	a2,a2,-1
    80000c5e:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m+[38;5;194m-[38;5;194m-[38;5;152m|[38;5;194m-[38;5;194m-[38;5;179m|[38;5;194m-[38;5;194m-[38;5;224m|[38;5;194m-[38;5;194m-[0m da69                	beqz	a2,80000c30 <bitcount_main_t1+0x138>
    80000c60:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m  [38;5;179m|[0m  [38;5;224m\->[0m 0017f813          	andi	a6,a5,1
    80000c64:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m  [38;5;179m|[0m      8785                	srai	a5,a5,0x1
    80000c66:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m  [38;5;179m|[0m      00b805bb          	addw	a1,a6,a1
    80000c6a:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m|[0m  [38;5;152m|[0m  [38;5;179m\-----[0m fbed                	bnez	a5,80000c5c <bitcount_main_t1+0x164>
    80000c6c:	[38;5;145m|[0m  [38;5;190m|[0m  [38;5;159m|[0m  [38;5;194m\[38;5;194m-[38;5;194m-[38;5;152m|[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[38;5;194m-[0m b7d1                	j	80000c30 <bitcount_main_t1+0x138>
    80000c6e:	[38;5;145m\--[38;5;190m|[38;5;145m--[38;5;159m|[38;5;145m-----[38;5;152m|[38;5;145m------->[0m 000d3503          	ld	a0,0(s10)
    80000c72:	   [38;5;190m|[0m  [38;5;159m|[0m     [38;5;152m|[0m         c89ff0ef          	jal	ra,800008fa <bitcount_bit_count_t1>
    80000c76:	   [38;5;190m|[0m  [38;5;159m|[0m     [38;5;152m|[0m         87aa                	mv	a5,a0
    80000c78:	   [38;5;190m|[0m  [38;5;159m|[0m     [38;5;152m|[0m         00faa023          	sw	a5,0(s5)
    80000c7c:	   [38;5;190m|[0m  [38;5;159m|[0m     [38;5;152m|[0m         000d3503          	ld	a0,0(s10)
    80000c80:	   [38;5;190m\--[38;5;159m|[38;5;190m-----[38;5;152m|[38;5;190m--------[0m b705                	j	80000ba0 <bitcount_main_t1+0xa8>
    80000c82:	      [38;5;159m|[0m     [38;5;152m\[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m>[0m 4801                	li	a6,0
    80000c84:	      [38;5;159m|[0m               4581                	li	a1,0
    80000c86:	      [38;5;159m\[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[0m b775                	j	80000c32 <bitcount_main_t1+0x13a>

0000000080000c88 <task_1>:
    80000c88:	1141                	addi	sp,sp,-16
    80000c8a:	4785                	li	a5,1
    80000c8c:	e406                	sd	ra,8(sp)
    80000c8e:	e022                	sd	s0,0(sp)
    80000c90:	86f1bc23          	sd	a5,-1928(gp) # 80002f78 <bitcount_randseed_t1>
    80000c94:	86018413          	addi	s0,gp,-1952 # 80002f60 <bitcount_n_t1>
    80000c98:	47a9                	li	a5,10
    80000c9a:	84f1ac23          	sw	a5,-1960(gp) # 80002f58 <bitcount_iterations_t1>
    80000c9e:	00043023          	sd	zero,0(s0)
    80000ca2:	c6dff0ef          	jal	ra,8000090e <bitcount_init3_t1>
    80000ca6:	01a000ef          	jal	ra,80000cc0 <bitcount_init4_t1>
    80000caa:	e4fff0ef          	jal	ra,80000af8 <bitcount_main_t1>
    80000cae:	6008                	ld	a0,0(s0)
    80000cb0:	60a2                	ld	ra,8(sp)
    80000cb2:	6402                	ld	s0,0(sp)
    80000cb4:	bb950513          	addi	a0,a0,-1095
    80000cb8:	00a03533          	snez	a0,a0
    80000cbc:	0141                	addi	sp,sp,16
    80000cbe:	8082                	ret

0000000080000cc0 <bitcount_init4_t1>:
    80000cc0:	       716d                	addi	sp,sp,-272
    80000cc2:	       c602                	sw	zero,12(sp)
    80000cc4:	       00002797          	auipc	a5,0x2
    80000cc8:	       eec78793          	addi	a5,a5,-276 # 80002bb0 <__tbss_end+0x390>
    80000ccc:	       0818                	addi	a4,sp,16
    80000cce:	       00002817          	auipc	a6,0x2
    80000cd2:	       fe280813          	addi	a6,a6,-30 # 80002cb0 <__sf_fake_stderr>
    80000cd6:	   [38;5;231m/[38;5;231m-[38;5;231m>[0m 6388                	ld	a0,0(a5)
    80000cd8:	   [38;5;231m|[0m   678c                	ld	a1,8(a5)
    80000cda:	   [38;5;231m|[0m   6b90                	ld	a2,16(a5)
    80000cdc:	   [38;5;231m|[0m   6f94                	ld	a3,24(a5)
    80000cde:	   [38;5;231m|[0m   e308                	sd	a0,0(a4)
    80000ce0:	   [38;5;231m|[0m   e70c                	sd	a1,8(a4)
    80000ce2:	   [38;5;231m|[0m   eb10                	sd	a2,16(a4)
    80000ce4:	   [38;5;231m|[0m   ef14                	sd	a3,24(a4)
    80000ce6:	   [38;5;231m|[0m   02078793          	addi	a5,a5,32
    80000cea:	   [38;5;231m|[0m   02070713          	addi	a4,a4,32
    80000cee:	   [38;5;231m\[38;5;231m-[38;5;231m-[0m ff0794e3          	bne	a5,a6,80000cd6 <bitcount_init4_t1+0x16>
    80000cf2:	       c602                	sw	zero,12(sp)
    80000cf4:	       4732                	lw	a4,12(sp)
    80000cf6:	       0ff00793          	li	a5,255
    80000cfa:	[38;5;168m/-----[0m 02e7c663          	blt	a5,a4,80000d26 <bitcount_init4_t1+0x66>
    80000cfe:	[38;5;168m|[0m      bb018593          	addi	a1,gp,-1104 # 800032b0 <bitcount_bits_t1>
    80000d02:	[38;5;168m|[0m      0ff00613          	li	a2,255
    80000d06:	[38;5;168m|[0m  [38;5;168m/[38;5;168m-[38;5;168m>[0m 46b2                	lw	a3,12(sp)
    80000d08:	[38;5;168m|[0m  [38;5;168m|[0m   47b2                	lw	a5,12(sp)
    80000d0a:	[38;5;168m|[0m  [38;5;168m|[0m   4732                	lw	a4,12(sp)
    80000d0c:	[38;5;168m|[0m  [38;5;168m|[0m   11068693          	addi	a3,a3,272
    80000d10:	[38;5;168m|[0m  [38;5;168m|[0m   968a                	add	a3,a3,sp
    80000d12:	[38;5;168m|[0m  [38;5;168m|[0m   2705                	addiw	a4,a4,1
    80000d14:	[38;5;168m|[0m  [38;5;168m|[0m   f006c683          	lbu	a3,-256(a3)
    80000d18:	[38;5;168m|[0m  [38;5;168m|[0m   c63a                	sw	a4,12(sp)
    80000d1a:	[38;5;168m|[0m  [38;5;168m|[0m   4732                	lw	a4,12(sp)
    80000d1c:	[38;5;168m|[0m  [38;5;168m|[0m   97ae                	add	a5,a5,a1
    80000d1e:	[38;5;168m|[0m  [38;5;168m|[0m   00d78023          	sb	a3,0(a5)
    80000d22:	[38;5;168m|[0m  [38;5;168m\[38;5;168m-[38;5;168m-[0m fee652e3          	bge	a2,a4,80000d06 <bitcount_init4_t1+0x46>
    80000d26:	[38;5;168m\---->[0m 6151                	addi	sp,sp,272
    80000d28:	       8082                	ret

0000000080000d2a <bitcount_ntbl_bitcnt_t1>:
    80000d2a:	       00f57713          	andi	a4,a0,15
    80000d2e:	       bb018593          	addi	a1,gp,-1104 # 800032b0 <bitcount_bits_t1>
    80000d32:	       972e                	add	a4,a4,a1
    80000d34:	       00455793          	srli	a5,a0,0x4
    80000d38:	       00074503          	lbu	a0,0(a4)
    80000d3c:	[38;5;198m/-----[0m cf91                	beqz	a5,80000d58 <bitcount_ntbl_bitcnt_t1+0x2e>
    80000d3e:	[38;5;198m|[0m      4601                	li	a2,0
    80000d40:	[38;5;198m|[0m  [38;5;211m/[38;5;211m-[38;5;211m>[0m 00f7f713          	andi	a4,a5,15
    80000d44:	[38;5;198m|[0m  [38;5;211m|[0m   972e                	add	a4,a4,a1
    80000d46:	[38;5;198m|[0m  [38;5;211m|[0m   00074683          	lbu	a3,0(a4)
    80000d4a:	[38;5;198m|[0m  [38;5;211m|[0m   8391                	srli	a5,a5,0x4
    80000d4c:	[38;5;198m|[0m  [38;5;211m|[0m   9e29                	addw	a2,a2,a0
    80000d4e:	[38;5;198m|[0m  [38;5;211m|[0m   0006851b          	sext.w	a0,a3
    80000d52:	[38;5;198m|[0m  [38;5;211m\[38;5;211m-[38;5;211m-[0m f7fd                	bnez	a5,80000d40 <bitcount_ntbl_bitcnt_t1+0x16>
    80000d54:	[38;5;198m|[0m      00c6853b          	addw	a0,a3,a2
    80000d58:	[38;5;198m\---->[0m 8082                	ret

0000000080000d5a <bitcount_btbl_bitcnt_t1>:
    80000d5a:	       0ff57713          	zext.b	a4,a0
    80000d5e:	       bb018593          	addi	a1,gp,-1104 # 800032b0 <bitcount_bits_t1>
    80000d62:	       972e                	add	a4,a4,a1
    80000d64:	       00855793          	srli	a5,a0,0x8
    80000d68:	       00074503          	lbu	a0,0(a4)
    80000d6c:	[38;5;152m/[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[0m cf91                	beqz	a5,80000d88 <bitcount_btbl_bitcnt_t1+0x2e>
    80000d6e:	[38;5;152m|[0m      4601                	li	a2,0
    80000d70:	[38;5;152m|[0m  [38;5;168m/->[0m 0ff7f713          	zext.b	a4,a5
    80000d74:	[38;5;152m|[0m  [38;5;168m|[0m   972e                	add	a4,a4,a1
    80000d76:	[38;5;152m|[0m  [38;5;168m|[0m   00074703          	lbu	a4,0(a4)
    80000d7a:	[38;5;152m|[0m  [38;5;168m|[0m   83a1                	srli	a5,a5,0x8
    80000d7c:	[38;5;152m|[0m  [38;5;168m|[0m   9e29                	addw	a2,a2,a0
    80000d7e:	[38;5;152m|[0m  [38;5;168m|[0m   0007051b          	sext.w	a0,a4
    80000d82:	[38;5;152m|[0m  [38;5;168m\--[0m f7fd                	bnez	a5,80000d70 <bitcount_btbl_bitcnt_t1+0x16>
    80000d84:	[38;5;152m|[0m      00e6053b          	addw	a0,a2,a4
    80000d88:	[38;5;152m\[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m-[38;5;152m>[0m 8082                	ret

0000000080000d8a <_iprintf_r>:
    80000d8a:	    711d                	addi	sp,sp,-96
    80000d8c:	    f022                	sd	s0,32(sp)
    80000d8e:	    ec26                	sd	s1,24(sp)
    80000d90:	    f406                	sd	ra,40(sp)
    80000d92:	    f832                	sd	a2,48(sp)
    80000d94:	    fc36                	sd	a3,56(sp)
    80000d96:	    e0ba                	sd	a4,64(sp)
    80000d98:	    e4be                	sd	a5,72(sp)
    80000d9a:	    e8c2                	sd	a6,80(sp)
    80000d9c:	    ecc6                	sd	a7,88(sp)
    80000d9e:	    842a                	mv	s0,a0
    80000da0:	    84ae                	mv	s1,a1
    80000da2:	[38;5;154m/[38;5;154m-[38;5;154m-[0m c509                	beqz	a0,80000dac <_iprintf_r+0x22>
    80000da4:	[38;5;154m|[0m   591c                	lw	a5,48(a0)
    80000da6:	[38;5;154m+[38;5;154m-[38;5;154m-[0m e399                	bnez	a5,80000dac <_iprintf_r+0x22>
    80000da8:	[38;5;154m|[0m   122000ef          	jal	ra,80000eca <__sinit>
    80000dac:	[38;5;154m\[38;5;154m-[38;5;154m>[0m 680c                	ld	a1,16(s0)
    80000dae:	    1814                	addi	a3,sp,48
    80000db0:	    8626                	mv	a2,s1
    80000db2:	    8522                	mv	a0,s0
    80000db4:	    e436                	sd	a3,8(sp)
    80000db6:	    4a4000ef          	jal	ra,8000125a <_vfiprintf_r>
    80000dba:	    70a2                	ld	ra,40(sp)
    80000dbc:	    7402                	ld	s0,32(sp)
    80000dbe:	    64e2                	ld	s1,24(sp)
    80000dc0:	    6125                	addi	sp,sp,96
    80000dc2:	    8082                	ret

0000000080000dc4 <iprintf>:
    80000dc4:	    7159                	addi	sp,sp,-112
    80000dc6:	    f022                	sd	s0,32(sp)
    80000dc8:	    f406                	sd	ra,40(sp)
    80000dca:	    842a                	mv	s0,a0
    80000dcc:	    fc2e                	sd	a1,56(sp)
    80000dce:	    e0b2                	sd	a2,64(sp)
    80000dd0:	    e4b6                	sd	a3,72(sp)
    80000dd2:	    e8ba                	sd	a4,80(sp)
    80000dd4:	    ecbe                	sd	a5,88(sp)
    80000dd6:	    f0c2                	sd	a6,96(sp)
    80000dd8:	    f4c6                	sd	a7,104(sp)
    80000dda:	    00002517          	auipc	a0,0x2
    80000dde:	    12653503          	ld	a0,294(a0) # 80002f00 <_impure_ptr>
    80000de2:	[38;5;177m/[38;5;177m-[38;5;177m-[0m c519                	beqz	a0,80000df0 <iprintf+0x2c>
    80000de4:	[38;5;177m|[0m   591c                	lw	a5,48(a0)
    80000de6:	[38;5;177m+[38;5;177m-[38;5;177m-[0m e789                	bnez	a5,80000df0 <iprintf+0x2c>
    80000de8:	[38;5;177m|[0m   e42a                	sd	a0,8(sp)
    80000dea:	[38;5;177m|[0m   0e0000ef          	jal	ra,80000eca <__sinit>
    80000dee:	[38;5;177m|[0m   6522                	ld	a0,8(sp)
    80000df0:	[38;5;177m\[38;5;177m-[38;5;177m>[0m 690c                	ld	a1,16(a0)
    80000df2:	    1834                	addi	a3,sp,56
    80000df4:	    8622                	mv	a2,s0
    80000df6:	    ec36                	sd	a3,24(sp)
    80000df8:	    462000ef          	jal	ra,8000125a <_vfiprintf_r>
    80000dfc:	    70a2                	ld	ra,40(sp)
    80000dfe:	    7402                	ld	s0,32(sp)
    80000e00:	    6165                	addi	sp,sp,112
    80000e02:	    8082                	ret

0000000080000e04 <__fp_lock>:
    80000e04:	4501                	li	a0,0
    80000e06:	8082                	ret

0000000080000e08 <std>:
    80000e08:	1141                	addi	sp,sp,-16
    80000e0a:	e022                	sd	s0,0(sp)
    80000e0c:	e406                	sd	ra,8(sp)
    80000e0e:	842a                	mv	s0,a0
    80000e10:	00b51823          	sh	a1,16(a0)
    80000e14:	00c51923          	sh	a2,18(a0)
    80000e18:	00053023          	sd	zero,0(a0)
    80000e1c:	00053423          	sd	zero,8(a0)
    80000e20:	0a052623          	sw	zero,172(a0)
    80000e24:	00053c23          	sd	zero,24(a0)
    80000e28:	02052023          	sw	zero,32(a0)
    80000e2c:	02052423          	sw	zero,40(a0)
    80000e30:	4621                	li	a2,8
    80000e32:	4581                	li	a1,0
    80000e34:	0a450513          	addi	a0,a0,164
    80000e38:	29a000ef          	jal	ra,800010d2 <memset>
    80000e3c:	00000797          	auipc	a5,0x0
    80000e40:	70478793          	addi	a5,a5,1796 # 80001540 <__sread>
    80000e44:	e03c                	sd	a5,64(s0)
    80000e46:	00000797          	auipc	a5,0x0
    80000e4a:	73078793          	addi	a5,a5,1840 # 80001576 <__swrite>
    80000e4e:	e43c                	sd	a5,72(s0)
    80000e50:	00000797          	auipc	a5,0x0
    80000e54:	77678793          	addi	a5,a5,1910 # 800015c6 <__sseek>
    80000e58:	e83c                	sd	a5,80(s0)
    80000e5a:	00000797          	auipc	a5,0x0
    80000e5e:	7a478793          	addi	a5,a5,1956 # 800015fe <__sclose>
    80000e62:	60a2                	ld	ra,8(sp)
    80000e64:	fc00                	sd	s0,56(s0)
    80000e66:	ec3c                	sd	a5,88(s0)
    80000e68:	6402                	ld	s0,0(sp)
    80000e6a:	0141                	addi	sp,sp,16
    80000e6c:	8082                	ret

0000000080000e6e <_cleanup_r>:
    80000e6e:	00001597          	auipc	a1,0x1
    80000e72:	afc58593          	addi	a1,a1,-1284 # 8000196a <_fflush_r>
    80000e76:	aac5                	j	80001066 <_fwalk_reent>

0000000080000e78 <__fp_unlock>:
    80000e78:	4501                	li	a0,0
    80000e7a:	8082                	ret

0000000080000e7c <__sfmoreglue>:
    80000e7c:	    1101                	addi	sp,sp,-32
    80000e7e:	    e426                	sd	s1,8(sp)
    80000e80:	    0b000793          	li	a5,176
    80000e84:	    fff5849b          	addiw	s1,a1,-1
    80000e88:	    02f484b3          	mul	s1,s1,a5
    80000e8c:	    e04a                	sd	s2,0(sp)
    80000e8e:	    892e                	mv	s2,a1
    80000e90:	    e822                	sd	s0,16(sp)
    80000e92:	    ec06                	sd	ra,24(sp)
    80000e94:	    0c848593          	addi	a1,s1,200
    80000e98:	    24a000ef          	jal	ra,800010e2 <_malloc_r>
    80000e9c:	    842a                	mv	s0,a0
    80000e9e:	[38;5;206m/--[0m cd01                	beqz	a0,80000eb6 <__sfmoreglue+0x3a>
    80000ea0:	[38;5;206m|[0m   00053023          	sd	zero,0(a0)
    80000ea4:	[38;5;206m|[0m   01252423          	sw	s2,8(a0)
    80000ea8:	[38;5;206m|[0m   0561                	addi	a0,a0,24
    80000eaa:	[38;5;206m|[0m   e808                	sd	a0,16(s0)
    80000eac:	[38;5;206m|[0m   0b048613          	addi	a2,s1,176
    80000eb0:	[38;5;206m|[0m   4581                	li	a1,0
    80000eb2:	[38;5;206m|[0m   220000ef          	jal	ra,800010d2 <memset>
    80000eb6:	[38;5;206m\->[0m 60e2                	ld	ra,24(sp)
    80000eb8:	    8522                	mv	a0,s0
    80000eba:	    6442                	ld	s0,16(sp)
    80000ebc:	    64a2                	ld	s1,8(sp)
    80000ebe:	    6902                	ld	s2,0(sp)
    80000ec0:	    6105                	addi	sp,sp,32
    80000ec2:	    8082                	ret

0000000080000ec4 <_cleanup>:
    80000ec4:	8201b503          	ld	a0,-2016(gp) # 80002f20 <_global_impure_ptr>
    80000ec8:	b75d                	j	80000e6e <_cleanup_r>

0000000080000eca <__sinit>:
    80000eca:	       591c                	lw	a5,48(a0)
    80000ecc:	[38;5;139m/[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[0m e7bd                	bnez	a5,80000f3a <__sinit+0x70>
    80000ece:	[38;5;139m|[0m      1141                	addi	sp,sp,-16
    80000ed0:	[38;5;139m|[0m      e022                	sd	s0,0(sp)
    80000ed2:	[38;5;139m|[0m      e406                	sd	ra,8(sp)
    80000ed4:	[38;5;139m|[0m      00000797          	auipc	a5,0x0
    80000ed8:	[38;5;139m|[0m      f9a78793          	addi	a5,a5,-102 # 80000e6e <_cleanup_r>
    80000edc:	[38;5;139m|[0m      e53c                	sd	a5,72(a0)
    80000ede:	[38;5;139m|[0m      08053023          	sd	zero,128(a0)
    80000ee2:	[38;5;139m|[0m      08052423          	sw	zero,136(a0)
    80000ee6:	[38;5;139m|[0m      08053823          	sd	zero,144(a0)
    80000eea:	[38;5;139m|[0m      8201b783          	ld	a5,-2016(gp) # 80002f20 <_global_impure_ptr>
    80000eee:	[38;5;139m|[0m      842a                	mv	s0,a0
    80000ef0:	[38;5;139m|[0m  [38;5;151m/[38;5;151m-[38;5;151m-[0m 00f51463          	bne	a0,a5,80000ef8 <__sinit+0x2e>
    80000ef4:	[38;5;139m|[0m  [38;5;151m|[0m   4785                	li	a5,1
    80000ef6:	[38;5;139m|[0m  [38;5;151m|[0m   d91c                	sw	a5,48(a0)
    80000ef8:	[38;5;139m|[0m  [38;5;151m\[38;5;151m-[38;5;151m>[0m 8522                	mv	a0,s0
    80000efa:	[38;5;139m|[0m      042000ef          	jal	ra,80000f3c <__sfp>
    80000efe:	[38;5;139m|[0m      e408                	sd	a0,8(s0)
    80000f00:	[38;5;139m|[0m      8522                	mv	a0,s0
    80000f02:	[38;5;139m|[0m      03a000ef          	jal	ra,80000f3c <__sfp>
    80000f06:	[38;5;139m|[0m      e808                	sd	a0,16(s0)
    80000f08:	[38;5;139m|[0m      8522                	mv	a0,s0
    80000f0a:	[38;5;139m|[0m      032000ef          	jal	ra,80000f3c <__sfp>
    80000f0e:	[38;5;139m|[0m      ec08                	sd	a0,24(s0)
    80000f10:	[38;5;139m|[0m      6408                	ld	a0,8(s0)
    80000f12:	[38;5;139m|[0m      4601                	li	a2,0
    80000f14:	[38;5;139m|[0m      4591                	li	a1,4
    80000f16:	[38;5;139m|[0m      ef3ff0ef          	jal	ra,80000e08 <std>
    80000f1a:	[38;5;139m|[0m      6808                	ld	a0,16(s0)
    80000f1c:	[38;5;139m|[0m      4605                	li	a2,1
    80000f1e:	[38;5;139m|[0m      45a5                	li	a1,9
    80000f20:	[38;5;139m|[0m      ee9ff0ef          	jal	ra,80000e08 <std>
    80000f24:	[38;5;139m|[0m      6c08                	ld	a0,24(s0)
    80000f26:	[38;5;139m|[0m      4609                	li	a2,2
    80000f28:	[38;5;139m|[0m      45c9                	li	a1,18
    80000f2a:	[38;5;139m|[0m      edfff0ef          	jal	ra,80000e08 <std>
    80000f2e:	[38;5;139m|[0m      4785                	li	a5,1
    80000f30:	[38;5;139m|[0m      60a2                	ld	ra,8(sp)
    80000f32:	[38;5;139m|[0m      d81c                	sw	a5,48(s0)
    80000f34:	[38;5;139m|[0m      6402                	ld	s0,0(sp)
    80000f36:	[38;5;139m|[0m      0141                	addi	sp,sp,16
    80000f38:	[38;5;139m|[0m      8082                	ret
    80000f3a:	[38;5;139m\[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m>[0m 8082                	ret

0000000080000f3c <__sfp>:
    80000f3c:	                1101                	addi	sp,sp,-32
    80000f3e:	                e426                	sd	s1,8(sp)
    80000f40:	                8201b483          	ld	s1,-2016(gp) # 80002f20 <_global_impure_ptr>
    80000f44:	                589c                	lw	a5,48(s1)
    80000f46:	                e04a                	sd	s2,0(sp)
    80000f48:	                ec06                	sd	ra,24(sp)
    80000f4a:	                e822                	sd	s0,16(sp)
    80000f4c:	                892a                	mv	s2,a0
    80000f4e:	            [38;5;166m/--[0m e781                	bnez	a5,80000f56 <__sfp+0x1a>
    80000f50:	            [38;5;166m|[0m   8526                	mv	a0,s1
    80000f52:	            [38;5;166m|[0m   f79ff0ef          	jal	ra,80000eca <__sinit>
    80000f56:	            [38;5;166m\->[0m 08048493          	addi	s1,s1,128
    80000f5a:	         [38;5;185m/---->[0m 6880                	ld	s0,16(s1)
    80000f5c:	         [38;5;185m|[0m      449c                	lw	a5,8(s1)
    80000f5e:	   [38;5;129m/[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;185m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m>[0m 37fd                	addiw	a5,a5,-1
    80000f60:	   [38;5;129m|[0m     [38;5;185m|[0m  [38;5;209m/[38;5;209m-[38;5;209m-[0m 0007d663          	bgez	a5,80000f6c <__sfp+0x30>
    80000f64:	   [38;5;129m|[0m     [38;5;185m|[0m  [38;5;209m|[0m   609c                	ld	a5,0(s1)
    80000f66:	   [38;5;129m|[0m  [38;5;127m/--[38;5;185m|[38;5;127m--[38;5;209m|[38;5;127m--[0m cfa9                	beqz	a5,80000fc0 <__sfp+0x84>
    80000f68:	[38;5;193m/--[38;5;129m|[38;5;193m--[38;5;127m|[38;5;193m--[38;5;185m|[38;5;193m--[38;5;209m|[38;5;193m->[0m 6084                	ld	s1,0(s1)
    80000f6a:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;185m\--[38;5;209m|[38;5;185m--[0m bfc5                	j	80000f5a <__sfp+0x1e>
    80000f6c:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m     [38;5;209m\[38;5;209m-[38;5;209m>[0m 01041703          	lh	a4,16(s0)
    80000f70:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m/-----[0m e729                	bnez	a4,80000fba <__sfp+0x7e>
    80000f72:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      77c1                	lui	a5,0xffff0
    80000f74:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      0785                	addi	a5,a5,1 # ffffffffffff0001 <__heap_end+0xffffffff7ffcc001>
    80000f76:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      0a042623          	sw	zero,172(s0)
    80000f7a:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      00043023          	sd	zero,0(s0)
    80000f7e:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      00043423          	sd	zero,8(s0)
    80000f82:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      c81c                	sw	a5,16(s0)
    80000f84:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      00043c23          	sd	zero,24(s0)
    80000f88:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      02042023          	sw	zero,32(s0)
    80000f8c:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      02042423          	sw	zero,40(s0)
    80000f90:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      4621                	li	a2,8
    80000f92:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      4581                	li	a1,0
    80000f94:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      0a440513          	addi	a0,s0,164
    80000f98:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      13a000ef          	jal	ra,800010d2 <memset>
    80000f9c:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      06043023          	sd	zero,96(s0)
    80000fa0:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      06042423          	sw	zero,104(s0)
    80000fa4:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      08043023          	sd	zero,128(s0)
    80000fa8:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m      08042423          	sw	zero,136(s0)
    80000fac:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m/[38;5;138m-[38;5;138m>[0m 60e2                	ld	ra,24(sp)
    80000fae:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   8522                	mv	a0,s0
    80000fb0:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   6442                	ld	s0,16(sp)
    80000fb2:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   64a2                	ld	s1,8(sp)
    80000fb4:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   6902                	ld	s2,0(sp)
    80000fb6:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   6105                	addi	sp,sp,32
    80000fb8:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m|[0m  [38;5;138m|[0m   8082                	ret
    80000fba:	[38;5;193m|[0m  [38;5;129m|[0m  [38;5;127m|[0m  [38;5;200m\--[38;5;138m|[38;5;200m->[0m 0b040413          	addi	s0,s0,176
    80000fbe:	[38;5;193m|[0m  [38;5;129m\[38;5;129m-[38;5;129m-[38;5;127m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;138m|[38;5;129m-[38;5;129m-[0m b745                	j	80000f5e <__sfp+0x22>
    80000fc0:	[38;5;193m|[0m     [38;5;127m\-----[38;5;138m|[38;5;127m->[0m 4591                	li	a1,4
    80000fc2:	[38;5;193m|[0m           [38;5;138m|[0m   854a                	mv	a0,s2
    80000fc4:	[38;5;193m|[0m           [38;5;138m|[0m   eb9ff0ef          	jal	ra,80000e7c <__sfmoreglue>
    80000fc8:	[38;5;193m|[0m           [38;5;138m|[0m   e088                	sd	a0,0(s1)
    80000fca:	[38;5;193m|[0m           [38;5;138m|[0m   842a                	mv	s0,a0
    80000fcc:	[38;5;193m\-----------[38;5;138m|[38;5;193m--[0m fd51                	bnez	a0,80000f68 <__sfp+0x2c>
    80000fce:	            [38;5;138m|[0m   47b1                	li	a5,12
    80000fd0:	            [38;5;138m|[0m   00f92023          	sw	a5,0(s2)
    80000fd4:	            [38;5;138m\[38;5;138m-[38;5;138m-[0m bfe1                	j	80000fac <__sfp+0x70>

0000000080000fd6 <__sfp_lock_acquire>:
    80000fd6:	8082                	ret

0000000080000fd8 <__sfp_lock_release>:
    80000fd8:	8082                	ret

0000000080000fda <__sinit_lock_acquire>:
    80000fda:	8082                	ret

0000000080000fdc <__sinit_lock_release>:
    80000fdc:	8082                	ret

0000000080000fde <__fp_lock_all>:
    80000fde:	00000597          	auipc	a1,0x0
    80000fe2:	e2658593          	addi	a1,a1,-474 # 80000e04 <__fp_lock>
    80000fe6:	00002517          	auipc	a0,0x2
    80000fea:	f1a53503          	ld	a0,-230(a0) # 80002f00 <_impure_ptr>
    80000fee:	a811                	j	80001002 <_fwalk>

0000000080000ff0 <__fp_unlock_all>:
    80000ff0:	00000597          	auipc	a1,0x0
    80000ff4:	e8858593          	addi	a1,a1,-376 # 80000e78 <__fp_unlock>
    80000ff8:	00002517          	auipc	a0,0x2
    80000ffc:	f0853503          	ld	a0,-248(a0) # 80002f00 <_impure_ptr>
    80001000:	a009                	j	80001002 <_fwalk>

0000000080001002 <_fwalk>:
    80001002:	          7139                	addi	sp,sp,-64
    80001004:	          f822                	sd	s0,48(sp)
    80001006:	          f426                	sd	s1,40(sp)
    80001008:	          ec4e                	sd	s3,24(sp)
    8000100a:	          e456                	sd	s5,8(sp)
    8000100c:	          e05a                	sd	s6,0(sp)
    8000100e:	          fc06                	sd	ra,56(sp)
    80001010:	          f04a                	sd	s2,32(sp)
    80001012:	          e852                	sd	s4,16(sp)
    80001014:	          89ae                	mv	s3,a1
    80001016:	          08050413          	addi	s0,a0,128
    8000101a:	          4481                	li	s1,0
    8000101c:	          4a85                	li	s5,1
    8000101e:	          5b7d                	li	s6,-1
    80001020:	      [38;5;212m/->[0m 01043903          	ld	s2,16(s0)
    80001024:	      [38;5;212m|[0m   00842a03          	lw	s4,8(s0)
    80001028:	[38;5;231m/[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;212m|[38;5;231m-[38;5;231m>[0m 3a7d                	addiw	s4,s4,-1
    8000102a:	[38;5;231m|[0m  [38;5;154m/--[38;5;212m|[38;5;154m--[0m 000a5f63          	bgez	s4,80001048 <_fwalk+0x46>
    8000102e:	[38;5;231m|[0m  [38;5;154m|[0m  [38;5;212m|[0m   6000                	ld	s0,0(s0)
    80001030:	[38;5;231m|[0m  [38;5;154m|[0m  [38;5;212m\--[0m f865                	bnez	s0,80001020 <_fwalk+0x1e>
    80001032:	[38;5;231m|[0m  [38;5;154m|[0m      70e2                	ld	ra,56(sp)
    80001034:	[38;5;231m|[0m  [38;5;154m|[0m      7442                	ld	s0,48(sp)
    80001036:	[38;5;231m|[0m  [38;5;154m|[0m      7902                	ld	s2,32(sp)
    80001038:	[38;5;231m|[0m  [38;5;154m|[0m      69e2                	ld	s3,24(sp)
    8000103a:	[38;5;231m|[0m  [38;5;154m|[0m      6a42                	ld	s4,16(sp)
    8000103c:	[38;5;231m|[0m  [38;5;154m|[0m      6aa2                	ld	s5,8(sp)
    8000103e:	[38;5;231m|[0m  [38;5;154m|[0m      6b02                	ld	s6,0(sp)
    80001040:	[38;5;231m|[0m  [38;5;154m|[0m      8526                	mv	a0,s1
    80001042:	[38;5;231m|[0m  [38;5;154m|[0m      74a2                	ld	s1,40(sp)
    80001044:	[38;5;231m|[0m  [38;5;154m|[0m      6121                	addi	sp,sp,64
    80001046:	[38;5;231m|[0m  [38;5;154m|[0m      8082                	ret
    80001048:	[38;5;231m|[0m  [38;5;154m\---->[0m 01095783          	lhu	a5,16(s2)
    8000104c:	[38;5;231m|[0m     [38;5;169m/[38;5;169m-[38;5;169m-[0m 00fafa63          	bgeu	s5,a5,80001060 <_fwalk+0x5e>
    80001050:	[38;5;231m|[0m     [38;5;169m|[0m   01291783          	lh	a5,18(s2)
    80001054:	[38;5;231m|[0m     [38;5;169m+[38;5;169m-[38;5;169m-[0m 01678663          	beq	a5,s6,80001060 <_fwalk+0x5e>
    80001058:	[38;5;231m|[0m     [38;5;169m|[0m   854a                	mv	a0,s2
    8000105a:	[38;5;231m|[0m     [38;5;169m|[0m   9982                	jalr	s3
    8000105c:	[38;5;231m|[0m     [38;5;169m|[0m   8cc9                	or	s1,s1,a0
    8000105e:	[38;5;231m|[0m     [38;5;169m|[0m   2481                	sext.w	s1,s1
    80001060:	[38;5;231m|[0m     [38;5;169m\[38;5;169m-[38;5;169m>[0m 0b090913          	addi	s2,s2,176
    80001064:	[38;5;231m\[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[38;5;231m-[0m b7d1                	j	80001028 <_fwalk+0x26>

0000000080001066 <_fwalk_reent>:
    80001066:	          715d                	addi	sp,sp,-80
    80001068:	          e0a2                	sd	s0,64(sp)
    8000106a:	          fc26                	sd	s1,56(sp)
    8000106c:	          f44e                	sd	s3,40(sp)
    8000106e:	          f052                	sd	s4,32(sp)
    80001070:	          e85a                	sd	s6,16(sp)
    80001072:	          e45e                	sd	s7,8(sp)
    80001074:	          e486                	sd	ra,72(sp)
    80001076:	          f84a                	sd	s2,48(sp)
    80001078:	          ec56                	sd	s5,24(sp)
    8000107a:	          89aa                	mv	s3,a0
    8000107c:	          8a2e                	mv	s4,a1
    8000107e:	          08050493          	addi	s1,a0,128
    80001082:	          4401                	li	s0,0
    80001084:	          4b05                	li	s6,1
    80001086:	          5bfd                	li	s7,-1
    80001088:	      [38;5;201m/->[0m 0104b903          	ld	s2,16(s1)
    8000108c:	      [38;5;201m|[0m   0084aa83          	lw	s5,8(s1)
    80001090:	[38;5;220m/-----[38;5;201m|[38;5;220m->[0m 3afd                	addiw	s5,s5,-1
    80001092:	[38;5;220m|[0m  [38;5;189m/[38;5;189m-[38;5;189m-[38;5;201m|[38;5;189m-[38;5;189m-[0m 020ad063          	bgez	s5,800010b2 <_fwalk_reent+0x4c>
    80001096:	[38;5;220m|[0m  [38;5;189m|[0m  [38;5;201m|[0m   6084                	ld	s1,0(s1)
    80001098:	[38;5;220m|[0m  [38;5;189m|[0m  [38;5;201m\--[0m f8e5                	bnez	s1,80001088 <_fwalk_reent+0x22>
    8000109a:	[38;5;220m|[0m  [38;5;189m|[0m      60a6                	ld	ra,72(sp)
    8000109c:	[38;5;220m|[0m  [38;5;189m|[0m      8522                	mv	a0,s0
    8000109e:	[38;5;220m|[0m  [38;5;189m|[0m      6406                	ld	s0,64(sp)
    800010a0:	[38;5;220m|[0m  [38;5;189m|[0m      74e2                	ld	s1,56(sp)
    800010a2:	[38;5;220m|[0m  [38;5;189m|[0m      7942                	ld	s2,48(sp)
    800010a4:	[38;5;220m|[0m  [38;5;189m|[0m      79a2                	ld	s3,40(sp)
    800010a6:	[38;5;220m|[0m  [38;5;189m|[0m      7a02                	ld	s4,32(sp)
    800010a8:	[38;5;220m|[0m  [38;5;189m|[0m      6ae2                	ld	s5,24(sp)
    800010aa:	[38;5;220m|[0m  [38;5;189m|[0m      6b42                	ld	s6,16(sp)
    800010ac:	[38;5;220m|[0m  [38;5;189m|[0m      6ba2                	ld	s7,8(sp)
    800010ae:	[38;5;220m|[0m  [38;5;189m|[0m      6161                	addi	sp,sp,80
    800010b0:	[38;5;220m|[0m  [38;5;189m|[0m      8082                	ret
    800010b2:	[38;5;220m|[0m  [38;5;189m\[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m>[0m 01095783          	lhu	a5,16(s2)
    800010b6:	[38;5;220m|[0m     [38;5;206m/[38;5;206m-[38;5;206m-[0m 00fb7b63          	bgeu	s6,a5,800010cc <_fwalk_reent+0x66>
    800010ba:	[38;5;220m|[0m     [38;5;206m|[0m   01291783          	lh	a5,18(s2)
    800010be:	[38;5;220m|[0m     [38;5;206m+[38;5;206m-[38;5;206m-[0m 01778763          	beq	a5,s7,800010cc <_fwalk_reent+0x66>
    800010c2:	[38;5;220m|[0m     [38;5;206m|[0m   85ca                	mv	a1,s2
    800010c4:	[38;5;220m|[0m     [38;5;206m|[0m   854e                	mv	a0,s3
    800010c6:	[38;5;220m|[0m     [38;5;206m|[0m   9a02                	jalr	s4
    800010c8:	[38;5;220m|[0m     [38;5;206m|[0m   8c49                	or	s0,s0,a0
    800010ca:	[38;5;220m|[0m     [38;5;206m|[0m   2401                	sext.w	s0,s0
    800010cc:	[38;5;220m|[0m     [38;5;206m\[38;5;206m-[38;5;206m>[0m 0b090913          	addi	s2,s2,176
    800010d0:	[38;5;220m\--------[0m b7c1                	j	80001090 <_fwalk_reent+0x2a>

00000000800010d2 <memset>:
    800010d2:	       832a                	mv	t1,a0
    800010d4:	[38;5;220m/-----[0m c611                	beqz	a2,800010e0 <memset+0xe>
    800010d6:	[38;5;220m|[0m  [38;5;221m/[38;5;221m-[38;5;221m>[0m 00b30023          	sb	a1,0(t1)
    800010da:	[38;5;220m|[0m  [38;5;221m|[0m   167d                	addi	a2,a2,-1
    800010dc:	[38;5;220m|[0m  [38;5;221m|[0m   0305                	addi	t1,t1,1
    800010de:	[38;5;220m|[0m  [38;5;221m\[38;5;221m-[38;5;221m-[0m fe65                	bnez	a2,800010d6 <memset+0x4>
    800010e0:	[38;5;220m\---->[0m 8082                	ret

00000000800010e2 <_malloc_r>:
    800010e2:	                         00758793          	addi	a5,a1,7
    800010e6:	                         7179                	addi	sp,sp,-48
    800010e8:	                         9be1                	andi	a5,a5,-8
    800010ea:	                         ec26                	sd	s1,24(sp)
    800010ec:	                         e84a                	sd	s2,16(sp)
    800010ee:	                         f406                	sd	ra,40(sp)
    800010f0:	                         f022                	sd	s0,32(sp)
    800010f2:	                         e44e                	sd	s3,8(sp)
    800010f4:	                         07a1                	addi	a5,a5,8
    800010f6:	                         4741                	li	a4,16
    800010f8:	                         84aa                	mv	s1,a0
    800010fa:	                         4941                	li	s2,16
    800010fc:	                     [38;5;216m/[38;5;216m-[38;5;216m-[0m 00e7e363          	bltu	a5,a4,80001102 <_malloc_r+0x20>
    80001100:	                     [38;5;216m|[0m   893e                	mv	s2,a5
    80001102:	                     [38;5;216m\[38;5;216m-[38;5;216m>[0m 80000737          	lui	a4,0x80000
    80001106:	                         fff74713          	not	a4,a4
    8000110a:	                     [38;5;148m/--[0m 00f76463          	bltu	a4,a5,80001112 <_malloc_r+0x30>
    8000110e:	                  [38;5;201m/--[38;5;148m|[38;5;201m--[0m 00b97c63          	bgeu	s2,a1,80001126 <_malloc_r+0x44>
    80001112:	                  [38;5;201m|[0m  [38;5;148m\->[0m 47b1                	li	a5,12
    80001114:	                  [38;5;201m|[0m      c09c                	sw	a5,0(s1)
    80001116:	               [38;5;221m/--[38;5;201m|[38;5;221m---->[0m 4501                	li	a0,0
    80001118:	[38;5;230m/--------------[38;5;221m|[38;5;230m--[38;5;201m|[38;5;230m---->[0m 70a2                	ld	ra,40(sp)
    8000111a:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      7402                	ld	s0,32(sp)
    8000111c:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      64e2                	ld	s1,24(sp)
    8000111e:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      6942                	ld	s2,16(sp)
    80001120:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      69a2                	ld	s3,8(sp)
    80001122:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      6145                	addi	sp,sp,48
    80001124:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m|[0m      8082                	ret
    80001126:	[38;5;230m|[0m              [38;5;221m|[0m  [38;5;201m\---->[0m 8526                	mv	a0,s1
    80001128:	[38;5;230m|[0m              [38;5;221m|[0m         527000ef          	jal	ra,80001e4e <__malloc_lock>
    8000112c:	[38;5;230m|[0m              [38;5;221m|[0m         88818693          	addi	a3,gp,-1912 # 80002f88 <__malloc_free_list>
    80001130:	[38;5;230m|[0m              [38;5;221m|[0m         6298                	ld	a4,0(a3)
    80001132:	[38;5;230m|[0m              [38;5;221m|[0m         843a                	mv	s0,a4
    80001134:	[38;5;230m|[0m  [38;5;177m/[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;221m|[38;5;177m-[38;5;177m-[38;5;217m/----[38;5;177mX[0m e41d                	bnez	s0,80001162 <_malloc_r+0x80>
    80001136:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m      88018413          	addi	s0,gp,-1920 # 80002f80 <__malloc_sbrk_start>
    8000113a:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m      601c                	ld	a5,0(s0)
    8000113c:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m/--[0m e791                	bnez	a5,80001148 <_malloc_r+0x66>
    8000113e:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m|[0m   4581                	li	a1,0
    80001140:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m|[0m   8526                	mv	a0,s1
    80001142:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m|[0m   3d6000ef          	jal	ra,80001518 <_sbrk_r>
    80001146:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m|[0m   e008                	sd	a0,0(s0)
    80001148:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m  [38;5;161m\->[0m 85ca                	mv	a1,s2
    8000114a:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m      8526                	mv	a0,s1
    8000114c:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m      3cc000ef          	jal	ra,80001518 <_sbrk_r>
    80001150:	[38;5;230m|[0m  [38;5;177m|[0m           [38;5;221m|[0m  [38;5;217m|[0m      59fd                	li	s3,-1
    80001152:	[38;5;230m|[0m  [38;5;177m|[0m     [38;5;195m/-----[38;5;221m|[38;5;195m--[38;5;217m|[38;5;195m-----[0m 05351e63          	bne	a0,s3,800011ae <_malloc_r+0xcc>
    80001156:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m/[38;5;190m-[38;5;190m-[38;5;195m|[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;221m|[38;5;190m-[38;5;190m-[38;5;217m|[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m>[0m 47b1                	li	a5,12
    80001158:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;221m|[0m  [38;5;217m|[0m      c09c                	sw	a5,0(s1)
    8000115a:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;221m|[0m  [38;5;217m|[0m      8526                	mv	a0,s1
    8000115c:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;221m|[0m  [38;5;217m|[0m      4f5000ef          	jal	ra,80001e50 <__malloc_unlock>
    80001160:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;221m\--[38;5;217m|[38;5;221m-----[0m bf5d                	j	80001116 <_malloc_r+0x34>
    80001162:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m        [38;5;217m\---->[0m 601c                	ld	a5,0(s0)
    80001164:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m               412787bb          	subw	a5,a5,s2
    80001168:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;202m/[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[0m 0407c063          	bltz	a5,800011a8 <_malloc_r+0xc6>
    8000116c:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;202m|[0m         463d                	li	a2,15
    8000116e:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;202m|[0m     [38;5;193m/[38;5;193m-[38;5;193m-[0m 00f65763          	bge	a2,a5,8000117c <_malloc_r+0x9a>
    80001172:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;202m|[0m     [38;5;193m|[0m   e01c                	sd	a5,0(s0)
    80001174:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m     [38;5;202m|[0m     [38;5;193m|[0m   943e                	add	s0,s0,a5
    80001176:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m/--[38;5;202m|[38;5;225m-----[38;5;193m|[38;5;225m->[0m 01243023          	sd	s2,0(s0)
    8000117a:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m/--[38;5;193m|[38;5;206m--[0m a029                	j	80001184 <_malloc_r+0xa2>
    8000117c:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;193m\[38;5;193m-[38;5;193m>[0m 641c                	ld	a5,8(s0)
    8000117e:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m/--[0m 02871363          	bne	a4,s0,800011a4 <_malloc_r+0xc2>
    80001182:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   e29c                	sd	a5,0(a3)
    80001184:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m>--[38;5;220m|[38;5;206m->[0m 8526                	mv	a0,s1
    80001186:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   4cb000ef          	jal	ra,80001e50 <__malloc_unlock>
    8000118a:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   00f40513          	addi	a0,s0,15
    8000118e:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   00840793          	addi	a5,s0,8
    80001192:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   9961                	andi	a0,a0,-8
    80001194:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   40f507bb          	subw	a5,a0,a5
    80001198:	[38;5;230m+--[38;5;177m|[38;5;230m--[38;5;190m|[38;5;230m--[38;5;195m|[38;5;230m--[38;5;225m|[38;5;230m--[38;5;202m|[38;5;230m--[38;5;206m|[38;5;230m--[38;5;220m|[38;5;230m--[0m d3c1                	beqz	a5,80001118 <_malloc_r+0x36>
    8000119a:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   943e                	add	s0,s0,a5
    8000119c:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   40f007bb          	negw	a5,a5
    800011a0:	[38;5;230m|[0m  [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m|[0m   e01c                	sd	a5,0(s0)
    800011a2:	[38;5;230m\--[38;5;177m|[38;5;230m--[38;5;190m|[38;5;230m--[38;5;195m|[38;5;230m--[38;5;225m|[38;5;230m--[38;5;202m|[38;5;230m--[38;5;206m|[38;5;230m--[38;5;220m|[38;5;230m--[0m bf9d                	j	80001118 <_malloc_r+0x36>
    800011a4:	   [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m|[0m  [38;5;220m\->[0m e71c                	sd	a5,8(a4)
    800011a6:	   [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m|[0m  [38;5;206m\-----[0m bff9                	j	80001184 <_malloc_r+0xa2>
    800011a8:	   [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m  [38;5;202m\[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m-[38;5;202m>[0m 8722                	mv	a4,s0
    800011aa:	   [38;5;177m|[0m  [38;5;190m|[0m  [38;5;195m|[0m  [38;5;225m|[0m            6400                	ld	s0,8(s0)
    800011ac:	   [38;5;177m\[38;5;177m-[38;5;177m-[38;5;190m|[38;5;177m-[38;5;177m-[38;5;195m|[38;5;177m-[38;5;177m-[38;5;225m|[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[38;5;177m-[0m b761                	j	80001134 <_malloc_r+0x52>
    800011ae:	      [38;5;190m|[0m  [38;5;195m\--[38;5;225m|[38;5;195m---------->[0m 00750413          	addi	s0,a0,7
    800011b2:	      [38;5;190m|[0m     [38;5;225m|[0m            9861                	andi	s0,s0,-8
    800011b4:	      [38;5;190m|[0m     [38;5;225m+-----------[0m fc8501e3          	beq	a0,s0,80001176 <_malloc_r+0x94>
    800011b8:	      [38;5;190m|[0m     [38;5;225m|[0m            40a405b3          	sub	a1,s0,a0
    800011bc:	      [38;5;190m|[0m     [38;5;225m|[0m            8526                	mv	a0,s1
    800011be:	      [38;5;190m|[0m     [38;5;225m|[0m            35a000ef          	jal	ra,80001518 <_sbrk_r>
    800011c2:	      [38;5;190m|[0m     [38;5;225m\-----------[0m fb351ae3          	bne	a0,s3,80001176 <_malloc_r+0x94>
    800011c6:	      [38;5;190m\[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[0m bf41                	j	80001156 <_malloc_r+0x74>

00000000800011c8 <__sfputc_r>:
    800011c8:	       465c                	lw	a5,12(a2)
    800011ca:	       fff7871b          	addiw	a4,a5,-1
    800011ce:	       c658                	sw	a4,12(a2)
    800011d0:	[38;5;143m/-----[0m 00075963          	bgez	a4,800011e2 <__sfputc_r+0x1a>
    800011d4:	[38;5;143m|[0m      561c                	lw	a5,40(a2)
    800011d6:	[38;5;143m|[0m  [38;5;194m/[38;5;194m-[38;5;194m-[0m 00f74563          	blt	a4,a5,800011e0 <__sfputc_r+0x18>
    800011da:	[38;5;143m|[0m  [38;5;194m|[0m   47a9                	li	a5,10
    800011dc:	[38;5;143m+--[38;5;194m|[38;5;143m--[0m 00f59363          	bne	a1,a5,800011e2 <__sfputc_r+0x1a>
    800011e0:	[38;5;143m|[0m  [38;5;194m\[38;5;194m-[38;5;194m>[0m a115                	j	80001604 <__swbuf_r>
    800011e2:	[38;5;143m\---->[0m 621c                	ld	a5,0(a2)
    800011e4:	       852e                	mv	a0,a1
    800011e6:	       00178713          	addi	a4,a5,1
    800011ea:	       e218                	sd	a4,0(a2)
    800011ec:	       00b78023          	sb	a1,0(a5)
    800011f0:	       8082                	ret

00000000800011f2 <__sfputs_r>:
    800011f2:	          7179                	addi	sp,sp,-48
    800011f4:	          f022                	sd	s0,32(sp)
    800011f6:	          ec26                	sd	s1,24(sp)
    800011f8:	          e84a                	sd	s2,16(sp)
    800011fa:	          e44e                	sd	s3,8(sp)
    800011fc:	          e052                	sd	s4,0(sp)
    800011fe:	          f406                	sd	ra,40(sp)
    80001200:	          892a                	mv	s2,a0
    80001202:	          89ae                	mv	s3,a1
    80001204:	          8432                	mv	s0,a2
    80001206:	          00d604b3          	add	s1,a2,a3
    8000120a:	          5a7d                	li	s4,-1
    8000120c:	[38;5;225m/-----[38;5;160m/[38;5;160m-[38;5;225mX[0m 00941463          	bne	s0,s1,80001214 <__sfputs_r+0x22>
    80001210:	[38;5;225m|[0m     [38;5;160m|[0m   4501                	li	a0,0
    80001212:	[38;5;225m|[0m  [38;5;186m/--[38;5;160m|[38;5;186m--[0m a811                	j	80001226 <__sfputs_r+0x34>
    80001214:	[38;5;225m|[0m  [38;5;186m|[0m  [38;5;160m\[38;5;160m-[38;5;160m>[0m 00044583          	lbu	a1,0(s0)
    80001218:	[38;5;225m|[0m  [38;5;186m|[0m      864e                	mv	a2,s3
    8000121a:	[38;5;225m|[0m  [38;5;186m|[0m      854a                	mv	a0,s2
    8000121c:	[38;5;225m|[0m  [38;5;186m|[0m      fadff0ef          	jal	ra,800011c8 <__sfputc_r>
    80001220:	[38;5;225m|[0m  [38;5;186m|[0m      0405                	addi	s0,s0,1
    80001222:	[38;5;225m\--[38;5;186m|[38;5;225m-----[0m ff4515e3          	bne	a0,s4,8000120c <__sfputs_r+0x1a>
    80001226:	   [38;5;186m\---->[0m 70a2                	ld	ra,40(sp)
    80001228:	          7402                	ld	s0,32(sp)
    8000122a:	          64e2                	ld	s1,24(sp)
    8000122c:	          6942                	ld	s2,16(sp)
    8000122e:	          69a2                	ld	s3,8(sp)
    80001230:	          6a02                	ld	s4,0(sp)
    80001232:	          6145                	addi	sp,sp,48
    80001234:	          8082                	ret

0000000080001236 <__sprint_r>:
    80001236:	       6a1c                	ld	a5,16(a2)
    80001238:	       1141                	addi	sp,sp,-16
    8000123a:	       e022                	sd	s0,0(sp)
    8000123c:	       e406                	sd	ra,8(sp)
    8000123e:	       8432                	mv	s0,a2
    80001240:	[38;5;136m/-----[0m cb99                	beqz	a5,80001256 <__sprint_r+0x20>
    80001242:	[38;5;136m|[0m      7ac000ef          	jal	ra,800019ee <__sfvwrite_r>
    80001246:	[38;5;136m|[0m      00043823          	sd	zero,16(s0)
    8000124a:	[38;5;136m|[0m  [38;5;145m/[38;5;145m-[38;5;145m>[0m 60a2                	ld	ra,8(sp)
    8000124c:	[38;5;136m|[0m  [38;5;145m|[0m   00042423          	sw	zero,8(s0)
    80001250:	[38;5;136m|[0m  [38;5;145m|[0m   6402                	ld	s0,0(sp)
    80001252:	[38;5;136m|[0m  [38;5;145m|[0m   0141                	addi	sp,sp,16
    80001254:	[38;5;136m|[0m  [38;5;145m|[0m   8082                	ret
    80001256:	[38;5;136m\--[38;5;145m|[38;5;136m->[0m 4501                	li	a0,0
    80001258:	   [38;5;145m\[38;5;145m-[38;5;145m-[0m bfcd                	j	8000124a <__sprint_r+0x14>

000000008000125a <_vfiprintf_r>:
    8000125a:	                                              7155                	addi	sp,sp,-208
    8000125c:	                                              e1a2                	sd	s0,192(sp)
    8000125e:	                                              fd26                	sd	s1,184(sp)
    80001260:	                                              f94a                	sd	s2,176(sp)
    80001262:	                                              f54e                	sd	s3,168(sp)
    80001264:	                                              f152                	sd	s4,160(sp)
    80001266:	                                              e586                	sd	ra,200(sp)
    80001268:	                                              ed56                	sd	s5,152(sp)
    8000126a:	                                              e95a                	sd	s6,144(sp)
    8000126c:	                                              e55e                	sd	s7,136(sp)
    8000126e:	                                              e162                	sd	s8,128(sp)
    80001270:	                                              fce6                	sd	s9,120(sp)
    80001272:	                                              f8ea                	sd	s10,112(sp)
    80001274:	                                              89aa                	mv	s3,a0
    80001276:	                                              84ae                	mv	s1,a1
    80001278:	                                              8932                	mv	s2,a2
    8000127a:	                                              8436                	mv	s0,a3
    8000127c:	                                              4a01                	li	s4,0
    8000127e:	                                          [38;5;130m/--[0m c509                	beqz	a0,80001288 <_vfiprintf_r+0x2e>
    80001280:	                                          [38;5;130m|[0m   591c                	lw	a5,48(a0)
    80001282:	                                          [38;5;130m+--[0m e399                	bnez	a5,80001288 <_vfiprintf_r+0x2e>
    80001284:	                                          [38;5;130m|[0m   c47ff0ef          	jal	ra,80000eca <__sinit>
    80001288:	                                          [38;5;130m\->[0m 00002797          	auipc	a5,0x2
    8000128c:	                                              a9878793          	addi	a5,a5,-1384 # 80002d20 <__sf_fake_stdin>
    80001290:	                     [38;5;155m/[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[0m 0cf49e63          	bne	s1,a5,8000136c <_vfiprintf_r+0x112>
    80001294:	                     [38;5;155m|[0m                        0089b483          	ld	s1,8(s3)
    80001298:	      [38;5;170m/--------------[38;5;155m|[38;5;170m---------------------->[0m 0104d783          	lhu	a5,16(s1)
    8000129c:	      [38;5;170m|[0m              [38;5;155m|[0m                        8ba1                	andi	a5,a5,8
    8000129e:	      [38;5;170m|[0m     [38;5;149m/--------[38;5;155m|[38;5;149m-----------------------[0m cbed                	beqz	a5,80001390 <_vfiprintf_r+0x136>
    800012a0:	      [38;5;170m|[0m     [38;5;149m|[0m        [38;5;155m|[0m                        6c9c                	ld	a5,24(s1)
    800012a2:	      [38;5;170m|[0m     [38;5;149m+--------[38;5;155m|[38;5;149m-----------------------[0m c7fd                	beqz	a5,80001390 <_vfiprintf_r+0x136>
    800012a4:	      [38;5;170m|[0m  [38;5;161m/[38;5;161m-[38;5;161m-[38;5;149m|[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;155m|[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m>[0m 02000793          	li	a5,32
    800012a8:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        02f104a3          	sb	a5,41(sp)
    800012ac:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        5afd                	li	s5,-1
    800012ae:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        03000793          	li	a5,48
    800012b2:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        d202                	sw	zero,36(sp)
    800012b4:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        02f10523          	sb	a5,42(sp)
    800012b8:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        e422                	sd	s0,8(sp)
    800012ba:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        02500b93          	li	s7,37
    800012be:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        020a9c13          	slli	s8,s5,0x20
    800012c2:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        00002b17          	auipc	s6,0x2
    800012c6:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        a96b0b13          	addi	s6,s6,-1386 # 80002d58 <__sf_fake_stdin+0x38>
    800012ca:	      [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m        [38;5;155m|[0m                        4c85                	li	s9,1
    800012cc:	   [38;5;150m/[38;5;150m-[38;5;150m-[38;5;170m|[38;5;150m-[38;5;150m-[38;5;161m|[38;5;150m-[38;5;150m-[38;5;149m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;155m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m>[0m 844a                	mv	s0,s2
    800012ce:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m/-----[38;5;155m|[38;5;143m---------------------->[0m 00044783          	lbu	a5,0(s0)
    800012d2:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m     [38;5;155m|[0m                    [38;5;144m/[38;5;144m-[38;5;144m-[0m c399                	beqz	a5,800012d8 <_vfiprintf_r+0x7e>
    800012d4:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m/[38;5;208m-[38;5;208m-[38;5;155m|[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;144m|[38;5;208m-[38;5;208m-[0m 0f779263          	bne	a5,s7,800013b8 <_vfiprintf_r+0x15e>
    800012d8:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;144m\[38;5;144m-[38;5;144m>[0m 41240d3b          	subw	s10,s0,s2
    800012dc:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m/--[0m 000d0e63          	beqz	s10,800012f8 <_vfiprintf_r+0x9e>
    800012e0:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   86ea                	mv	a3,s10
    800012e2:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   864a                	mv	a2,s2
    800012e4:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   85a6                	mv	a1,s1
    800012e6:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   854e                	mv	a0,s3
    800012e8:	   [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   f0bff0ef          	jal	ra,800011f2 <__sfputs_r>
    800012ec:	[38;5;129m/[38;5;129m-[38;5;129m-[38;5;150m|[38;5;129m-[38;5;129m-[38;5;170m|[38;5;129m-[38;5;129m-[38;5;161m|[38;5;129m-[38;5;129m-[38;5;149m|[38;5;129m-[38;5;129m-[38;5;143m|[38;5;129m-[38;5;129m-[38;5;208m|[38;5;129m-[38;5;129m-[38;5;155m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;185m|[38;5;129m-[38;5;129m-[0m 1f550b63          	beq	a0,s5,800014e2 <_vfiprintf_r+0x288>
    800012f0:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   5792                	lw	a5,36(sp)
    800012f2:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   01a787bb          	addw	a5,a5,s10
    800012f6:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m|[0m   d23e                	sw	a5,36(sp)
    800012f8:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                    [38;5;185m\->[0m 00044783          	lbu	a5,0(s0)
    800012fc:	[38;5;129m+[38;5;129m-[38;5;129m-[38;5;150m|[38;5;129m-[38;5;129m-[38;5;170m|[38;5;129m-[38;5;129m-[38;5;161m|[38;5;129m-[38;5;129m-[38;5;149m|[38;5;129m-[38;5;129m-[38;5;143m|[38;5;129m-[38;5;129m-[38;5;208m|[38;5;129m-[38;5;129m-[38;5;155m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[0m 1e078363          	beqz	a5,800014e2 <_vfiprintf_r+0x288>
    80001300:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                        00140913          	addi	s2,s0,1
    80001304:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                        e862                	sd	s8,16(sp)
    80001306:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                        ec02                	sd	zero,24(sp)
    80001308:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                        040109a3          	sb	zero,83(sp)
    8000130c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m                        d482                	sw	zero,104(sp)
    8000130e:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m/---------->[0m 00094583          	lbu	a1,0(s2)
    80001312:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m            4615                	li	a2,5
    80001314:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m            855a                	mv	a0,s6
    80001316:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m            2e3000ef          	jal	ra,80001df8 <memchr>
    8000131a:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m            47c2                	lw	a5,16(sp)
    8000131c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m            00190413          	addi	s0,s2,1
    80001320:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m/[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[0m ed51                	bnez	a0,800013bc <_vfiprintf_r+0x162>
    80001322:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m         0107f713          	andi	a4,a5,16
    80001326:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;147m/[38;5;147m-[38;5;147m-[0m c709                	beqz	a4,80001330 <_vfiprintf_r+0xd6>
    80001328:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;147m|[0m   02000713          	li	a4,32
    8000132c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;147m|[0m   04e109a3          	sb	a4,83(sp)
    80001330:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;147m\[38;5;147m-[38;5;147m>[0m 0087f713          	andi	a4,a5,8
    80001334:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;140m/[38;5;140m-[38;5;140m-[0m c709                	beqz	a4,8000133e <_vfiprintf_r+0xe4>
    80001336:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;140m|[0m   02b00713          	li	a4,43
    8000133a:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;140m|[0m   04e109a3          	sb	a4,83(sp)
    8000133e:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m     [38;5;140m\[38;5;140m-[38;5;140m>[0m 00094683          	lbu	a3,0(s2)
    80001342:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m         02a00713          	li	a4,42
    80001346:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m/-----[0m 08e68363          	beq	a3,a4,800013cc <_vfiprintf_r+0x172>
    8000134a:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      47f2                	lw	a5,28(sp)
    8000134c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      844a                	mv	s0,s2
    8000134e:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      4681                	li	a3,0
    80001350:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      4625                	li	a2,9
    80001352:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m           [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      4829                	li	a6,10
    80001354:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m/[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;188m|[38;5;162m-[38;5;162m-[38;5;190m|[38;5;162m-[38;5;162m-[38;5;206m|[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m>[0m 00044703          	lbu	a4,0(s0)
    80001358:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m        [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      00140513          	addi	a0,s0,1
    8000135c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m        [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      fd07059b          	addiw	a1,a4,-48
    80001360:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m        [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      872e                	mv	a4,a1
    80001362:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m  [38;5;132m/-----[38;5;188m|[38;5;132m--[38;5;190m|[38;5;132m--[38;5;206m|[38;5;132m-----[0m 0ab67c63          	bgeu	a2,a1,8000141a <_vfiprintf_r+0x1c0>
    80001366:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m/[38;5;182m-[38;5;182m-[38;5;188m|[38;5;182m-[38;5;182m-[38;5;190m|[38;5;182m-[38;5;182m-[38;5;206m|[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[0m cabd                	beqz	a3,800013dc <_vfiprintf_r+0x182>
    80001368:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      ce3e                	sw	a5,28(sp)
    8000136a:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m+[38;5;182m-[38;5;182m-[38;5;188m|[38;5;182m-[38;5;182m-[38;5;190m|[38;5;182m-[38;5;182m-[38;5;206m|[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[0m a88d                	j	800013dc <_vfiprintf_r+0x182>
    8000136c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;155m\[38;5;155m-[38;5;155m-[38;5;162m|[38;5;155m-[38;5;155m-[38;5;132m|[38;5;155m-[38;5;155m-[38;5;182m|[38;5;155m-[38;5;155m-[38;5;188m|[38;5;155m-[38;5;155m-[38;5;190m|[38;5;155m-[38;5;155m-[38;5;206m|[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m-[38;5;155m>[0m 00002797          	auipc	a5,0x2
    80001370:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      97c78793          	addi	a5,a5,-1668 # 80002ce8 <__sf_fake_stdout>
    80001374:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m  [38;5;210m/[38;5;210m-[38;5;210m-[0m 00f49563          	bne	s1,a5,8000137e <_vfiprintf_r+0x124>
    80001378:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m  [38;5;210m|[0m   0109b483          	ld	s1,16(s3)
    8000137c:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m+--[38;5;161m|[38;5;170m--[38;5;149m|[38;5;170m--[38;5;143m|[38;5;170m--[38;5;208m|[38;5;170m-----[38;5;162m|[38;5;170m--[38;5;132m|[38;5;170m--[38;5;182m|[38;5;170m--[38;5;188m|[38;5;170m--[38;5;190m|[38;5;170m--[38;5;206m|[38;5;170m--[38;5;210m|[38;5;170m--[0m bf31                	j	80001298 <_vfiprintf_r+0x3e>
    8000137e:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m  [38;5;210m\[38;5;210m-[38;5;210m>[0m 00002797          	auipc	a5,0x2
    80001382:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      93278793          	addi	a5,a5,-1742 # 80002cb0 <__sf_fake_stderr>
    80001386:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m+--[38;5;161m|[38;5;170m--[38;5;149m|[38;5;170m--[38;5;143m|[38;5;170m--[38;5;208m|[38;5;170m-----[38;5;162m|[38;5;170m--[38;5;132m|[38;5;170m--[38;5;182m|[38;5;170m--[38;5;188m|[38;5;170m--[38;5;190m|[38;5;170m--[38;5;206m|[38;5;170m-----[0m f0f499e3          	bne	s1,a5,80001298 <_vfiprintf_r+0x3e>
    8000138a:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m|[0m  [38;5;161m|[0m  [38;5;149m|[0m  [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      0189b483          	ld	s1,24(s3)
    8000138e:	[38;5;129m|[0m  [38;5;150m|[0m  [38;5;170m\--[38;5;161m|[38;5;170m--[38;5;149m|[38;5;170m--[38;5;143m|[38;5;170m--[38;5;208m|[38;5;170m-----[38;5;162m|[38;5;170m--[38;5;132m|[38;5;170m--[38;5;182m|[38;5;170m--[38;5;188m|[38;5;170m--[38;5;190m|[38;5;170m--[38;5;206m|[38;5;170m-----[0m b729                	j	80001298 <_vfiprintf_r+0x3e>
    80001390:	[38;5;129m|[0m  [38;5;150m|[0m     [38;5;161m|[0m  [38;5;149m\--[38;5;143m|[38;5;149m--[38;5;208m|[38;5;149m-----[38;5;162m|[38;5;149m--[38;5;132m|[38;5;149m--[38;5;182m|[38;5;149m--[38;5;188m|[38;5;149m--[38;5;190m|[38;5;149m--[38;5;206m|[38;5;149m---->[0m 85a6                	mv	a1,s1
    80001392:	[38;5;129m|[0m  [38;5;150m|[0m     [38;5;161m|[0m     [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      854e                	mv	a0,s3
    80001394:	[38;5;129m|[0m  [38;5;150m|[0m     [38;5;161m|[0m     [38;5;143m|[0m  [38;5;208m|[0m     [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      370000ef          	jal	ra,80001704 <__swsetup_r>
    80001398:	[38;5;129m|[0m  [38;5;150m|[0m     [38;5;161m\[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;143m|[38;5;161m-[38;5;161m-[38;5;208m|[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;162m|[38;5;161m-[38;5;161m-[38;5;132m|[38;5;161m-[38;5;161m-[38;5;182m|[38;5;161m-[38;5;161m-[38;5;188m|[38;5;161m-[38;5;161m-[38;5;190m|[38;5;161m-[38;5;161m-[38;5;206m|[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[0m d511                	beqz	a0,800012a4 <_vfiprintf_r+0x4a>
    8000139a:	[38;5;129m|[0m  [38;5;150m|[0m           [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m/--[38;5;162m|[38;5;214m--[38;5;132m|[38;5;214m--[38;5;182m|[38;5;214m--[38;5;188m|[38;5;214m--[38;5;190m|[38;5;214m--[38;5;206m|[38;5;214m---->[0m 557d                	li	a0,-1
    8000139c:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m/--[38;5;143m|[38;5;179m--[38;5;208m|[38;5;179m--[38;5;214m|[38;5;179m--[38;5;162m|[38;5;179m--[38;5;132m|[38;5;179m--[38;5;182m|[38;5;179m--[38;5;188m|[38;5;179m--[38;5;190m|[38;5;179m--[38;5;206m|[38;5;179m---->[0m 60ae                	ld	ra,200(sp)
    8000139e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      640e                	ld	s0,192(sp)
    800013a0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      74ea                	ld	s1,184(sp)
    800013a2:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      794a                	ld	s2,176(sp)
    800013a4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      79aa                	ld	s3,168(sp)
    800013a6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      7a0a                	ld	s4,160(sp)
    800013a8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      6aea                	ld	s5,152(sp)
    800013aa:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      6b4a                	ld	s6,144(sp)
    800013ac:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      6baa                	ld	s7,136(sp)
    800013ae:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      6c0a                	ld	s8,128(sp)
    800013b0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      7ce6                	ld	s9,120(sp)
    800013b2:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      7d46                	ld	s10,112(sp)
    800013b4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      6169                	addi	sp,sp,208
    800013b6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m|[0m  [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m|[0m  [38;5;206m|[0m      8082                	ret
    800013b8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m|[0m  [38;5;208m\[38;5;208m-[38;5;208m-[38;5;214m|[38;5;208m-[38;5;208m-[38;5;162m|[38;5;208m-[38;5;208m-[38;5;132m|[38;5;208m-[38;5;208m-[38;5;182m|[38;5;208m-[38;5;208m-[38;5;188m|[38;5;208m-[38;5;208m-[38;5;190m|[38;5;208m-[38;5;208m-[38;5;206m|[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m>[0m 0405                	addi	s0,s0,1
    800013ba:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m  [38;5;143m\-----[38;5;214m|[38;5;143m--[38;5;162m|[38;5;143m--[38;5;132m|[38;5;143m--[38;5;182m|[38;5;143m--[38;5;188m|[38;5;143m--[38;5;190m|[38;5;143m--[38;5;206m|[38;5;143m-----[0m bf11                	j	800012ce <_vfiprintf_r+0x74>
    800013bc:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m  [38;5;190m\[38;5;190m-[38;5;190m-[38;5;206m|[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m-[38;5;190m>[0m 41650533          	sub	a0,a0,s6
    800013c0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m     [38;5;206m|[0m      00ac953b          	sllw	a0,s9,a0
    800013c4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m     [38;5;206m|[0m      8fc9                	or	a5,a5,a0
    800013c6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m     [38;5;206m|[0m      c83e                	sw	a5,16(sp)
    800013c8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m|[0m     [38;5;206m|[0m      8922                	mv	s2,s0
    800013ca:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;188m\-----[38;5;206m|[38;5;188m-----[0m b791                	j	8000130e <_vfiprintf_r+0xb4>
    800013cc:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m        [38;5;206m\---->[0m 6722                	ld	a4,8(sp)
    800013ce:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m               00870693          	addi	a3,a4,8
    800013d2:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m               4318                	lw	a4,0(a4)
    800013d4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m               e436                	sd	a3,8(sp)
    800013d6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m           [38;5;220m/[38;5;220m-[38;5;220m-[0m 02074b63          	bltz	a4,8000140c <_vfiprintf_r+0x1b2>
    800013da:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m           [38;5;220m|[0m   ce3a                	sw	a4,28(sp)
    800013dc:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m>[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;220m|[38;5;182m-[38;5;182m>[0m 00044703          	lbu	a4,0(s0)
    800013e0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m           [38;5;220m|[0m   02e00793          	li	a5,46
    800013e4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m/[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;220m|[38;5;227m-[38;5;227m-[0m 06f71163          	bne	a4,a5,80001446 <_vfiprintf_r+0x1ec>
    800013e8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m        [38;5;220m|[0m   00144703          	lbu	a4,1(s0)
    800013ec:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m        [38;5;220m|[0m   02a00793          	li	a5,42
    800013f0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m/[38;5;181m-[38;5;181m-[38;5;220m|[38;5;181m-[38;5;181m-[0m 02f71b63          	bne	a4,a5,80001426 <_vfiprintf_r+0x1cc>
    800013f4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   67a2                	ld	a5,8(sp)
    800013f6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   0409                	addi	s0,s0,2
    800013f8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   00878713          	addi	a4,a5,8
    800013fc:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   e43a                	sd	a4,8(sp)
    800013fe:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   4398                	lw	a4,0(a5)
    80001400:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m     [38;5;181m|[0m  [38;5;220m|[0m   87ba                	mv	a5,a4
    80001402:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m/--[38;5;181m|[38;5;200m--[38;5;220m|[38;5;200m--[0m 00075363          	bgez	a4,80001408 <_vfiprintf_r+0x1ae>
    80001406:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m  [38;5;220m|[0m   57fd                	li	a5,-1
    80001408:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m>--[38;5;181m|[38;5;200m--[38;5;220m|[38;5;200m->[0m ca3e                	sw	a5,20(sp)
    8000140a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m+[38;5;227m-[38;5;227m-[38;5;200m|[38;5;227m-[38;5;227m-[38;5;181m|[38;5;227m-[38;5;227m-[38;5;220m|[38;5;227m-[38;5;227m-[0m a835                	j	80001446 <_vfiprintf_r+0x1ec>
    8000140c:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m  [38;5;220m\[38;5;220m-[38;5;220m>[0m 40e0073b          	negw	a4,a4
    80001410:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      0027e793          	ori	a5,a5,2
    80001414:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      ce3a                	sw	a4,28(sp)
    80001416:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m|[0m  [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      c83e                	sw	a5,16(sp)
    80001418:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m|[0m  [38;5;182m\[38;5;182m-[38;5;182m-[38;5;227m|[38;5;182m-[38;5;182m-[38;5;200m|[38;5;182m-[38;5;182m-[38;5;181m|[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[38;5;182m-[0m b7d1                	j	800013dc <_vfiprintf_r+0x182>
    8000141a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m  [38;5;132m\-----[38;5;227m|[38;5;132m--[38;5;200m|[38;5;132m--[38;5;181m|[38;5;132m---->[0m 02f807bb          	mulw	a5,a6,a5
    8000141e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m        [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      842a                	mv	s0,a0
    80001420:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m        [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      4685                	li	a3,1
    80001422:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m|[0m        [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m|[0m      9fb9                	addw	a5,a5,a4
    80001424:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m  [38;5;162m\[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;227m|[38;5;162m-[38;5;162m-[38;5;200m|[38;5;162m-[38;5;162m-[38;5;181m|[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[38;5;162m-[0m bf05                	j	80001354 <_vfiprintf_r+0xfa>
    80001426:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m  [38;5;181m\[38;5;181m-[38;5;181m-[38;5;181m-[38;5;181m-[38;5;181m>[0m 0405                	addi	s0,s0,1
    80001428:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m         ca02                	sw	zero,20(sp)
    8000142a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m         4681                	li	a3,0
    8000142c:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m         4781                	li	a5,0
    8000142e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m         4625                	li	a2,9
    80001430:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m           [38;5;227m|[0m  [38;5;200m|[0m         4829                	li	a6,10
    80001432:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m/[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;227m|[38;5;197m-[38;5;197m-[38;5;200m|[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m>[0m 00044703          	lbu	a4,0(s0)
    80001436:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;227m|[0m  [38;5;200m|[0m         00140513          	addi	a0,s0,1
    8000143a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;227m|[0m  [38;5;200m|[0m         fd07059b          	addiw	a1,a4,-48
    8000143e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;227m|[0m  [38;5;200m|[0m         872e                	mv	a4,a1
    80001440:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m/[38;5;168m-[38;5;168m-[38;5;227m|[38;5;168m-[38;5;168m-[38;5;200m|[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[0m 06b67c63          	bgeu	a2,a1,800014b8 <_vfiprintf_r+0x25e>
    80001444:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;227m|[0m  [38;5;200m\--------[0m f2f1                	bnez	a3,80001408 <_vfiprintf_r+0x1ae>
    80001446:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;227m\[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m-[38;5;227m>[0m 00044583          	lbu	a1,0(s0)
    8000144a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               460d                	li	a2,3
    8000144c:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               00002517          	auipc	a0,0x2
    80001450:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               91450513          	addi	a0,a0,-1772 # 80002d60 <__sf_fake_stdin+0x40>
    80001454:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               1a5000ef          	jal	ra,80001df8 <memchr>
    80001458:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m/[38;5;143m-[38;5;143m-[0m cd11                	beqz	a0,80001474 <_vfiprintf_r+0x21a>
    8000145a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   00002797          	auipc	a5,0x2
    8000145e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   90678793          	addi	a5,a5,-1786 # 80002d60 <__sf_fake_stdin+0x40>
    80001462:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   8d1d                	sub	a0,a0,a5
    80001464:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   47c2                	lw	a5,16(sp)
    80001466:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   04000713          	li	a4,64
    8000146a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   00a7173b          	sllw	a4,a4,a0
    8000146e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   8fd9                	or	a5,a5,a4
    80001470:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   0405                	addi	s0,s0,1
    80001472:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m|[0m   c83e                	sw	a5,16(sp)
    80001474:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m           [38;5;143m\[38;5;143m-[38;5;143m>[0m 00044583          	lbu	a1,0(s0)
    80001478:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               4619                	li	a2,6
    8000147a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               00002517          	auipc	a0,0x2
    8000147e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               8ee50513          	addi	a0,a0,-1810 # 80002d68 <__sf_fake_stdin+0x48>
    80001482:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               00140913          	addi	s2,s0,1
    80001486:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               02b10423          	sb	a1,40(sp)
    8000148a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m               16f000ef          	jal	ra,80001df8 <memchr>
    8000148e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m/[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[0m c135                	beqz	a0,800014f2 <_vfiprintf_r+0x298>
    80001490:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m            00000793          	li	a5,0
    80001494:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m/[38;5;163m-[38;5;163m-[38;5;163m-[38;5;163m-[38;5;163m-[0m eb85                	bnez	a5,800014c4 <_vfiprintf_r+0x26a>
    80001496:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m      4742                	lw	a4,16(sp)
    80001498:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m      67a2                	ld	a5,8(sp)
    8000149a:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m      10077713          	andi	a4,a4,256
    8000149e:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m      00878693          	addi	a3,a5,8
    800014a2:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m  [38;5;144m/[38;5;144m-[38;5;144m-[0m c709                	beqz	a4,800014ac <_vfiprintf_r+0x252>
    800014a4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m  [38;5;144m|[0m   07bd                	addi	a5,a5,15
    800014a6:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m  [38;5;144m|[0m   9bc1                	andi	a5,a5,-16
    800014a8:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m  [38;5;144m|[0m   01078693          	addi	a3,a5,16
    800014ac:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m     [38;5;163m|[0m  [38;5;144m\[38;5;144m-[38;5;144m>[0m e436                	sd	a3,8(sp)
    800014ae:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m  [38;5;204m/[38;5;204m-[38;5;204m-[38;5;163m|[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m>[0m 5792                	lw	a5,36(sp)
    800014b0:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m|[0m      014787bb          	addw	a5,a5,s4
    800014b4:	[38;5;129m|[0m  [38;5;150m|[0m        [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m|[0m  [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m|[0m      d23e                	sw	a5,36(sp)
    800014b6:	[38;5;129m|[0m  [38;5;150m\[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;179m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;214m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;197m|[38;5;150m-[38;5;150m-[38;5;168m|[38;5;150m-[38;5;150m-[38;5;221m|[38;5;150m-[38;5;150m-[38;5;204m|[38;5;150m-[38;5;150m-[38;5;163m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[0m bd19                	j	800012cc <_vfiprintf_r+0x72>
    800014b8:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m  [38;5;168m\[38;5;168m-[38;5;168m-[38;5;221m|[38;5;168m-[38;5;168m-[38;5;204m|[38;5;168m-[38;5;168m-[38;5;163m|[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m-[38;5;168m>[0m 02f807bb          	mulw	a5,a6,a5
    800014bc:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m|[0m      842a                	mv	s0,a0
    800014be:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m|[0m      4685                	li	a3,1
    800014c0:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m|[0m     [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m|[0m      9fb9                	addw	a5,a5,a4
    800014c2:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m     [38;5;197m\[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;221m|[38;5;197m-[38;5;197m-[38;5;204m|[38;5;197m-[38;5;197m-[38;5;163m|[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[38;5;197m-[0m bf85                	j	80001432 <_vfiprintf_r+0x1d8>
    800014c4:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m  [38;5;163m\[38;5;163m-[38;5;163m-[38;5;163m-[38;5;163m-[38;5;163m>[0m 0038                	addi	a4,sp,8
    800014c6:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         00000697          	auipc	a3,0x0
    800014ca:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         d2c68693          	addi	a3,a3,-724 # 800011f2 <__sfputs_r>
    800014ce:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         8626                	mv	a2,s1
    800014d0:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         080c                	addi	a1,sp,16
    800014d2:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         854e                	mv	a0,s3
    800014d4:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         00000097          	auipc	ra,0x0
    800014d8:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m         000000e7          	jalr	zero # 0 <__boot_hart>
    800014dc:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m|[0m     [38;5;127m/[38;5;127m-[38;5;127m>[0m 8a2a                	mv	s4,a0
    800014de:	[38;5;129m|[0m           [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m  [38;5;204m\[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[38;5;127m|[38;5;204m-[38;5;204m-[0m fd5518e3          	bne	a0,s5,800014ae <_vfiprintf_r+0x254>
    800014e2:	[38;5;129m\[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;179m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;214m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;221m|[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;129m-[38;5;127m|[38;5;129m-[38;5;129m>[0m 0104d783          	lhu	a5,16(s1)
    800014e6:	            [38;5;179m|[0m        [38;5;214m|[0m           [38;5;221m|[0m        [38;5;127m|[0m   0407f793          	andi	a5,a5,64
    800014ea:	            [38;5;179m|[0m        [38;5;214m\-----------[38;5;221m|[38;5;214m--------[38;5;127m|[38;5;214m--[0m ea0798e3          	bnez	a5,8000139a <_vfiprintf_r+0x140>
    800014ee:	            [38;5;179m|[0m                    [38;5;221m|[0m        [38;5;127m|[0m   5512                	lw	a0,36(sp)
    800014f0:	            [38;5;179m\--------------------[38;5;221m|[38;5;179m--------[38;5;127m|[38;5;179m--[0m b575                	j	8000139c <_vfiprintf_r+0x142>
    800014f2:	                                 [38;5;221m\[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;127m|[38;5;221m-[38;5;221m>[0m 0038                	addi	a4,sp,8
    800014f4:	                                          [38;5;127m|[0m   00000697          	auipc	a3,0x0
    800014f8:	                                          [38;5;127m|[0m   cfe68693          	addi	a3,a3,-770 # 800011f2 <__sfputs_r>
    800014fc:	                                          [38;5;127m|[0m   8626                	mv	a2,s1
    800014fe:	                                          [38;5;127m|[0m   080c                	addi	a1,sp,16
    80001500:	                                          [38;5;127m|[0m   854e                	mv	a0,s3
    80001502:	                                          [38;5;127m|[0m   38d000ef          	jal	ra,8000208e <_printf_i>
    80001506:	                                          [38;5;127m\[38;5;127m-[38;5;127m-[0m bfd9                	j	800014dc <_vfiprintf_r+0x282>

0000000080001508 <vfiprintf>:
    80001508:	86b2                	mv	a3,a2
    8000150a:	862e                	mv	a2,a1
    8000150c:	85aa                	mv	a1,a0
    8000150e:	00002517          	auipc	a0,0x2
    80001512:	9f253503          	ld	a0,-1550(a0) # 80002f00 <_impure_ptr>
    80001516:	b391                	j	8000125a <_vfiprintf_r>

0000000080001518 <_sbrk_r>:
    80001518:	    1141                	addi	sp,sp,-16
    8000151a:	    e022                	sd	s0,0(sp)
    8000151c:	    842a                	mv	s0,a0
    8000151e:	    852e                	mv	a0,a1
    80001520:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    80001524:	    e406                	sd	ra,8(sp)
    80001526:	    7f5000ef          	jal	ra,8000251a <_sbrk>
    8000152a:	    57fd                	li	a5,-1
    8000152c:	[38;5;192m/[38;5;192m-[38;5;192m-[0m 00f51663          	bne	a0,a5,80001538 <_sbrk_r+0x20>
    80001530:	[38;5;192m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    80001534:	[38;5;192m+[38;5;192m-[38;5;192m-[0m c391                	beqz	a5,80001538 <_sbrk_r+0x20>
    80001536:	[38;5;192m|[0m   c01c                	sw	a5,0(s0)
    80001538:	[38;5;192m\[38;5;192m-[38;5;192m>[0m 60a2                	ld	ra,8(sp)
    8000153a:	    6402                	ld	s0,0(sp)
    8000153c:	    0141                	addi	sp,sp,16
    8000153e:	    8082                	ret

0000000080001540 <__sread>:
    80001540:	       1141                	addi	sp,sp,-16
    80001542:	       e022                	sd	s0,0(sp)
    80001544:	       842e                	mv	s0,a1
    80001546:	       01259583          	lh	a1,18(a1)
    8000154a:	       e406                	sd	ra,8(sp)
    8000154c:	       5e3000ef          	jal	ra,8000232e <_read_r>
    80001550:	   [38;5;171m/[38;5;171m-[38;5;171m-[0m 00054963          	bltz	a0,80001562 <__sread+0x22>
    80001554:	   [38;5;171m|[0m   6c5c                	ld	a5,152(s0)
    80001556:	   [38;5;171m|[0m   97aa                	add	a5,a5,a0
    80001558:	   [38;5;171m|[0m   ec5c                	sd	a5,152(s0)
    8000155a:	[38;5;124m/[38;5;124m-[38;5;124m-[38;5;171m|[38;5;124m-[38;5;124m>[0m 60a2                	ld	ra,8(sp)
    8000155c:	[38;5;124m|[0m  [38;5;171m|[0m   6402                	ld	s0,0(sp)
    8000155e:	[38;5;124m|[0m  [38;5;171m|[0m   0141                	addi	sp,sp,16
    80001560:	[38;5;124m|[0m  [38;5;171m|[0m   8082                	ret
    80001562:	[38;5;124m|[0m  [38;5;171m\[38;5;171m-[38;5;171m>[0m 01045783          	lhu	a5,16(s0)
    80001566:	[38;5;124m|[0m      777d                	lui	a4,0xfffff
    80001568:	[38;5;124m|[0m      177d                	addi	a4,a4,-1 # ffffffffffffefff <__heap_end+0xffffffff7ffdafff>
    8000156a:	[38;5;124m|[0m      8ff9                	and	a5,a5,a4
    8000156c:	[38;5;124m|[0m      00f41823          	sh	a5,16(s0)
    80001570:	[38;5;124m\[38;5;124m-[38;5;124m-[38;5;124m-[38;5;124m-[38;5;124m-[0m b7ed                	j	8000155a <__sread+0x1a>

0000000080001572 <__seofread>:
    80001572:	4501                	li	a0,0
    80001574:	8082                	ret

0000000080001576 <__swrite>:
    80001576:	    0105d783          	lhu	a5,16(a1)
    8000157a:	    7179                	addi	sp,sp,-48
    8000157c:	    f022                	sd	s0,32(sp)
    8000157e:	    ec26                	sd	s1,24(sp)
    80001580:	    e84a                	sd	s2,16(sp)
    80001582:	    e44e                	sd	s3,8(sp)
    80001584:	    f406                	sd	ra,40(sp)
    80001586:	    1007f793          	andi	a5,a5,256
    8000158a:	    84aa                	mv	s1,a0
    8000158c:	    842e                	mv	s0,a1
    8000158e:	    8932                	mv	s2,a2
    80001590:	    89b6                	mv	s3,a3
    80001592:	[38;5;220m/[38;5;220m-[38;5;220m-[0m c799                	beqz	a5,800015a0 <__swrite+0x2a>
    80001594:	[38;5;220m|[0m   01259583          	lh	a1,18(a1)
    80001598:	[38;5;220m|[0m   4689                	li	a3,2
    8000159a:	[38;5;220m|[0m   4601                	li	a2,0
    8000159c:	[38;5;220m|[0m   72c000ef          	jal	ra,80001cc8 <_lseek_r>
    800015a0:	[38;5;220m\[38;5;220m-[38;5;220m>[0m 01045783          	lhu	a5,16(s0)
    800015a4:	    777d                	lui	a4,0xfffff
    800015a6:	    177d                	addi	a4,a4,-1 # ffffffffffffefff <__heap_end+0xffffffff7ffdafff>
    800015a8:	    8ff9                	and	a5,a5,a4
    800015aa:	    01241583          	lh	a1,18(s0)
    800015ae:	    00f41823          	sh	a5,16(s0)
    800015b2:	    7402                	ld	s0,32(sp)
    800015b4:	    70a2                	ld	ra,40(sp)
    800015b6:	    86ce                	mv	a3,s3
    800015b8:	    864a                	mv	a2,s2
    800015ba:	    69a2                	ld	s3,8(sp)
    800015bc:	    6942                	ld	s2,16(sp)
    800015be:	    8526                	mv	a0,s1
    800015c0:	    64e2                	ld	s1,24(sp)
    800015c2:	    6145                	addi	sp,sp,48
    800015c4:	    aa11                	j	800016d8 <_write_r>

00000000800015c6 <__sseek>:
    800015c6:	       1141                	addi	sp,sp,-16
    800015c8:	       e022                	sd	s0,0(sp)
    800015ca:	       842e                	mv	s0,a1
    800015cc:	       01259583          	lh	a1,18(a1)
    800015d0:	       e406                	sd	ra,8(sp)
    800015d2:	       6f6000ef          	jal	ra,80001cc8 <_lseek_r>
    800015d6:	       577d                	li	a4,-1
    800015d8:	       01045783          	lhu	a5,16(s0)
    800015dc:	[38;5;148m/[38;5;148m-[38;5;148m-[38;5;148m-[38;5;148m-[38;5;148m-[0m 00e51b63          	bne	a0,a4,800015f2 <__sseek+0x2c>
    800015e0:	[38;5;148m|[0m      777d                	lui	a4,0xfffff
    800015e2:	[38;5;148m|[0m      177d                	addi	a4,a4,-1 # ffffffffffffefff <__heap_end+0xffffffff7ffdafff>
    800015e4:	[38;5;148m|[0m      8ff9                	and	a5,a5,a4
    800015e6:	[38;5;148m|[0m      00f41823          	sh	a5,16(s0)
    800015ea:	[38;5;148m|[0m  [38;5;207m/->[0m 60a2                	ld	ra,8(sp)
    800015ec:	[38;5;148m|[0m  [38;5;207m|[0m   6402                	ld	s0,0(sp)
    800015ee:	[38;5;148m|[0m  [38;5;207m|[0m   0141                	addi	sp,sp,16
    800015f0:	[38;5;148m|[0m  [38;5;207m|[0m   8082                	ret
    800015f2:	[38;5;148m\[38;5;148m-[38;5;148m-[38;5;207m|[38;5;148m-[38;5;148m>[0m 6705                	lui	a4,0x1
    800015f4:	   [38;5;207m|[0m   8fd9                	or	a5,a5,a4
    800015f6:	   [38;5;207m|[0m   00f41823          	sh	a5,16(s0)
    800015fa:	   [38;5;207m|[0m   ec48                	sd	a0,152(s0)
    800015fc:	   [38;5;207m\--[0m b7fd                	j	800015ea <__sseek+0x24>

00000000800015fe <__sclose>:
    800015fe:	01259583          	lh	a1,18(a1)
    80001602:	a419                	j	80001808 <_close_r>

0000000080001604 <__swbuf_r>:
    80001604:	                   7179                	addi	sp,sp,-48
    80001606:	                   f022                	sd	s0,32(sp)
    80001608:	                   ec26                	sd	s1,24(sp)
    8000160a:	                   e84a                	sd	s2,16(sp)
    8000160c:	                   f406                	sd	ra,40(sp)
    8000160e:	                   e44e                	sd	s3,8(sp)
    80001610:	                   84aa                	mv	s1,a0
    80001612:	                   892e                	mv	s2,a1
    80001614:	                   8432                	mv	s0,a2
    80001616:	               [38;5;126m/--[0m c509                	beqz	a0,80001620 <__swbuf_r+0x1c>
    80001618:	               [38;5;126m|[0m   591c                	lw	a5,48(a0)
    8000161a:	               [38;5;126m+--[0m e399                	bnez	a5,80001620 <__swbuf_r+0x1c>
    8000161c:	               [38;5;126m|[0m   8afff0ef          	jal	ra,80000eca <__sinit>
    80001620:	               [38;5;126m\->[0m 00001797          	auipc	a5,0x1
    80001624:	                   70078793          	addi	a5,a5,1792 # 80002d20 <__sf_fake_stdin>
    80001628:	            [38;5;214m/-----[0m 02f41963          	bne	s0,a5,8000165a <__swbuf_r+0x56>
    8000162c:	            [38;5;214m|[0m      6480                	ld	s0,8(s1)
    8000162e:	      [38;5;166m/[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;214m|[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m>[0m 541c                	lw	a5,40(s0)
    80001630:	      [38;5;166m|[0m     [38;5;214m|[0m      c45c                	sw	a5,12(s0)
    80001632:	      [38;5;166m|[0m     [38;5;214m|[0m      01045783          	lhu	a5,16(s0)
    80001636:	      [38;5;166m|[0m     [38;5;214m|[0m      8ba1                	andi	a5,a5,8
    80001638:	      [38;5;166m|[0m     [38;5;214m|[0m  [38;5;161m/[38;5;161m-[38;5;161m-[0m c399                	beqz	a5,8000163e <__swbuf_r+0x3a>
    8000163a:	      [38;5;166m|[0m     [38;5;214m|[0m  [38;5;161m|[0m   6c1c                	ld	a5,24(s0)
    8000163c:	      [38;5;166m|[0m  [38;5;187m/[38;5;187m-[38;5;187m-[38;5;214m|[38;5;187m-[38;5;187m-[38;5;161m|[38;5;187m-[38;5;187m-[0m ef9d                	bnez	a5,8000167a <__swbuf_r+0x76>
    8000163e:	      [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m  [38;5;161m\[38;5;161m-[38;5;161m>[0m 85a2                	mv	a1,s0
    80001640:	      [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      8526                	mv	a0,s1
    80001642:	      [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      0c2000ef          	jal	ra,80001704 <__swsetup_r>
    80001646:	      [38;5;166m|[0m  [38;5;187m+[38;5;187m-[38;5;187m-[38;5;214m|[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[0m c915                	beqz	a0,8000167a <__swbuf_r+0x76>
    80001648:	[38;5;209m/-----[38;5;166m|[38;5;209m--[38;5;187m|[38;5;209m--[38;5;214m|[38;5;209m---->[0m 597d                	li	s2,-1
    8000164a:	[38;5;209m|[0m  [38;5;173m/--[38;5;166m|[38;5;173m--[38;5;187m|[38;5;173m--[38;5;214m|[38;5;173m---->[0m 70a2                	ld	ra,40(sp)
    8000164c:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      7402                	ld	s0,32(sp)
    8000164e:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      64e2                	ld	s1,24(sp)
    80001650:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      69a2                	ld	s3,8(sp)
    80001652:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      854a                	mv	a0,s2
    80001654:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      6942                	ld	s2,16(sp)
    80001656:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      6145                	addi	sp,sp,48
    80001658:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m|[0m      8082                	ret
    8000165a:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m  [38;5;214m\---->[0m 00001797          	auipc	a5,0x1
    8000165e:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m         68e78793          	addi	a5,a5,1678 # 80002ce8 <__sf_fake_stdout>
    80001662:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m     [38;5;191m/[38;5;191m-[38;5;191m-[0m 00f41463          	bne	s0,a5,8000166a <__swbuf_r+0x66>
    80001666:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m     [38;5;191m|[0m   6880                	ld	s0,16(s1)
    80001668:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m+[38;5;166m-[38;5;166m-[38;5;187m|[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;191m|[38;5;166m-[38;5;166m-[0m b7d9                	j	8000162e <__swbuf_r+0x2a>
    8000166a:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m     [38;5;191m\[38;5;191m-[38;5;191m>[0m 00001797          	auipc	a5,0x1
    8000166e:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m         64678793          	addi	a5,a5,1606 # 80002cb0 <__sf_fake_stderr>
    80001672:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m+[38;5;166m-[38;5;166m-[38;5;187m|[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[0m faf41ee3          	bne	s0,a5,8000162e <__swbuf_r+0x2a>
    80001676:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m|[0m  [38;5;187m|[0m         6c80                	ld	s0,24(s1)
    80001678:	[38;5;209m|[0m  [38;5;173m|[0m  [38;5;166m\[38;5;166m-[38;5;166m-[38;5;187m|[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[0m bf5d                	j	8000162e <__swbuf_r+0x2a>
    8000167a:	[38;5;209m|[0m  [38;5;173m|[0m     [38;5;187m\[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m>[0m 6c1c                	ld	a5,24(s0)
    8000167c:	[38;5;209m|[0m  [38;5;173m|[0m               6008                	ld	a0,0(s0)
    8000167e:	[38;5;209m|[0m  [38;5;173m|[0m               0ff97993          	zext.b	s3,s2
    80001682:	[38;5;209m|[0m  [38;5;173m|[0m               894e                	mv	s2,s3
    80001684:	[38;5;209m|[0m  [38;5;173m|[0m               9d1d                	subw	a0,a0,a5
    80001686:	[38;5;209m|[0m  [38;5;173m|[0m               501c                	lw	a5,32(s0)
    80001688:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;143m/--[0m 00f54763          	blt	a0,a5,80001696 <__swbuf_r+0x92>
    8000168c:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;143m|[0m   85a2                	mv	a1,s0
    8000168e:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;143m|[0m   8526                	mv	a0,s1
    80001690:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;143m|[0m   2da000ef          	jal	ra,8000196a <_fflush_r>
    80001694:	[38;5;209m+--[38;5;173m|[38;5;209m-----------[38;5;143m|[38;5;209m--[0m f955                	bnez	a0,80001648 <__swbuf_r+0x44>
    80001696:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;143m\->[0m 445c                	lw	a5,12(s0)
    80001698:	[38;5;209m|[0m  [38;5;173m|[0m               2505                	addiw	a0,a0,1
    8000169a:	[38;5;209m|[0m  [38;5;173m|[0m               37fd                	addiw	a5,a5,-1
    8000169c:	[38;5;209m|[0m  [38;5;173m|[0m               c45c                	sw	a5,12(s0)
    8000169e:	[38;5;209m|[0m  [38;5;173m|[0m               601c                	ld	a5,0(s0)
    800016a0:	[38;5;209m|[0m  [38;5;173m|[0m               00178713          	addi	a4,a5,1
    800016a4:	[38;5;209m|[0m  [38;5;173m|[0m               e018                	sd	a4,0(s0)
    800016a6:	[38;5;209m|[0m  [38;5;173m|[0m               01378023          	sb	s3,0(a5)
    800016aa:	[38;5;209m|[0m  [38;5;173m|[0m               501c                	lw	a5,32(s0)
    800016ac:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;217m/--[0m 00a78963          	beq	a5,a0,800016be <__swbuf_r+0xba>
    800016b0:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;217m|[0m   01045783          	lhu	a5,16(s0)
    800016b4:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;217m|[0m   8b85                	andi	a5,a5,1
    800016b6:	[38;5;209m|[0m  [38;5;173m+-----------[38;5;217m|[38;5;173m--[0m dbd1                	beqz	a5,8000164a <__swbuf_r+0x46>
    800016b8:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;217m|[0m   47a9                	li	a5,10
    800016ba:	[38;5;209m|[0m  [38;5;173m+-----------[38;5;217m|[38;5;173m--[0m f8f918e3          	bne	s2,a5,8000164a <__swbuf_r+0x46>
    800016be:	[38;5;209m|[0m  [38;5;173m|[0m           [38;5;217m\->[0m 85a2                	mv	a1,s0
    800016c0:	[38;5;209m|[0m  [38;5;173m|[0m               8526                	mv	a0,s1
    800016c2:	[38;5;209m|[0m  [38;5;173m|[0m               2a8000ef          	jal	ra,8000196a <_fflush_r>
    800016c6:	[38;5;209m|[0m  [38;5;173m\--------------[0m d151                	beqz	a0,8000164a <__swbuf_r+0x46>
    800016c8:	[38;5;209m\-----------------[0m b741                	j	80001648 <__swbuf_r+0x44>

00000000800016ca <__swbuf>:
    800016ca:	862e                	mv	a2,a1
    800016cc:	85aa                	mv	a1,a0
    800016ce:	00002517          	auipc	a0,0x2
    800016d2:	83253503          	ld	a0,-1998(a0) # 80002f00 <_impure_ptr>
    800016d6:	b73d                	j	80001604 <__swbuf_r>

00000000800016d8 <_write_r>:
    800016d8:	    1141                	addi	sp,sp,-16
    800016da:	    e022                	sd	s0,0(sp)
    800016dc:	    842a                	mv	s0,a0
    800016de:	    852e                	mv	a0,a1
    800016e0:	    85b2                	mv	a1,a2
    800016e2:	    8636                	mv	a2,a3
    800016e4:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    800016e8:	    e406                	sd	ra,8(sp)
    800016ea:	    66d000ef          	jal	ra,80002556 <_write>
    800016ee:	    57fd                	li	a5,-1
    800016f0:	[38;5;162m/[38;5;162m-[38;5;162m-[0m 00f51663          	bne	a0,a5,800016fc <_write_r+0x24>
    800016f4:	[38;5;162m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    800016f8:	[38;5;162m+[38;5;162m-[38;5;162m-[0m c391                	beqz	a5,800016fc <_write_r+0x24>
    800016fa:	[38;5;162m|[0m   c01c                	sw	a5,0(s0)
    800016fc:	[38;5;162m\[38;5;162m-[38;5;162m>[0m 60a2                	ld	ra,8(sp)
    800016fe:	    6402                	ld	s0,0(sp)
    80001700:	    0141                	addi	sp,sp,16
    80001702:	    8082                	ret

0000000080001704 <__swsetup_r>:
    80001704:	                   1101                	addi	sp,sp,-32
    80001706:	                   e822                	sd	s0,16(sp)
    80001708:	                   e426                	sd	s1,8(sp)
    8000170a:	                   e04a                	sd	s2,0(sp)
    8000170c:	                   ec06                	sd	ra,24(sp)
    8000170e:	                   00001497          	auipc	s1,0x1
    80001712:	                   7f24b483          	ld	s1,2034(s1) # 80002f00 <_impure_ptr>
    80001716:	                   892a                	mv	s2,a0
    80001718:	                   842e                	mv	s0,a1
    8000171a:	               [38;5;163m/[38;5;163m-[38;5;163m-[0m c491                	beqz	s1,80001726 <__swsetup_r+0x22>
    8000171c:	               [38;5;163m|[0m   589c                	lw	a5,48(s1)
    8000171e:	               [38;5;163m+[38;5;163m-[38;5;163m-[0m e781                	bnez	a5,80001726 <__swsetup_r+0x22>
    80001720:	               [38;5;163m|[0m   8526                	mv	a0,s1
    80001722:	               [38;5;163m|[0m   fa8ff0ef          	jal	ra,80000eca <__sinit>
    80001726:	               [38;5;163m\[38;5;163m-[38;5;163m>[0m 00001797          	auipc	a5,0x1
    8000172a:	                   5fa78793          	addi	a5,a5,1530 # 80002d20 <__sf_fake_stdin>
    8000172e:	               [38;5;213m/--[0m 02f41463          	bne	s0,a5,80001756 <__swsetup_r+0x52>
    80001732:	               [38;5;213m|[0m   6480                	ld	s0,8(s1)
    80001734:	         [38;5;134m/-----[38;5;213m|[38;5;134m->[0m 01041783          	lh	a5,16(s0)
    80001738:	         [38;5;134m|[0m     [38;5;213m|[0m   0087f713          	andi	a4,a5,8
    8000173c:	      [38;5;225m/[38;5;225m-[38;5;225m-[38;5;134m|[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;213m|[38;5;225m-[38;5;225m-[0m eb35                	bnez	a4,800017b0 <__swsetup_r+0xac>
    8000173e:	      [38;5;225m|[0m  [38;5;134m|[0m     [38;5;213m|[0m   0107f713          	andi	a4,a5,16
    80001742:	      [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m/[38;5;206m-[38;5;206m-[38;5;213m|[38;5;206m-[38;5;206m-[0m eb15                	bnez	a4,80001776 <__swsetup_r+0x72>
    80001744:	      [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;213m|[0m   4725                	li	a4,9
    80001746:	      [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;213m|[0m   00e92023          	sw	a4,0(s2)
    8000174a:	[38;5;187m/[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;225m|[38;5;187m-[38;5;187m-[38;5;134m|[38;5;187m-[38;5;187m-[38;5;206m|[38;5;187m-[38;5;187m-[38;5;213m|[38;5;187m-[38;5;187m>[0m 0407e793          	ori	a5,a5,64
    8000174e:	[38;5;187m|[0m     [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;213m|[0m   00f41823          	sh	a5,16(s0)
    80001752:	[38;5;187m|[0m     [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;213m|[0m   557d                	li	a0,-1
    80001754:	[38;5;187m|[0m  [38;5;153m/[38;5;153m-[38;5;153m-[38;5;225m|[38;5;153m-[38;5;153m-[38;5;134m|[38;5;153m-[38;5;153m-[38;5;206m|[38;5;153m-[38;5;153m-[38;5;213m|[38;5;153m-[38;5;153m-[0m a869                	j	800017ee <__swsetup_r+0xea>
    80001756:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;213m\->[0m 00001797          	auipc	a5,0x1
    8000175a:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m      59278793          	addi	a5,a5,1426 # 80002ce8 <__sf_fake_stdout>
    8000175e:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;190m/[38;5;190m-[38;5;190m-[0m 00f41463          	bne	s0,a5,80001766 <__swsetup_r+0x62>
    80001762:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;190m|[0m   6880                	ld	s0,16(s1)
    80001764:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m+--[38;5;206m|[38;5;134m--[38;5;190m|[38;5;134m--[0m bfc1                	j	80001734 <__swsetup_r+0x30>
    80001766:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m  [38;5;190m\[38;5;190m-[38;5;190m>[0m 00001797          	auipc	a5,0x1
    8000176a:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m      54a78793          	addi	a5,a5,1354 # 80002cb0 <__sf_fake_stderr>
    8000176e:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m+--[38;5;206m|[38;5;134m-----[0m fcf413e3          	bne	s0,a5,80001734 <__swsetup_r+0x30>
    80001772:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m|[0m  [38;5;206m|[0m      6c80                	ld	s0,24(s1)
    80001774:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;134m\--[38;5;206m|[38;5;134m-----[0m b7c1                	j	80001734 <__swsetup_r+0x30>
    80001776:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m     [38;5;206m\[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m>[0m 8b91                	andi	a5,a5,4
    80001778:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m/[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[0m c795                	beqz	a5,800017a4 <__swsetup_r+0xa0>
    8000177a:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         702c                	ld	a1,96(s0)
    8000177c:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m/[38;5;218m-[38;5;218m-[38;5;218m-[38;5;218m-[38;5;218m-[0m c991                	beqz	a1,80001790 <__swsetup_r+0x8c>
    8000177e:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m|[0m      07c40793          	addi	a5,s0,124
    80001782:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m|[0m  [38;5;126m/[38;5;126m-[38;5;126m-[0m 00f58563          	beq	a1,a5,8000178c <__swsetup_r+0x88>
    80001786:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m|[0m  [38;5;126m|[0m   854a                	mv	a0,s2
    80001788:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m|[0m  [38;5;126m|[0m   6ca000ef          	jal	ra,80001e52 <_free_r>
    8000178c:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m|[0m  [38;5;126m\[38;5;126m-[38;5;126m>[0m 06043023          	sd	zero,96(s0)
    80001790:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m  [38;5;218m\[38;5;218m-[38;5;218m-[38;5;218m-[38;5;218m-[38;5;218m>[0m 01045783          	lhu	a5,16(s0)
    80001794:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         00042423          	sw	zero,8(s0)
    80001798:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         fdb7f793          	andi	a5,a5,-37
    8000179c:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         00f41823          	sh	a5,16(s0)
    800017a0:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         6c1c                	ld	a5,24(s0)
    800017a2:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m|[0m         e01c                	sd	a5,0(s0)
    800017a4:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m  [38;5;127m\[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m>[0m 01045783          	lhu	a5,16(s0)
    800017a8:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m            0087e793          	ori	a5,a5,8
    800017ac:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m|[0m            00f41823          	sh	a5,16(s0)
    800017b0:	[38;5;187m|[0m  [38;5;153m|[0m  [38;5;225m\[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m-[38;5;225m>[0m 6c1c                	ld	a5,24(s0)
    800017b2:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m/--[0m ef89                	bnez	a5,800017cc <__swsetup_r+0xc8>
    800017b4:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   01045783          	lhu	a5,16(s0)
    800017b8:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   20000713          	li	a4,512
    800017bc:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   2807f793          	andi	a5,a5,640
    800017c0:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m+--[0m 00e78663          	beq	a5,a4,800017cc <__swsetup_r+0xc8>
    800017c4:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   85a2                	mv	a1,s0
    800017c6:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   854a                	mv	a0,s2
    800017c8:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m|[0m   588000ef          	jal	ra,80001d50 <__smakebuf_r>
    800017cc:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;191m\->[0m 01041783          	lh	a5,16(s0)
    800017d0:	[38;5;187m|[0m  [38;5;153m|[0m               0017f713          	andi	a4,a5,1
    800017d4:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;139m/--[0m c31d                	beqz	a4,800017fa <__swsetup_r+0xf6>
    800017d6:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;139m|[0m   5018                	lw	a4,32(s0)
    800017d8:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;139m|[0m   00042623          	sw	zero,12(s0)
    800017dc:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;139m|[0m   40e0073b          	negw	a4,a4
    800017e0:	[38;5;187m|[0m  [38;5;153m|[0m           [38;5;139m|[0m   d418                	sw	a4,40(s0)
    800017e2:	[38;5;187m|[0m  [38;5;153m|[0m        [38;5;126m/--[38;5;139m|[38;5;126m->[0m 6c18                	ld	a4,24(s0)
    800017e4:	[38;5;187m|[0m  [38;5;153m|[0m        [38;5;126m|[0m  [38;5;139m|[0m   4501                	li	a0,0
    800017e6:	[38;5;187m|[0m  [38;5;153m+[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;126m|[38;5;153m-[38;5;153m-[38;5;139m|[38;5;153m-[38;5;153m-[0m e701                	bnez	a4,800017ee <__swsetup_r+0xea>
    800017e8:	[38;5;187m|[0m  [38;5;153m|[0m        [38;5;126m|[0m  [38;5;139m|[0m   0807f713          	andi	a4,a5,128
    800017ec:	[38;5;187m\[38;5;187m-[38;5;187m-[38;5;153m|[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;187m-[38;5;126m|[38;5;187m-[38;5;187m-[38;5;139m|[38;5;187m-[38;5;187m-[0m ff39                	bnez	a4,8000174a <__swsetup_r+0x46>
    800017ee:	   [38;5;153m\[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;126m|[38;5;153m-[38;5;153m-[38;5;139m|[38;5;153m-[38;5;153m>[0m 60e2                	ld	ra,24(sp)
    800017f0:	            [38;5;126m|[0m  [38;5;139m|[0m   6442                	ld	s0,16(sp)
    800017f2:	            [38;5;126m|[0m  [38;5;139m|[0m   64a2                	ld	s1,8(sp)
    800017f4:	            [38;5;126m|[0m  [38;5;139m|[0m   6902                	ld	s2,0(sp)
    800017f6:	            [38;5;126m|[0m  [38;5;139m|[0m   6105                	addi	sp,sp,32
    800017f8:	            [38;5;126m|[0m  [38;5;139m|[0m   8082                	ret
    800017fa:	            [38;5;126m|[0m  [38;5;139m\->[0m 0027f713          	andi	a4,a5,2
    800017fe:	            [38;5;126m|[0m      4681                	li	a3,0
    80001800:	            [38;5;126m|[0m  [38;5;201m/[38;5;201m-[38;5;201m-[0m e311                	bnez	a4,80001804 <__swsetup_r+0x100>
    80001802:	            [38;5;126m|[0m  [38;5;201m|[0m   5014                	lw	a3,32(s0)
    80001804:	            [38;5;126m|[0m  [38;5;201m\[38;5;201m-[38;5;201m>[0m c454                	sw	a3,12(s0)
    80001806:	            [38;5;126m\-----[0m bff1                	j	800017e2 <__swsetup_r+0xde>

0000000080001808 <_close_r>:
    80001808:	    1141                	addi	sp,sp,-16
    8000180a:	    e022                	sd	s0,0(sp)
    8000180c:	    842a                	mv	s0,a0
    8000180e:	    852e                	mv	a0,a1
    80001810:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    80001814:	    e406                	sd	ra,8(sp)
    80001816:	    4ab000ef          	jal	ra,800024c0 <_close>
    8000181a:	    57fd                	li	a5,-1
    8000181c:	[38;5;155m/[38;5;155m-[38;5;155m-[0m 00f51663          	bne	a0,a5,80001828 <_close_r+0x20>
    80001820:	[38;5;155m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    80001824:	[38;5;155m+[38;5;155m-[38;5;155m-[0m c391                	beqz	a5,80001828 <_close_r+0x20>
    80001826:	[38;5;155m|[0m   c01c                	sw	a5,0(s0)
    80001828:	[38;5;155m\[38;5;155m-[38;5;155m>[0m 60a2                	ld	ra,8(sp)
    8000182a:	    6402                	ld	s0,0(sp)
    8000182c:	    0141                	addi	sp,sp,16
    8000182e:	    8082                	ret

0000000080001830 <__sflush_r>:
    80001830:	                            01059783          	lh	a5,16(a1)
    80001834:	                            7179                	addi	sp,sp,-48
    80001836:	                            f022                	sd	s0,32(sp)
    80001838:	                            ec26                	sd	s1,24(sp)
    8000183a:	                            f406                	sd	ra,40(sp)
    8000183c:	                            e84a                	sd	s2,16(sp)
    8000183e:	                            e44e                	sd	s3,8(sp)
    80001840:	                            0087f713          	andi	a4,a5,8
    80001844:	                            84aa                	mv	s1,a0
    80001846:	                            842e                	mv	s0,a1
    80001848:	   [38;5;183m/-----------------------[0m e771                	bnez	a4,80001914 <__sflush_r+0xe4>
    8000184a:	   [38;5;183m|[0m                        4598                	lw	a4,8(a1)
    8000184c:	   [38;5;183m|[0m                    [38;5;184m/--[0m 00e04563          	bgtz	a4,80001856 <__sflush_r+0x26>
    80001850:	   [38;5;183m|[0m                    [38;5;184m|[0m   5db8                	lw	a4,120(a1)
    80001852:	[38;5;146m/--[38;5;183m|[38;5;146m--------------------[38;5;184m|[38;5;146m--[0m 08e05963          	blez	a4,800018e4 <__sflush_r+0xb4>
    80001856:	[38;5;146m|[0m  [38;5;183m|[0m                    [38;5;184m\->[0m 6838                	ld	a4,80(s0)
    80001858:	[38;5;146m+--[38;5;183m|[38;5;146m-----------------------[0m c751                	beqz	a4,800018e4 <__sflush_r+0xb4>
    8000185a:	[38;5;146m|[0m  [38;5;183m|[0m                        83b1                	srli	a5,a5,0xc
    8000185c:	[38;5;146m|[0m  [38;5;183m|[0m                        0004a903          	lw	s2,0(s1)
    80001860:	[38;5;146m|[0m  [38;5;183m|[0m                        8b85                	andi	a5,a5,1
    80001862:	[38;5;146m|[0m  [38;5;183m|[0m                        0004a023          	sw	zero,0(s1)
    80001866:	[38;5;146m|[0m  [38;5;183m|[0m                        7c0c                	ld	a1,56(s0)
    80001868:	[38;5;146m|[0m  [38;5;183m|[0m                 [38;5;208m/[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[0m cfa1                	beqz	a5,800018c0 <__sflush_r+0x90>
    8000186a:	[38;5;146m|[0m  [38;5;183m|[0m                 [38;5;208m|[0m      6c50                	ld	a2,152(s0)
    8000186c:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m/[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;208m|[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m>[0m 01045783          	lhu	a5,16(s0)
    80001870:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      8b91                	andi	a5,a5,4
    80001872:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m/[38;5;221m-[38;5;221m-[0m c799                	beqz	a5,80001880 <__sflush_r+0x50>
    80001874:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m|[0m   441c                	lw	a5,8(s0)
    80001876:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m|[0m   8e1d                	sub	a2,a2,a5
    80001878:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m|[0m   703c                	ld	a5,96(s0)
    8000187a:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m+[38;5;221m-[38;5;221m-[0m c399                	beqz	a5,80001880 <__sflush_r+0x50>
    8000187c:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m|[0m   5c3c                	lw	a5,120(s0)
    8000187e:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m|[0m   8e1d                	sub	a2,a2,a5
    80001880:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m  [38;5;221m\[38;5;221m-[38;5;221m>[0m 683c                	ld	a5,80(s0)
    80001882:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      7c0c                	ld	a1,56(s0)
    80001884:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      4681                	li	a3,0
    80001886:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      8526                	mv	a0,s1
    80001888:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      9782                	jalr	a5
    8000188a:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m        [38;5;208m|[0m      57fd                	li	a5,-1
    8000188c:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m/[38;5;166m-[38;5;166m-[38;5;208m|[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[0m 04f50e63          	beq	a0,a5,800018e8 <__sflush_r+0xb8>
    80001890:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      6c1c                	ld	a5,24(s0)
    80001892:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      6705                	lui	a4,0x1
    80001894:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      00042423          	sw	zero,8(s0)
    80001898:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      e01c                	sd	a5,0(s0)
    8000189a:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      01045783          	lhu	a5,16(s0)
    8000189e:	[38;5;146m|[0m  [38;5;183m|[0m        [38;5;203m|[0m     [38;5;166m|[0m  [38;5;208m|[0m      8ff9                	and	a5,a5,a4
    800018a0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m/[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;203m|[38;5;183m-[38;5;183m-[38;5;214m/[38;5;214m-[38;5;214m-[38;5;166m|[38;5;214m-[38;5;214m-[38;5;208m|[38;5;214m-[38;5;214m-[38;5;214m-[38;5;214m-[38;5;183mX[0m c391                	beqz	a5,800018a4 <__sflush_r+0x74>
    800018a2:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m      ec48                	sd	a0,152(s0)
    800018a4:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m>[38;5;214m-[38;5;214m-[38;5;166m|[38;5;214m-[38;5;214m-[38;5;208m|[38;5;214m-[38;5;214m-[38;5;214m-[38;5;214m-[38;5;214m>[0m 702c                	ld	a1,96(s0)
    800018a6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m      0124a023          	sw	s2,0(s1)
    800018aa:	[38;5;146m+--[38;5;183m|[38;5;146m--[38;5;183m|[38;5;146m-----[38;5;203m|[38;5;146m--[38;5;214m|[38;5;146m--[38;5;166m|[38;5;146m--[38;5;208m|[38;5;146m-----[0m cd8d                	beqz	a1,800018e4 <__sflush_r+0xb4>
    800018ac:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m      07c40793          	addi	a5,s0,124
    800018b0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m  [38;5;183m/[38;5;183m-[38;5;183m-[0m 00f58563          	beq	a1,a5,800018ba <__sflush_r+0x8a>
    800018b4:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m  [38;5;183m|[0m   8526                	mv	a0,s1
    800018b6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m  [38;5;183m|[0m   59c000ef          	jal	ra,80001e52 <_free_r>
    800018ba:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m|[0m  [38;5;183m\[38;5;183m-[38;5;183m>[0m 06043023          	sd	zero,96(s0)
    800018be:	[38;5;146m+--[38;5;183m|[38;5;146m--[38;5;183m|[38;5;146m-----[38;5;203m|[38;5;146m--[38;5;214m|[38;5;146m--[38;5;166m|[38;5;146m--[38;5;208m|[38;5;146m-----[0m a01d                	j	800018e4 <__sflush_r+0xb4>
    800018c0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m  [38;5;208m\[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m-[38;5;208m>[0m 4601                	li	a2,0
    800018c2:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         4685                	li	a3,1
    800018c4:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         8526                	mv	a0,s1
    800018c6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         9702                	jalr	a4
    800018c8:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         57fd                	li	a5,-1
    800018ca:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         862a                	mv	a2,a0
    800018cc:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m+[38;5;203m-[38;5;203m-[38;5;214m|[38;5;203m-[38;5;203m-[38;5;166m|[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[0m faf510e3          	bne	a0,a5,8000186c <__sflush_r+0x3c>
    800018d0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m|[0m  [38;5;214m|[0m  [38;5;166m|[0m         409c                	lw	a5,0(s1)
    800018d2:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;203m\[38;5;203m-[38;5;203m-[38;5;214m|[38;5;203m-[38;5;203m-[38;5;166m|[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[38;5;203m-[0m dfc9                	beqz	a5,8000186c <__sflush_r+0x3c>
    800018d4:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m        [38;5;214m|[0m  [38;5;166m|[0m         4775                	li	a4,29
    800018d6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m        [38;5;214m|[0m  [38;5;166m|[0m     [38;5;132m/--[0m 00e78563          	beq	a5,a4,800018e0 <__sflush_r+0xb0>
    800018da:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m        [38;5;214m|[0m  [38;5;166m|[0m     [38;5;132m|[0m   4759                	li	a4,22
    800018dc:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;138m/--[38;5;214m|[38;5;138m--[38;5;166m|[38;5;138m-----[38;5;132m|[38;5;138m--[0m 06e79563          	bne	a5,a4,80001946 <__sflush_r+0x116>
    800018e0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m     [38;5;138m|[0m  [38;5;214m|[0m  [38;5;166m|[0m     [38;5;132m\->[0m 0124a023          	sw	s2,0(s1)
    800018e4:	[38;5;146m>--[38;5;183m|[38;5;146m--[38;5;183m|[38;5;146m-----[38;5;138m|[38;5;146m--[38;5;214m|[38;5;146m--[38;5;166m|[38;5;146m------->[0m 4501                	li	a0,0
    800018e6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m/[38;5;161m-[38;5;161m-[38;5;138m|[38;5;161m-[38;5;161m-[38;5;214m|[38;5;161m-[38;5;161m-[38;5;166m|[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[0m a0bd                	j	80001954 <__sflush_r+0x124>
    800018e8:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m  [38;5;166m\[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m-[38;5;166m>[0m 4098                	lw	a4,0(s1)
    800018ea:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m            01041783          	lh	a5,16(s0)
    800018ee:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m     [38;5;128m/-----[0m cf01                	beqz	a4,80001906 <__sflush_r+0xd6>
    800018f0:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m     [38;5;128m|[0m      46f5                	li	a3,29
    800018f2:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m     [38;5;128m|[0m  [38;5;165m/--[0m 00d70563          	beq	a4,a3,800018fc <__sflush_r+0xcc>
    800018f6:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m     [38;5;128m|[0m  [38;5;165m|[0m   46d9                	li	a3,22
    800018f8:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m  [38;5;141m/--[38;5;128m|[38;5;141m--[38;5;165m|[38;5;141m--[0m 04d71963          	bne	a4,a3,8000194a <__sflush_r+0x11a>
    800018fc:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m  [38;5;141m|[0m  [38;5;128m|[0m  [38;5;165m\->[0m 6c1c                	ld	a5,24(s0)
    800018fe:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m  [38;5;141m|[0m  [38;5;128m|[0m      00042423          	sw	zero,8(s0)
    80001902:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m|[0m  [38;5;141m|[0m  [38;5;128m|[0m      e01c                	sd	a5,0(s0)
    80001904:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m  [38;5;214m\[38;5;214m-[38;5;214m-[38;5;141m|[38;5;214m-[38;5;214m-[38;5;128m|[38;5;214m-[38;5;214m-[38;5;214m-[38;5;214m-[38;5;214m-[0m b745                	j	800018a4 <__sflush_r+0x74>
    80001906:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;128m\---->[0m 6c18                	ld	a4,24(s0)
    80001908:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         83b1                	srli	a5,a5,0xc
    8000190a:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         00042423          	sw	zero,8(s0)
    8000190e:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         e018                	sd	a4,0(s0)
    80001910:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m|[0m  [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         8b85                	andi	a5,a5,1
    80001912:	[38;5;146m|[0m  [38;5;183m|[0m  [38;5;183m\[38;5;183m-[38;5;183m-[38;5;161m|[38;5;183m-[38;5;183m-[38;5;138m|[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;141m|[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[38;5;183m-[0m b779                	j	800018a0 <__sflush_r+0x70>
    80001914:	[38;5;146m|[0m  [38;5;183m\-----[38;5;161m|[38;5;183m--[38;5;138m|[38;5;183m-----[38;5;141m|[38;5;183m------->[0m 0185b983          	ld	s3,24(a1)
    80001918:	[38;5;146m+--------[38;5;161m|[38;5;146m--[38;5;138m|[38;5;146m-----[38;5;141m|[38;5;146m--------[0m fc0986e3          	beqz	s3,800018e4 <__sflush_r+0xb4>
    8000191c:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         0005b903          	ld	s2,0(a1)
    80001920:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         8b8d                	andi	a5,a5,3
    80001922:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         0135b023          	sd	s3,0(a1)
    80001926:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         4139093b          	subw	s2,s2,s3
    8000192a:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m         4701                	li	a4,0
    8000192c:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m     [38;5;141m/--[0m e391                	bnez	a5,80001930 <__sflush_r+0x100>
    8000192e:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m     [38;5;141m|[0m   5198                	lw	a4,32(a1)
    80001930:	[38;5;146m|[0m        [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m     [38;5;141m\->[0m c458                	sw	a4,12(s0)
    80001932:	[38;5;146m\--------[38;5;161m|[38;5;146m--[38;5;138m|[38;5;146m-----[38;5;141m|[38;5;146m--[38;5;220m/[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;146mX[0m fb2059e3          	blez	s2,800018e4 <__sflush_r+0xb4>
    80001936:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      643c                	ld	a5,72(s0)
    80001938:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      7c0c                	ld	a1,56(s0)
    8000193a:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      86ca                	mv	a3,s2
    8000193c:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      864e                	mv	a2,s3
    8000193e:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      8526                	mv	a0,s1
    80001940:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m      9782                	jalr	a5
    80001942:	         [38;5;161m|[0m  [38;5;138m|[0m     [38;5;141m|[0m  [38;5;220m|[0m  [38;5;132m/--[0m 02a04063          	bgtz	a0,80001962 <__sflush_r+0x132>
    80001946:	         [38;5;161m|[0m  [38;5;138m\-----[38;5;141m|[38;5;138m--[38;5;220m|[38;5;138m--[38;5;132m|[38;5;138m->[0m 01041783          	lh	a5,16(s0)
    8000194a:	         [38;5;161m|[0m        [38;5;141m\--[38;5;220m|[38;5;141m--[38;5;132m|[38;5;141m->[0m 0407e793          	ori	a5,a5,64
    8000194e:	         [38;5;161m|[0m           [38;5;220m|[0m  [38;5;132m|[0m   00f41823          	sh	a5,16(s0)
    80001952:	         [38;5;161m|[0m           [38;5;220m|[0m  [38;5;132m|[0m   557d                	li	a0,-1
    80001954:	         [38;5;161m\[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;161m-[38;5;220m|[38;5;161m-[38;5;161m-[38;5;132m|[38;5;161m-[38;5;161m>[0m 70a2                	ld	ra,40(sp)
    80001956:	                     [38;5;220m|[0m  [38;5;132m|[0m   7402                	ld	s0,32(sp)
    80001958:	                     [38;5;220m|[0m  [38;5;132m|[0m   64e2                	ld	s1,24(sp)
    8000195a:	                     [38;5;220m|[0m  [38;5;132m|[0m   6942                	ld	s2,16(sp)
    8000195c:	                     [38;5;220m|[0m  [38;5;132m|[0m   69a2                	ld	s3,8(sp)
    8000195e:	                     [38;5;220m|[0m  [38;5;132m|[0m   6145                	addi	sp,sp,48
    80001960:	                     [38;5;220m|[0m  [38;5;132m|[0m   8082                	ret
    80001962:	                     [38;5;220m|[0m  [38;5;132m\->[0m 99aa                	add	s3,s3,a0
    80001964:	                     [38;5;220m|[0m      40a9093b          	subw	s2,s2,a0
    80001968:	                     [38;5;220m\[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[0m b7e9                	j	80001932 <__sflush_r+0x102>

000000008000196a <_fflush_r>:
    8000196a:	             6d9c                	ld	a5,24(a1)
    8000196c:	[38;5;140m/[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[0m c3a5                	beqz	a5,800019cc <_fflush_r+0x62>
    8000196e:	[38;5;140m|[0m            1101                	addi	sp,sp,-32
    80001970:	[38;5;140m|[0m            e822                	sd	s0,16(sp)
    80001972:	[38;5;140m|[0m            ec06                	sd	ra,24(sp)
    80001974:	[38;5;140m|[0m            842a                	mv	s0,a0
    80001976:	[38;5;140m|[0m        [38;5;216m/[38;5;216m-[38;5;216m-[0m c519                	beqz	a0,80001984 <_fflush_r+0x1a>
    80001978:	[38;5;140m|[0m        [38;5;216m|[0m   591c                	lw	a5,48(a0)
    8000197a:	[38;5;140m|[0m        [38;5;216m+[38;5;216m-[38;5;216m-[0m e789                	bnez	a5,80001984 <_fflush_r+0x1a>
    8000197c:	[38;5;140m|[0m        [38;5;216m|[0m   e42e                	sd	a1,8(sp)
    8000197e:	[38;5;140m|[0m        [38;5;216m|[0m   d4cff0ef          	jal	ra,80000eca <__sinit>
    80001982:	[38;5;140m|[0m        [38;5;216m|[0m   65a2                	ld	a1,8(sp)
    80001984:	[38;5;140m|[0m        [38;5;216m\[38;5;216m-[38;5;216m>[0m 00001797          	auipc	a5,0x1
    80001988:	[38;5;140m|[0m            39c78793          	addi	a5,a5,924 # 80002d20 <__sf_fake_stdin>
    8000198c:	[38;5;140m|[0m        [38;5;219m/--[0m 00f59b63          	bne	a1,a5,800019a2 <_fflush_r+0x38>
    80001990:	[38;5;140m|[0m        [38;5;219m|[0m   640c                	ld	a1,8(s0)
    80001992:	[38;5;140m|[0m  [38;5;130m/-----[38;5;219m|[38;5;130m->[0m 01059783          	lh	a5,16(a1)
    80001996:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m/[38;5;160m-[38;5;160m-[38;5;219m|[38;5;160m-[38;5;160m-[0m c795                	beqz	a5,800019c2 <_fflush_r+0x58>
    80001998:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m|[0m   8522                	mv	a0,s0
    8000199a:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m|[0m   6442                	ld	s0,16(sp)
    8000199c:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m|[0m   60e2                	ld	ra,24(sp)
    8000199e:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m|[0m   6105                	addi	sp,sp,32
    800019a0:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m|[0m   bd41                	j	80001830 <__sflush_r>
    800019a2:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;219m\->[0m 00001797          	auipc	a5,0x1
    800019a6:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m      34678793          	addi	a5,a5,838 # 80002ce8 <__sf_fake_stdout>
    800019aa:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;231m/[38;5;231m-[38;5;231m-[0m 00f59463          	bne	a1,a5,800019b2 <_fflush_r+0x48>
    800019ae:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;231m|[0m   680c                	ld	a1,16(s0)
    800019b0:	[38;5;140m|[0m  [38;5;130m+--[38;5;160m|[38;5;130m--[38;5;231m|[38;5;130m--[0m b7cd                	j	80001992 <_fflush_r+0x28>
    800019b2:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m  [38;5;231m\[38;5;231m-[38;5;231m>[0m 00001797          	auipc	a5,0x1
    800019b6:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m      2fe78793          	addi	a5,a5,766 # 80002cb0 <__sf_fake_stderr>
    800019ba:	[38;5;140m|[0m  [38;5;130m+--[38;5;160m|[38;5;130m-----[0m fcf59ce3          	bne	a1,a5,80001992 <_fflush_r+0x28>
    800019be:	[38;5;140m|[0m  [38;5;130m|[0m  [38;5;160m|[0m      6c0c                	ld	a1,24(s0)
    800019c0:	[38;5;140m|[0m  [38;5;130m\--[38;5;160m|[38;5;130m-----[0m bfc9                	j	80001992 <_fflush_r+0x28>
    800019c2:	[38;5;140m|[0m     [38;5;160m\[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m>[0m 60e2                	ld	ra,24(sp)
    800019c4:	[38;5;140m|[0m            6442                	ld	s0,16(sp)
    800019c6:	[38;5;140m|[0m            4501                	li	a0,0
    800019c8:	[38;5;140m|[0m            6105                	addi	sp,sp,32
    800019ca:	[38;5;140m|[0m            8082                	ret
    800019cc:	[38;5;140m\[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m-[38;5;140m>[0m 4501                	li	a0,0
    800019ce:	             8082                	ret

00000000800019d0 <fflush>:
    800019d0:	    85aa                	mv	a1,a0
    800019d2:	[38;5;206m/[38;5;206m-[38;5;206m-[0m e909                	bnez	a0,800019e4 <fflush+0x14>
    800019d4:	[38;5;206m|[0m   00000597          	auipc	a1,0x0
    800019d8:	[38;5;206m|[0m   f9658593          	addi	a1,a1,-106 # 8000196a <_fflush_r>
    800019dc:	[38;5;206m|[0m   8201b503          	ld	a0,-2016(gp) # 80002f20 <_global_impure_ptr>
    800019e0:	[38;5;206m|[0m   e86ff06f          	j	80001066 <_fwalk_reent>
    800019e4:	[38;5;206m\[38;5;206m-[38;5;206m>[0m 00001517          	auipc	a0,0x1
    800019e8:	    51c53503          	ld	a0,1308(a0) # 80002f00 <_impure_ptr>
    800019ec:	    bfbd                	j	8000196a <_fflush_r>

00000000800019ee <__sfvwrite_r>:
    800019ee:	                                                 6a1c                	ld	a5,16(a2)
    800019f0:	                                             [38;5;143m/--[0m e399                	bnez	a5,800019f6 <__sfvwrite_r+0x8>
    800019f2:	                                             [38;5;143m|[0m   4501                	li	a0,0
    800019f4:	                                             [38;5;143m|[0m   8082                	ret
    800019f6:	                                             [38;5;143m\->[0m 0105d783          	lhu	a5,16(a1)
    800019fa:	                                                 7159                	addi	sp,sp,-112
    800019fc:	                                                 f0a2                	sd	s0,96(sp)
    800019fe:	                                                 e8ca                	sd	s2,80(sp)
    80001a00:	                                                 e0d2                	sd	s4,64(sp)
    80001a02:	                                                 f486                	sd	ra,104(sp)
    80001a04:	                                                 eca6                	sd	s1,88(sp)
    80001a06:	                                                 e4ce                	sd	s3,72(sp)
    80001a08:	                                                 fc56                	sd	s5,56(sp)
    80001a0a:	                                                 f85a                	sd	s6,48(sp)
    80001a0c:	                                                 f45e                	sd	s7,40(sp)
    80001a0e:	                                                 f062                	sd	s8,32(sp)
    80001a10:	                                                 ec66                	sd	s9,24(sp)
    80001a12:	                                                 e86a                	sd	s10,16(sp)
    80001a14:	                                                 e46e                	sd	s11,8(sp)
    80001a16:	                                                 8ba1                	andi	a5,a5,8
    80001a18:	                                                 892a                	mv	s2,a0
    80001a1a:	                                                 842e                	mv	s0,a1
    80001a1c:	                                                 8a32                	mv	s4,a2
    80001a1e:	                                       [38;5;222m/--------[0m c3d9                	beqz	a5,80001aa4 <__sfvwrite_r+0xb6>
    80001a20:	                                       [38;5;222m|[0m         6d9c                	ld	a5,24(a1)
    80001a22:	                                       [38;5;222m+--------[0m c3c9                	beqz	a5,80001aa4 <__sfvwrite_r+0xb6>
    80001a24:	                                    [38;5;220m/[38;5;220m-[38;5;220m-[38;5;222m|[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m>[0m 01041783          	lh	a5,16(s0)
    80001a28:	                                    [38;5;220m|[0m  [38;5;222m|[0m         000a3983          	ld	s3,0(s4)
    80001a2c:	                                    [38;5;220m|[0m  [38;5;222m|[0m         0027f713          	andi	a4,a5,2
    80001a30:	                                 [38;5;150m/[38;5;150m-[38;5;150m-[38;5;220m|[38;5;150m-[38;5;150m-[38;5;222m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[0m eb79                	bnez	a4,80001b06 <__sfvwrite_r+0x118>
    80001a32:	                                 [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m         8b85                	andi	a5,a5,1
    80001a34:	                                 [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m         4a81                	li	s5,0
    80001a36:	                     [38;5;189m/[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;150m|[38;5;189m-[38;5;189m-[38;5;220m|[38;5;189m-[38;5;189m-[38;5;222m|[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[0m 14078763          	beqz	a5,80001b84 <__sfvwrite_r+0x196>
    80001a3a:	                     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m         4501                	li	a0,0
    80001a3c:	                     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m         4b81                	li	s7,0
    80001a3e:	                     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m         4b01                	li	s6,0
    80001a40:	            [38;5;217m/[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;189m|[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;150m|[38;5;217m-[38;5;217m-[38;5;220m|[38;5;217m-[38;5;217m-[38;5;222m|[38;5;217m-[38;5;217m-[38;5;157m/----[38;5;217mX[0m 220b0763          	beqz	s6,80001c6e <__sfvwrite_r+0x280>
    80001a44:	         [38;5;135m/[38;5;135m-[38;5;135m-[38;5;217m|[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;189m|[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;150m|[38;5;135m-[38;5;135m-[38;5;220m|[38;5;135m-[38;5;135m-[38;5;222m|[38;5;135m-[38;5;135m-[38;5;157m|[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[0m 22050d63          	beqz	a0,80001c7e <__sfvwrite_r+0x290>
    80001a48:	[38;5;211m/--------[38;5;135m|[38;5;211m--[38;5;217m|[38;5;211m--------[38;5;189m|[38;5;211m-----------[38;5;150m|[38;5;211m--[38;5;220m|[38;5;211m--[38;5;222m|[38;5;211m--[38;5;157m|[38;5;211m---->[0m 8c56                	mv	s8,s5
    80001a4a:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;146m/--[0m 015b7363          	bgeu	s6,s5,80001a50 <__sfvwrite_r+0x62>
    80001a4e:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;146m|[0m   8c5a                	mv	s8,s6
    80001a50:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;146m\->[0m 6008                	ld	a0,0(s0)
    80001a52:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      6c1c                	ld	a5,24(s0)
    80001a54:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      4444                	lw	s1,12(s0)
    80001a56:	[38;5;211m|[0m        [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      5014                	lw	a3,32(s0)
    80001a58:	[38;5;211m|[0m     [38;5;154m/[38;5;154m-[38;5;154m-[38;5;135m|[38;5;154m-[38;5;154m-[38;5;217m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;189m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;150m|[38;5;154m-[38;5;154m-[38;5;220m|[38;5;154m-[38;5;154m-[38;5;222m|[38;5;154m-[38;5;154m-[38;5;157m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[0m 24a7f063          	bgeu	a5,a0,80001c98 <__sfvwrite_r+0x2aa>
    80001a5c:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      9cb5                	addw	s1,s1,a3
    80001a5e:	[38;5;211m|[0m     [38;5;154m+[38;5;154m-[38;5;154m-[38;5;135m|[38;5;154m-[38;5;154m-[38;5;217m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;189m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;150m|[38;5;154m-[38;5;154m-[38;5;220m|[38;5;154m-[38;5;154m-[38;5;222m|[38;5;154m-[38;5;154m-[38;5;157m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[0m 2384dd63          	bge	s1,s8,80001c98 <__sfvwrite_r+0x2aa>
    80001a62:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      85de                	mv	a1,s7
    80001a64:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      8626                	mv	a2,s1
    80001a66:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      3c2000ef          	jal	ra,80001e28 <memmove>
    80001a6a:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      601c                	ld	a5,0(s0)
    80001a6c:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      85a2                	mv	a1,s0
    80001a6e:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      854a                	mv	a0,s2
    80001a70:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      97a6                	add	a5,a5,s1
    80001a72:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      e01c                	sd	a5,0(s0)
    80001a74:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m        [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      ef7ff0ef          	jal	ra,8000196a <_fflush_r>
    80001a78:	[38;5;211m|[0m     [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m/-----[38;5;189m|[38;5;125m-----------[38;5;150m|[38;5;125m--[38;5;220m|[38;5;125m--[38;5;222m|[38;5;125m--[38;5;157m|[38;5;125m-----[0m 0e051f63          	bnez	a0,80001b76 <__sfvwrite_r+0x188>
    80001a7c:	[38;5;211m|[0m  [38;5;142m/--[38;5;154m|[38;5;142m--[38;5;135m|[38;5;142m--[38;5;217m|[38;5;142m--[38;5;125m|[38;5;142m-----[38;5;189m|[38;5;142m-----------[38;5;150m|[38;5;142m--[38;5;220m|[38;5;142m--[38;5;222m|[38;5;142m--[38;5;157m|[38;5;142m---->[0m 409a8abb          	subw	s5,s5,s1
    80001a80:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      4505                	li	a0,1
    80001a82:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;183m/--[0m 000a9763          	bnez	s5,80001a90 <__sfvwrite_r+0xa2>
    80001a86:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;183m|[0m   85a2                	mv	a1,s0
    80001a88:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;183m|[0m   854a                	mv	a0,s2
    80001a8a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;183m|[0m   ee1ff0ef          	jal	ra,8000196a <_fflush_r>
    80001a8e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m+-----[38;5;189m|[38;5;125m-----------[38;5;150m|[38;5;125m--[38;5;220m|[38;5;125m--[38;5;222m|[38;5;125m--[38;5;157m|[38;5;125m--[38;5;183m|[38;5;125m--[0m e565                	bnez	a0,80001b76 <__sfvwrite_r+0x188>
    80001a90:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m  [38;5;183m\->[0m 010a3783          	ld	a5,16(s4)
    80001a94:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      9ba6                	add	s7,s7,s1
    80001a96:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      409b0b33          	sub	s6,s6,s1
    80001a9a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      8f85                	sub	a5,a5,s1
    80001a9c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m|[0m      00fa3823          	sd	a5,16(s4)
    80001aa0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m     [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m|[0m  [38;5;157m\-----[0m f3c5                	bnez	a5,80001a40 <__sfvwrite_r+0x52>
    80001aa2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m/[38;5;175m-[38;5;175m-[38;5;189m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;150m|[38;5;175m-[38;5;175m-[38;5;220m|[38;5;175m-[38;5;175m-[38;5;222m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[0m a091                	j	80001ae6 <__sfvwrite_r+0xf8>
    80001aa4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m  [38;5;222m\------->[0m 85a2                	mv	a1,s0
    80001aa6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m            854a                	mv	a0,s2
    80001aa8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m|[0m            c5dff0ef          	jal	ra,80001704 <__swsetup_r>
    80001aac:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;220m\[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[38;5;220m-[0m dd25                	beqz	a0,80001a24 <__sfvwrite_r+0x36>
    80001aae:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m/---------->[0m 557d                	li	a0,-1
    80001ab0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m     [38;5;211m/[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[0m a825                	j	80001ae8 <__sfvwrite_r+0xfa>
    80001ab2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m     [38;5;211m|[0m  [38;5;162m/[38;5;162m-[38;5;162m>[0m 0009ba83          	ld	s5,0(s3)
    80001ab6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m     [38;5;211m|[0m  [38;5;162m|[0m   0089b483          	ld	s1,8(s3)
    80001aba:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m     [38;5;211m|[0m  [38;5;162m|[0m   09c1                	addi	s3,s3,16
    80001abc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m/[38;5;192m-[38;5;192m-[38;5;211m|[38;5;192m-[38;5;192m-[38;5;162m|[38;5;192m-[38;5;192m>[0m 643c                	ld	a5,72(s0)
    80001abe:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m  [38;5;162m|[0m   7c0c                	ld	a1,56(s0)
    80001ac0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m  [38;5;162m\[38;5;162m-[38;5;162m-[0m d8ed                	beqz	s1,80001ab2 <__sfvwrite_r+0xc4>
    80001ac2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      86a6                	mv	a3,s1
    80001ac4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m  [38;5;200m/[38;5;200m-[38;5;200m-[0m 009b7363          	bgeu	s6,s1,80001aca <__sfvwrite_r+0xdc>
    80001ac8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m  [38;5;200m|[0m   86da                	mv	a3,s6
    80001aca:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m  [38;5;200m\[38;5;200m-[38;5;200m>[0m 2681                	sext.w	a3,a3
    80001acc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      8656                	mv	a2,s5
    80001ace:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      854a                	mv	a0,s2
    80001ad0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      9782                	jalr	a5
    80001ad2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m+--[38;5;175m|[38;5;125m--[38;5;189m|[38;5;125m-----------[38;5;150m|[38;5;125m--[38;5;183m|[38;5;125m--[38;5;192m|[38;5;125m--[38;5;211m|[38;5;125m-----[0m 0aa05263          	blez	a0,80001b76 <__sfvwrite_r+0x188>
    80001ad6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      010a3783          	ld	a5,16(s4)
    80001ada:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      9aaa                	add	s5,s5,a0
    80001adc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      8c89                	sub	s1,s1,a0
    80001ade:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      8f89                	sub	a5,a5,a0
    80001ae0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m|[0m      00fa3823          	sd	a5,16(s4)
    80001ae4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m+[38;5;192m-[38;5;192m-[38;5;211m|[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[0m ffe1                	bnez	a5,80001abc <__sfvwrite_r+0xce>
    80001ae6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m>[38;5;175m-[38;5;175m-[38;5;189m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;150m|[38;5;175m-[38;5;175m-[38;5;183m|[38;5;175m-[38;5;175m-[38;5;192m|[38;5;175m-[38;5;175m-[38;5;211m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m>[0m 4501                	li	a0,0
    80001ae8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m  [38;5;211m\[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m>[0m 70a6                	ld	ra,104(sp)
    80001aea:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         7406                	ld	s0,96(sp)
    80001aec:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         64e6                	ld	s1,88(sp)
    80001aee:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6946                	ld	s2,80(sp)
    80001af0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         69a6                	ld	s3,72(sp)
    80001af2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6a06                	ld	s4,64(sp)
    80001af4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         7ae2                	ld	s5,56(sp)
    80001af6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         7b42                	ld	s6,48(sp)
    80001af8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         7ba2                	ld	s7,40(sp)
    80001afa:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         7c02                	ld	s8,32(sp)
    80001afc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6ce2                	ld	s9,24(sp)
    80001afe:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6d42                	ld	s10,16(sp)
    80001b00:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6da2                	ld	s11,8(sp)
    80001b02:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         6165                	addi	sp,sp,112
    80001b04:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m|[0m  [38;5;183m|[0m  [38;5;192m|[0m         8082                	ret
    80001b06:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m           [38;5;150m\[38;5;150m-[38;5;150m-[38;5;183m|[38;5;150m-[38;5;150m-[38;5;192m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m>[0m 80000b37          	lui	s6,0x80000
    80001b0a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m  [38;5;192m|[0m         4a81                	li	s5,0
    80001b0c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m  [38;5;192m|[0m         4481                	li	s1,0
    80001b0e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m  [38;5;192m|[0m         c00b4b13          	xori	s6,s6,-1024
    80001b12:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m  [38;5;192m\[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[0m b76d                	j	80001abc <__sfvwrite_r+0xce>
    80001b14:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m        [38;5;223m/[38;5;223m-[38;5;223m>[0m 0009ba83          	ld	s5,0(s3)
    80001b18:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m        [38;5;223m|[0m   0089bc83          	ld	s9,8(s3)
    80001b1c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m              [38;5;183m|[0m        [38;5;223m|[0m   09c1                	addi	s3,s3,16
    80001b1e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m/--------[38;5;183m|[38;5;132m--------[38;5;223m|[38;5;132m->[0m 4444                	lw	s1,12(s0)
    80001b20:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m|[0m        [38;5;183m|[0m        [38;5;223m|[0m   01041783          	lh	a5,16(s0)
    80001b24:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m|[0m        [38;5;183m|[0m        [38;5;223m|[0m   6008                	ld	a0,0(s0)
    80001b26:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m|[0m        [38;5;183m|[0m        [38;5;223m|[0m   8d26                	mv	s10,s1
    80001b28:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m|[0m        [38;5;183m|[0m        [38;5;223m\[38;5;223m-[38;5;223m-[0m fe0c86e3          	beqz	s9,80001b14 <__sfvwrite_r+0x126>
    80001b2c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m     [38;5;132m|[0m        [38;5;183m|[0m            2007f713          	andi	a4,a5,512
    80001b30:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m/[38;5;170m-[38;5;170m-[38;5;132m|[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;183m|[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[0m c37d                	beqz	a4,80001c16 <__sfvwrite_r+0x228>
    80001b32:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m/--------[0m 089ce763          	bltu	s9,s1,80001bc0 <__sfvwrite_r+0x1d2>
    80001b36:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         4807f713          	andi	a4,a5,1152
    80001b3a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m+--------[0m c359                	beqz	a4,80001bc0 <__sfvwrite_r+0x1d2>
    80001b3c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         5004                	lw	s1,32(s0)
    80001b3e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         6c0c                	ld	a1,24(s0)
    80001b40:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         029b84bb          	mulw	s1,s7,s1
    80001b44:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         8d0d                	sub	a0,a0,a1
    80001b46:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         00050d9b          	sext.w	s11,a0
    80001b4a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         001d8713          	addi	a4,s11,1
    80001b4e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         9766                	add	a4,a4,s9
    80001b50:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m         0384c4bb          	divw	s1,s1,s8
    80001b54:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m     [38;5;160m/--[0m 00e4f563          	bgeu	s1,a4,80001b5e <__sfvwrite_r+0x170>
    80001b58:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m     [38;5;160m|[0m   2505                	addiw	a0,a0,1
    80001b5a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m     [38;5;160m|[0m   019504bb          	addw	s1,a0,s9
    80001b5e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m        [38;5;183m|[0m  [38;5;221m|[0m     [38;5;160m\->[0m 4007f793          	andi	a5,a5,1024
    80001b62:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m/[38;5;139m-[38;5;139m-[38;5;183m|[38;5;139m-[38;5;139m-[38;5;221m|[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[0m cbc9                	beqz	a5,80001bf4 <__sfvwrite_r+0x206>
    80001b64:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m         85a6                	mv	a1,s1
    80001b66:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m         854a                	mv	a0,s2
    80001b68:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m         d7aff0ef          	jal	ra,800010e2 <_malloc_r>
    80001b6c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m         8d2a                	mv	s10,a0
    80001b6e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m     [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m     [38;5;144m/[38;5;144m-[38;5;144m-[0m e11d                	bnez	a0,80001b94 <__sfvwrite_r+0x1a6>
    80001b70:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m/[38;5;200m-[38;5;200m-[38;5;139m|[38;5;200m-[38;5;200m-[38;5;183m|[38;5;200m-[38;5;200m-[38;5;221m|[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;144m|[38;5;200m-[38;5;200m>[0m 47b1                	li	a5,12
    80001b72:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m     [38;5;144m|[0m   00f92023          	sw	a5,0(s2)
    80001b76:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m>--[38;5;175m|[38;5;125m--[38;5;189m|[38;5;125m--[38;5;170m|[38;5;125m--[38;5;132m|[38;5;125m--[38;5;200m|[38;5;125m--[38;5;139m|[38;5;125m--[38;5;183m|[38;5;125m--[38;5;221m|[38;5;125m-----[38;5;144m|[38;5;125m->[0m 01045783          	lhu	a5,16(s0)
    80001b7a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m     [38;5;144m|[0m   0407e793          	ori	a5,a5,64
    80001b7e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m  [38;5;221m|[0m     [38;5;144m|[0m   00f41823          	sh	a5,16(s0)
    80001b82:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m|[0m  [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m\--[38;5;221m|[38;5;183m-----[38;5;144m|[38;5;183m--[0m b735                	j	80001aae <__sfvwrite_r+0xc0>
    80001b84:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m  [38;5;189m\[38;5;189m-[38;5;189m-[38;5;170m|[38;5;189m-[38;5;189m-[38;5;132m|[38;5;189m-[38;5;189m-[38;5;200m|[38;5;189m-[38;5;189m-[38;5;139m|[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;221m|[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;189m-[38;5;144m|[38;5;189m-[38;5;189m>[0m 80000b37          	lui	s6,0x80000
    80001b88:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m     [38;5;144m|[0m   4c81                	li	s9,0
    80001b8a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m     [38;5;144m|[0m   fffb4b13          	not	s6,s6
    80001b8e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m     [38;5;144m|[0m   4b8d                	li	s7,3
    80001b90:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m     [38;5;144m|[0m   4c09                	li	s8,2
    80001b92:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m+--[38;5;200m|[38;5;132m--[38;5;139m|[38;5;132m-----[38;5;221m|[38;5;132m-----[38;5;144m|[38;5;132m--[0m b771                	j	80001b1e <__sfvwrite_r+0x130>
    80001b94:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m     [38;5;144m\[38;5;144m-[38;5;144m>[0m 6c0c                	ld	a1,24(s0)
    80001b96:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         866e                	mv	a2,s11
    80001b98:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         27a000ef          	jal	ra,80001e12 <memcpy>
    80001b9c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         01045783          	lhu	a5,16(s0)
    80001ba0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         b7f7f793          	andi	a5,a5,-1153
    80001ba4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         0807e793          	ori	a5,a5,128
    80001ba8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m         00f41823          	sh	a5,16(s0)
    80001bac:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m/---->[0m 01a43c23          	sd	s10,24(s0)
    80001bb0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      d004                	sw	s1,32(s0)
    80001bb2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      9d6e                	add	s10,s10,s11
    80001bb4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      41b484bb          	subw	s1,s1,s11
    80001bb8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      01a43023          	sd	s10,0(s0)
    80001bbc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      c444                	sw	s1,12(s0)
    80001bbe:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m|[0m  [38;5;209m|[0m      8d66                	mv	s10,s9
    80001bc0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m     [38;5;221m\--[38;5;209m|[38;5;221m---->[0m 84e6                	mv	s1,s9
    80001bc2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m  [38;5;143m/--[0m 01acf363          	bgeu	s9,s10,80001bc8 <__sfvwrite_r+0x1da>
    80001bc6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m  [38;5;143m|[0m   8d66                	mv	s10,s9
    80001bc8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m  [38;5;143m\->[0m 6008                	ld	a0,0(s0)
    80001bca:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      866a                	mv	a2,s10
    80001bcc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      85d6                	mv	a1,s5
    80001bce:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      25a000ef          	jal	ra,80001e28 <memmove>
    80001bd2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      445c                	lw	a5,12(s0)
    80001bd4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      41a787bb          	subw	a5,a5,s10
    80001bd8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      c45c                	sw	a5,12(s0)
    80001bda:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      601c                	ld	a5,0(s0)
    80001bdc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      97ea                	add	a5,a5,s10
    80001bde:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m        [38;5;209m|[0m      e01c                	sd	a5,0(s0)
    80001be0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m/-----[38;5;209m|[38;5;183m---->[0m 010a3783          	ld	a5,16(s4)
    80001be4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m     [38;5;209m|[0m      9aa6                	add	s5,s5,s1
    80001be6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m     [38;5;209m|[0m      409c8cb3          	sub	s9,s9,s1
    80001bea:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m     [38;5;209m|[0m      8f85                	sub	a5,a5,s1
    80001bec:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m|[0m  [38;5;200m|[0m  [38;5;139m|[0m  [38;5;183m|[0m     [38;5;209m|[0m      00fa3823          	sd	a5,16(s4)
    80001bf0:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m|[0m     [38;5;170m|[0m  [38;5;132m\--[38;5;200m|[38;5;132m--[38;5;139m|[38;5;132m--[38;5;183m|[38;5;132m-----[38;5;209m|[38;5;132m-----[0m f79d                	bnez	a5,80001b1e <__sfvwrite_r+0x130>
    80001bf2:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m  [38;5;175m\[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;170m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;200m|[38;5;175m-[38;5;175m-[38;5;139m|[38;5;175m-[38;5;175m-[38;5;183m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;209m|[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[38;5;175m-[0m bdd5                	j	80001ae6 <__sfvwrite_r+0xf8>
    80001bf4:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m  [38;5;139m\[38;5;139m-[38;5;139m-[38;5;183m|[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;209m|[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m-[38;5;139m>[0m 8626                	mv	a2,s1
    80001bf6:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m     [38;5;209m|[0m      854a                	mv	a0,s2
    80001bf8:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m     [38;5;209m|[0m      2fa000ef          	jal	ra,80001ef2 <_realloc_r>
    80001bfc:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m     [38;5;209m|[0m      8d2a                	mv	s10,a0
    80001bfe:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m     [38;5;209m\-----[0m f55d                	bnez	a0,80001bac <__sfvwrite_r+0x1be>
    80001c00:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            6c0c                	ld	a1,24(s0)
    80001c02:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            854a                	mv	a0,s2
    80001c04:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            24e000ef          	jal	ra,80001e52 <_free_r>
    80001c08:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            01045783          	lhu	a5,16(s0)
    80001c0c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            f7f7f793          	andi	a5,a5,-129
    80001c10:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m|[0m     [38;5;183m|[0m            00f41823          	sh	a5,16(s0)
    80001c14:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m|[0m     [38;5;200m\[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;183m|[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[38;5;200m-[0m bfb1                	j	80001b70 <__sfvwrite_r+0x182>
    80001c16:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m        [38;5;170m\[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;183m|[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m-[38;5;170m>[0m 6c1c                	ld	a5,24(s0)
    80001c18:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m     [38;5;205m/-----[0m 00a7e563          	bltu	a5,a0,80001c22 <__sfvwrite_r+0x234>
    80001c1c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m     [38;5;205m|[0m      5014                	lw	a3,32(s0)
    80001c1e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m/[38;5;150m-[38;5;150m-[38;5;205m|[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[0m 02dcf763          	bgeu	s9,a3,80001c4c <__sfvwrite_r+0x25e>
    80001c22:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m  [38;5;205m\--[38;5;186m/-[38;5;205mX[0m 009cf363          	bgeu	s9,s1,80001c28 <__sfvwrite_r+0x23a>
    80001c26:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m     [38;5;186m|[0m   84e6                	mv	s1,s9
    80001c28:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m     [38;5;186m\->[0m 8626                	mv	a2,s1
    80001c2a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         85d6                	mv	a1,s5
    80001c2c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         1fc000ef          	jal	ra,80001e28 <memmove>
    80001c30:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         445c                	lw	a5,12(s0)
    80001c32:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         4097873b          	subw	a4,a5,s1
    80001c36:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         601c                	ld	a5,0(s0)
    80001c38:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         c458                	sw	a4,12(s0)
    80001c3a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         97a6                	add	a5,a5,s1
    80001c3c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         e01c                	sd	a5,0(s0)
    80001c3e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m+--[38;5;150m|[38;5;183m--------[0m f34d                	bnez	a4,80001be0 <__sfvwrite_r+0x1f2>
    80001c40:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         85a2                	mv	a1,s0
    80001c42:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         854a                	mv	a0,s2
    80001c44:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m|[0m         d27ff0ef          	jal	ra,8000196a <_fflush_r>
    80001c48:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m+--[38;5;150m|[38;5;183m--------[0m dd41                	beqz	a0,80001be0 <__sfvwrite_r+0x1f2>
    80001c4a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m+--------------------[38;5;183m|[38;5;125m--[38;5;150m|[38;5;125m--------[0m b735                	j	80001b76 <__sfvwrite_r+0x188>
    80001c4c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m  [38;5;150m\[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m-[38;5;150m>[0m 87e6                	mv	a5,s9
    80001c4e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m        [38;5;131m/--[0m 019b7363          	bgeu	s6,s9,80001c54 <__sfvwrite_r+0x266>
    80001c52:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m        [38;5;131m|[0m   87da                	mv	a5,s6
    80001c54:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m        [38;5;131m\->[0m 02d7c7bb          	divw	a5,a5,a3
    80001c58:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            6438                	ld	a4,72(s0)
    80001c5a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            7c0c                	ld	a1,56(s0)
    80001c5c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            8656                	mv	a2,s5
    80001c5e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            854a                	mv	a0,s2
    80001c60:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            02d786bb          	mulw	a3,a5,a3
    80001c64:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            9702                	jalr	a4
    80001c66:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m|[0m            84aa                	mv	s1,a0
    80001c68:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                    [38;5;183m\-----------[0m f6a04ce3          	bgtz	a0,80001be0 <__sfvwrite_r+0x1f2>
    80001c6c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m+--------------------------------[0m b729                	j	80001b76 <__sfvwrite_r+0x188>
    80001c6e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m>[38;5;217m-[38;5;217m-[38;5;125m|[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m>[0m 0089bb03          	ld	s6,8(s3)
    80001c72:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                                 87ce                	mv	a5,s3
    80001c74:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m|[0m  [38;5;125m|[0m                                 09c1                	addi	s3,s3,16
    80001c76:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m  [38;5;217m\[38;5;217m-[38;5;217m-[38;5;125m|[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[38;5;217m-[0m fe0b0ce3          	beqz	s6,80001c6e <__sfvwrite_r+0x280>
    80001c7a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m|[0m     [38;5;125m|[0m                                 0007bb83          	ld	s7,0(a5)
    80001c7e:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m  [38;5;135m\[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;125m|[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m-[38;5;135m>[0m 865a                	mv	a2,s6
    80001c80:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                                 45a9                	li	a1,10
    80001c82:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                                 855e                	mv	a0,s7
    80001c84:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                                 174000ef          	jal	ra,80001df8 <memchr>
    80001c88:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                             [38;5;228m/[38;5;228m-[38;5;228m-[0m c509                	beqz	a0,80001c92 <__sfvwrite_r+0x2a4>
    80001c8a:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                             [38;5;228m|[0m   0505                	addi	a0,a0,1
    80001c8c:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                             [38;5;228m|[0m   41750abb          	subw	s5,a0,s7
    80001c90:	[38;5;211m+--[38;5;142m|[38;5;211m--[38;5;154m|[38;5;211m--------[38;5;125m|[38;5;211m-----------------------------[38;5;228m|[38;5;211m--[0m bb65                	j	80001a48 <__sfvwrite_r+0x5a>
    80001c92:	[38;5;211m|[0m  [38;5;142m|[0m  [38;5;154m|[0m        [38;5;125m|[0m                             [38;5;228m\[38;5;228m-[38;5;228m>[0m 001b0a9b          	addiw	s5,s6,1 # ffffffff80000001 <__heap_end+0xfffffffefffdc001>
    80001c96:	[38;5;211m\--[38;5;142m|[38;5;211m--[38;5;154m|[38;5;211m--------[38;5;125m|[38;5;211m--------------------------------[0m bb4d                	j	80001a48 <__sfvwrite_r+0x5a>
    80001c98:	   [38;5;142m|[0m  [38;5;154m\[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;125m|[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;154m-[38;5;213m/-[38;5;154mX[0m 00dc4b63          	blt	s8,a3,80001cae <__sfvwrite_r+0x2c0>
    80001c9c:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   643c                	ld	a5,72(s0)
    80001c9e:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   7c0c                	ld	a1,56(s0)
    80001ca0:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   865e                	mv	a2,s7
    80001ca2:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   854a                	mv	a0,s2
    80001ca4:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   9782                	jalr	a5
    80001ca6:	   [38;5;142m|[0m           [38;5;125m|[0m                             [38;5;213m|[0m   84aa                	mv	s1,a0
    80001ca8:	   [38;5;142m+-----------[38;5;125m|[38;5;142m-----------------------------[38;5;213m|[38;5;142m--[0m dca04ae3          	bgtz	a0,80001a7c <__sfvwrite_r+0x8e>
    80001cac:	   [38;5;142m|[0m           [38;5;125m\-----------------------------[38;5;213m|[38;5;125m--[0m b5e9                	j	80001b76 <__sfvwrite_r+0x188>
    80001cae:	   [38;5;142m|[0m                                         [38;5;213m\->[0m 8662                	mv	a2,s8
    80001cb0:	   [38;5;142m|[0m                                             85de                	mv	a1,s7
    80001cb2:	   [38;5;142m|[0m                                             176000ef          	jal	ra,80001e28 <memmove>
    80001cb6:	   [38;5;142m|[0m                                             445c                	lw	a5,12(s0)
    80001cb8:	   [38;5;142m|[0m                                             84e2                	mv	s1,s8
    80001cba:	   [38;5;142m|[0m                                             418787bb          	subw	a5,a5,s8
    80001cbe:	   [38;5;142m|[0m                                             c45c                	sw	a5,12(s0)
    80001cc0:	   [38;5;142m|[0m                                             601c                	ld	a5,0(s0)
    80001cc2:	   [38;5;142m|[0m                                             97e2                	add	a5,a5,s8
    80001cc4:	   [38;5;142m|[0m                                             e01c                	sd	a5,0(s0)
    80001cc6:	   [38;5;142m\--------------------------------------------[0m bb5d                	j	80001a7c <__sfvwrite_r+0x8e>

0000000080001cc8 <_lseek_r>:
    80001cc8:	    1141                	addi	sp,sp,-16
    80001cca:	    e022                	sd	s0,0(sp)
    80001ccc:	    842a                	mv	s0,a0
    80001cce:	    852e                	mv	a0,a1
    80001cd0:	    85b2                	mv	a1,a2
    80001cd2:	    8636                	mv	a2,a3
    80001cd4:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    80001cd8:	    e406                	sd	ra,8(sp)
    80001cda:	    017000ef          	jal	ra,800024f0 <_lseek>
    80001cde:	    57fd                	li	a5,-1
    80001ce0:	[38;5;182m/[38;5;182m-[38;5;182m-[0m 00f51663          	bne	a0,a5,80001cec <_lseek_r+0x24>
    80001ce4:	[38;5;182m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    80001ce8:	[38;5;182m+[38;5;182m-[38;5;182m-[0m c391                	beqz	a5,80001cec <_lseek_r+0x24>
    80001cea:	[38;5;182m|[0m   c01c                	sw	a5,0(s0)
    80001cec:	[38;5;182m\[38;5;182m-[38;5;182m>[0m 60a2                	ld	ra,8(sp)
    80001cee:	    6402                	ld	s0,0(sp)
    80001cf0:	    0141                	addi	sp,sp,16
    80001cf2:	    8082                	ret

0000000080001cf4 <__swhatbuf_r>:
    80001cf4:	                7175                	addi	sp,sp,-144
    80001cf6:	                e122                	sd	s0,128(sp)
    80001cf8:	                842e                	mv	s0,a1
    80001cfa:	                01259583          	lh	a1,18(a1)
    80001cfe:	                fca6                	sd	s1,120(sp)
    80001d00:	                f8ca                	sd	s2,112(sp)
    80001d02:	                e506                	sd	ra,136(sp)
    80001d04:	                84b2                	mv	s1,a2
    80001d06:	                8936                	mv	s2,a3
    80001d08:	            [38;5;149m/[38;5;149m-[38;5;149m-[0m 0205d363          	bgez	a1,80001d2e <__swhatbuf_r+0x3a>
    80001d0c:	         [38;5;163m/--[38;5;149m|[38;5;163m->[0m 01045783          	lhu	a5,16(s0)
    80001d10:	         [38;5;163m|[0m  [38;5;149m|[0m   0807f793          	andi	a5,a5,128
    80001d14:	   [38;5;230m/[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;163m|[38;5;230m-[38;5;230m-[38;5;149m|[38;5;230m-[38;5;230m-[0m eb95                	bnez	a5,80001d48 <__swhatbuf_r+0x54>
    80001d16:	   [38;5;230m|[0m  [38;5;202m/--[38;5;163m|[38;5;202m--[38;5;149m|[38;5;202m->[0m 40000713          	li	a4,1024
    80001d1a:	[38;5;132m/[38;5;132m-[38;5;132m-[38;5;230m|[38;5;132m-[38;5;132m-[38;5;202m|[38;5;132m-[38;5;132m-[38;5;163m|[38;5;132m-[38;5;132m-[38;5;149m|[38;5;132m-[38;5;132m>[0m 60aa                	ld	ra,136(sp)
    80001d1c:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   640a                	ld	s0,128(sp)
    80001d1e:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   00f92023          	sw	a5,0(s2)
    80001d22:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   e098                	sd	a4,0(s1)
    80001d24:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   7946                	ld	s2,112(sp)
    80001d26:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   74e6                	ld	s1,120(sp)
    80001d28:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   4501                	li	a0,0
    80001d2a:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   6149                	addi	sp,sp,144
    80001d2c:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m|[0m   8082                	ret
    80001d2e:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m  [38;5;149m\[38;5;149m-[38;5;149m>[0m 0030                	addi	a2,sp,8
    80001d30:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m|[0m      726000ef          	jal	ra,80002456 <_fstat_r>
    80001d34:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m  [38;5;163m\-----[0m fc054ce3          	bltz	a0,80001d0c <__swhatbuf_r+0x18>
    80001d38:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         47b2                	lw	a5,12(sp)
    80001d3a:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         673d                	lui	a4,0xf
    80001d3c:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         8ff9                	and	a5,a5,a4
    80001d3e:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         6709                	lui	a4,0x2
    80001d40:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         8f99                	sub	a5,a5,a4
    80001d42:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m|[0m         0017b793          	seqz	a5,a5
    80001d46:	[38;5;132m|[0m  [38;5;230m|[0m  [38;5;202m\--------[0m bfc1                	j	80001d16 <__swhatbuf_r+0x22>
    80001d48:	[38;5;132m|[0m  [38;5;230m\[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m-[38;5;230m>[0m 4781                	li	a5,0
    80001d4a:	[38;5;132m|[0m               04000713          	li	a4,64
    80001d4e:	[38;5;132m\[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[38;5;132m-[0m b7f1                	j	80001d1a <__swhatbuf_r+0x26>

0000000080001d50 <__smakebuf_r>:
    80001d50:	          0105d783          	lhu	a5,16(a1)
    80001d54:	          7139                	addi	sp,sp,-64
    80001d56:	          f822                	sd	s0,48(sp)
    80001d58:	          fc06                	sd	ra,56(sp)
    80001d5a:	          f426                	sd	s1,40(sp)
    80001d5c:	          f04a                	sd	s2,32(sp)
    80001d5e:	          ec4e                	sd	s3,24(sp)
    80001d60:	          8b89                	andi	a5,a5,2
    80001d62:	          842e                	mv	s0,a1
    80001d64:	      [38;5;144m/--[0m cf91                	beqz	a5,80001d80 <__smakebuf_r+0x30>
    80001d66:	   [38;5;125m/--[38;5;144m|[38;5;125m->[0m 07f40793          	addi	a5,s0,127
    80001d6a:	   [38;5;125m|[0m  [38;5;144m|[0m   e01c                	sd	a5,0(s0)
    80001d6c:	   [38;5;125m|[0m  [38;5;144m|[0m   ec1c                	sd	a5,24(s0)
    80001d6e:	   [38;5;125m|[0m  [38;5;144m|[0m   4785                	li	a5,1
    80001d70:	   [38;5;125m|[0m  [38;5;144m|[0m   d01c                	sw	a5,32(s0)
    80001d72:	[38;5;169m/[38;5;169m-[38;5;169m-[38;5;125m|[38;5;169m-[38;5;169m-[38;5;144m|[38;5;169m-[38;5;169m>[0m 70e2                	ld	ra,56(sp)
    80001d74:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   7442                	ld	s0,48(sp)
    80001d76:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   74a2                	ld	s1,40(sp)
    80001d78:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   7902                	ld	s2,32(sp)
    80001d7a:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   69e2                	ld	s3,24(sp)
    80001d7c:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   6121                	addi	sp,sp,64
    80001d7e:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m|[0m   8082                	ret
    80001d80:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;144m\->[0m 0054                	addi	a3,sp,4
    80001d82:	[38;5;169m|[0m  [38;5;125m|[0m      0030                	addi	a2,sp,8
    80001d84:	[38;5;169m|[0m  [38;5;125m|[0m      84aa                	mv	s1,a0
    80001d86:	[38;5;169m|[0m  [38;5;125m|[0m      f6fff0ef          	jal	ra,80001cf4 <__swhatbuf_r>
    80001d8a:	[38;5;169m|[0m  [38;5;125m|[0m      69a2                	ld	s3,8(sp)
    80001d8c:	[38;5;169m|[0m  [38;5;125m|[0m      892a                	mv	s2,a0
    80001d8e:	[38;5;169m|[0m  [38;5;125m|[0m      8526                	mv	a0,s1
    80001d90:	[38;5;169m|[0m  [38;5;125m|[0m      85ce                	mv	a1,s3
    80001d92:	[38;5;169m|[0m  [38;5;125m|[0m      b50ff0ef          	jal	ra,800010e2 <_malloc_r>
    80001d96:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m/[38;5;159m-[38;5;159m-[0m ed01                	bnez	a0,80001dae <__smakebuf_r+0x5e>
    80001d98:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m|[0m   01041783          	lh	a5,16(s0)
    80001d9c:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m|[0m   2007f713          	andi	a4,a5,512
    80001da0:	[38;5;169m+[38;5;169m-[38;5;169m-[38;5;125m|[38;5;169m-[38;5;169m-[38;5;159m|[38;5;169m-[38;5;169m-[0m fb69                	bnez	a4,80001d72 <__smakebuf_r+0x22>
    80001da2:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m|[0m   9bf1                	andi	a5,a5,-4
    80001da4:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m|[0m   0027e793          	ori	a5,a5,2
    80001da8:	[38;5;169m|[0m  [38;5;125m|[0m  [38;5;159m|[0m   00f41823          	sh	a5,16(s0)
    80001dac:	[38;5;169m|[0m  [38;5;125m\--[38;5;159m|[38;5;125m--[0m bf6d                	j	80001d66 <__smakebuf_r+0x16>
    80001dae:	[38;5;169m|[0m     [38;5;159m\[38;5;159m-[38;5;159m>[0m fffff797          	auipc	a5,0xfffff
    80001db2:	[38;5;169m|[0m         0c078793          	addi	a5,a5,192 # 80000e6e <_cleanup_r>
    80001db6:	[38;5;169m|[0m         e4bc                	sd	a5,72(s1)
    80001db8:	[38;5;169m|[0m         01045783          	lhu	a5,16(s0)
    80001dbc:	[38;5;169m|[0m         e008                	sd	a0,0(s0)
    80001dbe:	[38;5;169m|[0m         ec08                	sd	a0,24(s0)
    80001dc0:	[38;5;169m|[0m         0807e793          	ori	a5,a5,128
    80001dc4:	[38;5;169m|[0m         00f41823          	sh	a5,16(s0)
    80001dc8:	[38;5;169m|[0m         4792                	lw	a5,4(sp)
    80001dca:	[38;5;169m|[0m         03342023          	sw	s3,32(s0)
    80001dce:	[38;5;169m|[0m     [38;5;149m/[38;5;149m-[38;5;149m-[0m cf91                	beqz	a5,80001dea <__smakebuf_r+0x9a>
    80001dd0:	[38;5;169m|[0m     [38;5;149m|[0m   01241583          	lh	a1,18(s0)
    80001dd4:	[38;5;169m|[0m     [38;5;149m|[0m   8526                	mv	a0,s1
    80001dd6:	[38;5;169m|[0m     [38;5;149m|[0m   6aa000ef          	jal	ra,80002480 <_isatty_r>
    80001dda:	[38;5;169m|[0m     [38;5;149m+[38;5;149m-[38;5;149m-[0m c901                	beqz	a0,80001dea <__smakebuf_r+0x9a>
    80001ddc:	[38;5;169m|[0m     [38;5;149m|[0m   01045783          	lhu	a5,16(s0)
    80001de0:	[38;5;169m|[0m     [38;5;149m|[0m   9bf1                	andi	a5,a5,-4
    80001de2:	[38;5;169m|[0m     [38;5;149m|[0m   0017e793          	ori	a5,a5,1
    80001de6:	[38;5;169m|[0m     [38;5;149m|[0m   00f41823          	sh	a5,16(s0)
    80001dea:	[38;5;169m|[0m     [38;5;149m\[38;5;149m-[38;5;149m>[0m 01045783          	lhu	a5,16(s0)
    80001dee:	[38;5;169m|[0m         0127e533          	or	a0,a5,s2
    80001df2:	[38;5;169m|[0m         00a41823          	sh	a0,16(s0)
    80001df6:	[38;5;169m\[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[0m bfb5                	j	80001d72 <__smakebuf_r+0x22>

0000000080001df8 <memchr>:
    80001df8:	          0ff5f593          	zext.b	a1,a1
    80001dfc:	          962a                	add	a2,a2,a0
    80001dfe:	[38;5;196m/--[38;5;135m/----[38;5;196mX[0m 00c51463          	bne	a0,a2,80001e06 <memchr+0xe>
    80001e02:	[38;5;196m|[0m  [38;5;135m|[0m      4501                	li	a0,0
    80001e04:	[38;5;196m|[0m  [38;5;135m|[0m  [38;5;137m/[38;5;137m-[38;5;137m>[0m 8082                	ret
    80001e06:	[38;5;196m|[0m  [38;5;135m\--[38;5;137m|[38;5;135m->[0m 00054783          	lbu	a5,0(a0)
    80001e0a:	[38;5;196m|[0m     [38;5;137m\[38;5;137m-[38;5;137m-[0m feb78de3          	beq	a5,a1,80001e04 <memchr+0xc>
    80001e0e:	[38;5;196m|[0m         0505                	addi	a0,a0,1
    80001e10:	[38;5;196m\--------[0m b7fd                	j	80001dfe <memchr+0x6>

0000000080001e12 <memcpy>:
    80001e12:	       832a                	mv	t1,a0
    80001e14:	[38;5;204m/[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[0m ca09                	beqz	a2,80001e26 <memcpy+0x14>
    80001e16:	[38;5;204m|[0m  [38;5;141m/[38;5;141m-[38;5;141m>[0m 00058383          	lb	t2,0(a1)
    80001e1a:	[38;5;204m|[0m  [38;5;141m|[0m   00730023          	sb	t2,0(t1)
    80001e1e:	[38;5;204m|[0m  [38;5;141m|[0m   167d                	addi	a2,a2,-1
    80001e20:	[38;5;204m|[0m  [38;5;141m|[0m   0305                	addi	t1,t1,1
    80001e22:	[38;5;204m|[0m  [38;5;141m|[0m   0585                	addi	a1,a1,1
    80001e24:	[38;5;204m|[0m  [38;5;141m\[38;5;141m-[38;5;141m-[0m fa6d                	bnez	a2,80001e16 <memcpy+0x4>
    80001e26:	[38;5;204m\[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m-[38;5;204m>[0m 8082                	ret

0000000080001e28 <memmove>:
    80001e28:	[38;5;217m/-----[0m c215                	beqz	a2,80001e4c <memmove+0x24>
    80001e2a:	[38;5;217m|[0m      832a                	mv	t1,a0
    80001e2c:	[38;5;217m|[0m      4685                	li	a3,1
    80001e2e:	[38;5;217m|[0m  [38;5;199m/--[0m 00b56763          	bltu	a0,a1,80001e3c <memmove+0x14>
    80001e32:	[38;5;217m|[0m  [38;5;199m|[0m   56fd                	li	a3,-1
    80001e34:	[38;5;217m|[0m  [38;5;199m|[0m   fff60713          	addi	a4,a2,-1
    80001e38:	[38;5;217m|[0m  [38;5;199m|[0m   933a                	add	t1,t1,a4
    80001e3a:	[38;5;217m|[0m  [38;5;199m|[0m   95ba                	add	a1,a1,a4
    80001e3c:	[38;5;217m|[0m  [38;5;199m>->[0m 00058383          	lb	t2,0(a1)
    80001e40:	[38;5;217m|[0m  [38;5;199m|[0m   00730023          	sb	t2,0(t1)
    80001e44:	[38;5;217m|[0m  [38;5;199m|[0m   167d                	addi	a2,a2,-1
    80001e46:	[38;5;217m|[0m  [38;5;199m|[0m   9336                	add	t1,t1,a3
    80001e48:	[38;5;217m|[0m  [38;5;199m|[0m   95b6                	add	a1,a1,a3
    80001e4a:	[38;5;217m|[0m  [38;5;199m\--[0m fa6d                	bnez	a2,80001e3c <memmove+0x14>
    80001e4c:	[38;5;217m\---->[0m 8082                	ret

0000000080001e4e <__malloc_lock>:
    80001e4e:	8082                	ret

0000000080001e50 <__malloc_unlock>:
    80001e50:	8082                	ret

0000000080001e52 <_free_r>:
    80001e52:	[38;5;195m/--------------[0m cdd9                	beqz	a1,80001ef0 <_free_r+0x9e>
    80001e54:	[38;5;195m|[0m               ff85b783          	ld	a5,-8(a1)
    80001e58:	[38;5;195m|[0m               1101                	addi	sp,sp,-32
    80001e5a:	[38;5;195m|[0m               e822                	sd	s0,16(sp)
    80001e5c:	[38;5;195m|[0m               ec06                	sd	ra,24(sp)
    80001e5e:	[38;5;195m|[0m               ff858413          	addi	s0,a1,-8
    80001e62:	[38;5;195m|[0m           [38;5;227m/--[0m 0007d363          	bgez	a5,80001e68 <_free_r+0x16>
    80001e66:	[38;5;195m|[0m           [38;5;227m|[0m   943e                	add	s0,s0,a5
    80001e68:	[38;5;195m|[0m           [38;5;227m\->[0m e42a                	sd	a0,8(sp)
    80001e6a:	[38;5;195m|[0m               fe5ff0ef          	jal	ra,80001e4e <__malloc_lock>
    80001e6e:	[38;5;195m|[0m               88818713          	addi	a4,gp,-1912 # 80002f88 <__malloc_free_list>
    80001e72:	[38;5;195m|[0m               631c                	ld	a5,0(a4)
    80001e74:	[38;5;195m|[0m               6522                	ld	a0,8(sp)
    80001e76:	[38;5;195m|[0m           [38;5;193m/[38;5;193m-[38;5;193m-[0m eb81                	bnez	a5,80001e86 <_free_r+0x34>
    80001e78:	[38;5;195m|[0m           [38;5;193m|[0m   00043423          	sd	zero,8(s0)
    80001e7c:	[38;5;195m|[0m     [38;5;183m/-----[38;5;193m|[38;5;183m->[0m e300                	sd	s0,0(a4)
    80001e7e:	[38;5;195m|[0m  [38;5;159m/[38;5;159m-[38;5;159m-[38;5;183m|[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;193m|[38;5;159m-[38;5;159m>[0m 6442                	ld	s0,16(sp)
    80001e80:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m     [38;5;193m|[0m   60e2                	ld	ra,24(sp)
    80001e82:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m     [38;5;193m|[0m   6105                	addi	sp,sp,32
    80001e84:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m     [38;5;193m|[0m   b7f1                	j	80001e50 <__malloc_unlock>
    80001e86:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m/[38;5;130m-[38;5;130m-[38;5;193m\[38;5;193m-[38;5;130mX[0m 00f47d63          	bgeu	s0,a5,80001ea0 <_free_r+0x4e>
    80001e8a:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m      6010                	ld	a2,0(s0)
    80001e8c:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m      00c406b3          	add	a3,s0,a2
    80001e90:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m/[38;5;159m-[38;5;159m-[0m 00d79663          	bne	a5,a3,80001e9c <_free_r+0x4a>
    80001e94:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m|[0m   6394                	ld	a3,0(a5)
    80001e96:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m|[0m   679c                	ld	a5,8(a5)
    80001e98:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m|[0m   96b2                	add	a3,a3,a2
    80001e9a:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m|[0m   e014                	sd	a3,0(s0)
    80001e9c:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m|[0m  [38;5;130m|[0m  [38;5;159m\[38;5;159m-[38;5;159m>[0m e41c                	sd	a5,8(s0)
    80001e9e:	[38;5;195m|[0m  [38;5;159m|[0m  [38;5;183m\--[38;5;130m|[38;5;183m-----[0m bff9                	j	80001e7c <_free_r+0x2a>
    80001ea0:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;130m>[38;5;130m-[38;5;130m-[38;5;130m-[38;5;130m-[38;5;130m>[0m 873e                	mv	a4,a5
    80001ea2:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;130m|[0m      679c                	ld	a5,8(a5)
    80001ea4:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;130m|[0m  [38;5;128m/--[0m c399                	beqz	a5,80001eaa <_free_r+0x58>
    80001ea6:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;130m\[38;5;130m-[38;5;130m-[38;5;128m|[38;5;130m-[38;5;130m-[0m fef47de3          	bgeu	s0,a5,80001ea0 <_free_r+0x4e>
    80001eaa:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;128m\->[0m 6314                	ld	a3,0(a4)
    80001eac:	[38;5;195m|[0m  [38;5;159m|[0m            00d70633          	add	a2,a4,a3
    80001eb0:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m/[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[38;5;221m-[0m 00861f63          	bne	a2,s0,80001ece <_free_r+0x7c>
    80001eb4:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      6010                	ld	a2,0(s0)
    80001eb6:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      96b2                	add	a3,a3,a2
    80001eb8:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      e314                	sd	a3,0(a4)
    80001eba:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      00d70633          	add	a2,a4,a3
    80001ebe:	[38;5;195m|[0m  [38;5;159m+[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;221m|[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[0m fcc790e3          	bne	a5,a2,80001e7e <_free_r+0x2c>
    80001ec2:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      6390                	ld	a2,0(a5)
    80001ec4:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      679c                	ld	a5,8(a5)
    80001ec6:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      96b2                	add	a3,a3,a2
    80001ec8:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      e314                	sd	a3,0(a4)
    80001eca:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m|[0m      e71c                	sd	a5,8(a4)
    80001ecc:	[38;5;195m|[0m  [38;5;159m+[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;221m|[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[0m bf4d                	j	80001e7e <_free_r+0x2c>
    80001ece:	[38;5;195m|[0m  [38;5;159m|[0m     [38;5;221m\[38;5;221m-[38;5;221m-[38;5;156m/-[38;5;221mX[0m 00c47563          	bgeu	s0,a2,80001ed8 <_free_r+0x86>
    80001ed2:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;156m|[0m   47b1                	li	a5,12
    80001ed4:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;156m|[0m   c11c                	sw	a5,0(a0)
    80001ed6:	[38;5;195m|[0m  [38;5;159m+[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;156m|[38;5;159m-[38;5;159m-[0m b765                	j	80001e7e <_free_r+0x2c>
    80001ed8:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;156m\->[0m 6010                	ld	a2,0(s0)
    80001eda:	[38;5;195m|[0m  [38;5;159m|[0m            00c406b3          	add	a3,s0,a2
    80001ede:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m/--[0m 00d79663          	bne	a5,a3,80001eea <_free_r+0x98>
    80001ee2:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m|[0m   6394                	ld	a3,0(a5)
    80001ee4:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m|[0m   679c                	ld	a5,8(a5)
    80001ee6:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m|[0m   96b2                	add	a3,a3,a2
    80001ee8:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m|[0m   e014                	sd	a3,0(s0)
    80001eea:	[38;5;195m|[0m  [38;5;159m|[0m        [38;5;152m\->[0m e41c                	sd	a5,8(s0)
    80001eec:	[38;5;195m|[0m  [38;5;159m|[0m            e700                	sd	s0,8(a4)
    80001eee:	[38;5;195m|[0m  [38;5;159m\[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[38;5;159m-[0m bf41                	j	80001e7e <_free_r+0x2c>
    80001ef0:	[38;5;195m\------------->[0m 8082                	ret

0000000080001ef2 <_realloc_r>:
    80001ef2:	             7179                	addi	sp,sp,-48
    80001ef4:	             f022                	sd	s0,32(sp)
    80001ef6:	             f406                	sd	ra,40(sp)
    80001ef8:	             ec26                	sd	s1,24(sp)
    80001efa:	             e84a                	sd	s2,16(sp)
    80001efc:	             e44e                	sd	s3,8(sp)
    80001efe:	             e052                	sd	s4,0(sp)
    80001f00:	             8432                	mv	s0,a2
    80001f02:	         [38;5;127m/[38;5;127m-[38;5;127m-[0m e999                	bnez	a1,80001f18 <_realloc_r+0x26>
    80001f04:	         [38;5;127m|[0m   7402                	ld	s0,32(sp)
    80001f06:	         [38;5;127m|[0m   70a2                	ld	ra,40(sp)
    80001f08:	         [38;5;127m|[0m   64e2                	ld	s1,24(sp)
    80001f0a:	         [38;5;127m|[0m   6942                	ld	s2,16(sp)
    80001f0c:	         [38;5;127m|[0m   69a2                	ld	s3,8(sp)
    80001f0e:	         [38;5;127m|[0m   6a02                	ld	s4,0(sp)
    80001f10:	         [38;5;127m|[0m   85b2                	mv	a1,a2
    80001f12:	         [38;5;127m|[0m   6145                	addi	sp,sp,48
    80001f14:	         [38;5;127m|[0m   9ceff06f          	j	800010e2 <_malloc_r>
    80001f18:	      [38;5;133m/--[38;5;127m\[38;5;127m-[38;5;133mX[0m ee09                	bnez	a2,80001f32 <_realloc_r+0x40>
    80001f1a:	      [38;5;133m|[0m      f39ff0ef          	jal	ra,80001e52 <_free_r>
    80001f1e:	   [38;5;160m/[38;5;160m-[38;5;160m-[38;5;133m|[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m>[0m 4481                	li	s1,0
    80001f20:	[38;5;179m/--[38;5;160m|[38;5;179m--[38;5;133m|[38;5;179m---->[0m 70a2                	ld	ra,40(sp)
    80001f22:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      7402                	ld	s0,32(sp)
    80001f24:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      6942                	ld	s2,16(sp)
    80001f26:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      69a2                	ld	s3,8(sp)
    80001f28:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      6a02                	ld	s4,0(sp)
    80001f2a:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      8526                	mv	a0,s1
    80001f2c:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      64e2                	ld	s1,24(sp)
    80001f2e:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      6145                	addi	sp,sp,48
    80001f30:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m|[0m      8082                	ret
    80001f32:	[38;5;179m|[0m  [38;5;160m|[0m  [38;5;133m\---->[0m 8a2a                	mv	s4,a0
    80001f34:	[38;5;179m|[0m  [38;5;160m|[0m         84ae                	mv	s1,a1
    80001f36:	[38;5;179m|[0m  [38;5;160m|[0m         572000ef          	jal	ra,800024a8 <_malloc_usable_size_r>
    80001f3a:	[38;5;179m|[0m  [38;5;160m|[0m         892a                	mv	s2,a0
    80001f3c:	[38;5;179m|[0m  [38;5;160m|[0m     [38;5;145m/[38;5;145m-[38;5;145m-[0m 00856663          	bltu	a0,s0,80001f48 <_realloc_r+0x56>
    80001f40:	[38;5;179m|[0m  [38;5;160m|[0m     [38;5;145m|[0m   00155793          	srli	a5,a0,0x1
    80001f44:	[38;5;179m+--[38;5;160m|[38;5;179m-----[38;5;145m|[38;5;179m--[0m fc87eee3          	bltu	a5,s0,80001f20 <_realloc_r+0x2e>
    80001f48:	[38;5;179m|[0m  [38;5;160m|[0m     [38;5;145m\[38;5;145m-[38;5;145m>[0m 85a2                	mv	a1,s0
    80001f4a:	[38;5;179m|[0m  [38;5;160m|[0m         8552                	mv	a0,s4
    80001f4c:	[38;5;179m|[0m  [38;5;160m|[0m         996ff0ef          	jal	ra,800010e2 <_malloc_r>
    80001f50:	[38;5;179m|[0m  [38;5;160m|[0m         89aa                	mv	s3,a0
    80001f52:	[38;5;179m|[0m  [38;5;160m\[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[38;5;160m-[0m d571                	beqz	a0,80001f1e <_realloc_r+0x2c>
    80001f54:	[38;5;179m|[0m            8622                	mv	a2,s0
    80001f56:	[38;5;179m|[0m        [38;5;171m/--[0m 00897363          	bgeu	s2,s0,80001f5c <_realloc_r+0x6a>
    80001f5a:	[38;5;179m|[0m        [38;5;171m|[0m   864a                	mv	a2,s2
    80001f5c:	[38;5;179m|[0m        [38;5;171m\->[0m 85a6                	mv	a1,s1
    80001f5e:	[38;5;179m|[0m            854e                	mv	a0,s3
    80001f60:	[38;5;179m|[0m            eb3ff0ef          	jal	ra,80001e12 <memcpy>
    80001f64:	[38;5;179m|[0m            85a6                	mv	a1,s1
    80001f66:	[38;5;179m|[0m            8552                	mv	a0,s4
    80001f68:	[38;5;179m|[0m            eebff0ef          	jal	ra,80001e52 <_free_r>
    80001f6c:	[38;5;179m|[0m            84ce                	mv	s1,s3
    80001f6e:	[38;5;179m\-----------[0m bf4d                	j	80001f20 <_realloc_r+0x2e>

0000000080001f70 <_printf_common>:
    80001f70:	                         715d                	addi	sp,sp,-80
    80001f72:	                         f052                	sd	s4,32(sp)
    80001f74:	                         ec56                	sd	s5,24(sp)
    80001f76:	                         8a36                	mv	s4,a3
    80001f78:	                         8aba                	mv	s5,a4
    80001f7a:	                         4994                	lw	a3,16(a1)
    80001f7c:	                         4598                	lw	a4,8(a1)
    80001f7e:	                         e0a2                	sd	s0,64(sp)
    80001f80:	                         f84a                	sd	s2,48(sp)
    80001f82:	                         f44e                	sd	s3,40(sp)
    80001f84:	                         e486                	sd	ra,72(sp)
    80001f86:	                         fc26                	sd	s1,56(sp)
    80001f88:	                         e85a                	sd	s6,16(sp)
    80001f8a:	                         e45e                	sd	s7,8(sp)
    80001f8c:	                         89aa                	mv	s3,a0
    80001f8e:	                         842e                	mv	s0,a1
    80001f90:	                         8932                	mv	s2,a2
    80001f92:	                         87ba                	mv	a5,a4
    80001f94:	                     [38;5;165m/--[0m 00e6c363          	blt	a3,a4,80001f9a <_printf_common+0x2a>
    80001f98:	                     [38;5;165m|[0m   87b6                	mv	a5,a3
    80001f9a:	                     [38;5;165m\->[0m 00f92023          	sw	a5,0(s2)
    80001f9e:	                         04344703          	lbu	a4,67(s0)
    80001fa2:	                     [38;5;220m/--[0m c701                	beqz	a4,80001faa <_printf_common+0x3a>
    80001fa4:	                     [38;5;220m|[0m   2785                	addiw	a5,a5,1
    80001fa6:	                     [38;5;220m|[0m   00f92023          	sw	a5,0(s2)
    80001faa:	                     [38;5;220m\->[0m 401c                	lw	a5,0(s0)
    80001fac:	                         0207f793          	andi	a5,a5,32
    80001fb0:	                     [38;5;171m/--[0m c791                	beqz	a5,80001fbc <_printf_common+0x4c>
    80001fb2:	                     [38;5;171m|[0m   00092783          	lw	a5,0(s2)
    80001fb6:	                     [38;5;171m|[0m   2789                	addiw	a5,a5,2
    80001fb8:	                     [38;5;171m|[0m   00f92023          	sw	a5,0(s2)
    80001fbc:	                     [38;5;171m\->[0m 4004                	lw	s1,0(s0)
    80001fbe:	                         8899                	andi	s1,s1,6
    80001fc0:	                     [38;5;128m/[38;5;128m-[38;5;128m-[0m e891                	bnez	s1,80001fd4 <_printf_common+0x64>
    80001fc2:	                     [38;5;128m|[0m   01940b13          	addi	s6,s0,25
    80001fc6:	                     [38;5;128m|[0m   5bfd                	li	s7,-1
    80001fc8:	      [38;5;228m/[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;128m|[38;5;228m-[38;5;228m>[0m 445c                	lw	a5,12(s0)
    80001fca:	      [38;5;228m|[0m              [38;5;128m|[0m   00092703          	lw	a4,0(s2)
    80001fce:	      [38;5;228m|[0m              [38;5;128m|[0m   9f99                	subw	a5,a5,a4
    80001fd0:	      [38;5;228m|[0m           [38;5;135m/--[38;5;128m|[38;5;135m--[0m 06f4c063          	blt	s1,a5,80002030 <_printf_common+0xc0>
    80001fd4:	      [38;5;228m|[0m           [38;5;135m|[0m  [38;5;128m\[38;5;128m-[38;5;128m>[0m 04344783          	lbu	a5,67(s0)
    80001fd8:	      [38;5;228m|[0m           [38;5;135m|[0m      00f03633          	snez	a2,a5
    80001fdc:	      [38;5;228m|[0m           [38;5;135m|[0m      00f036b3          	snez	a3,a5
    80001fe0:	      [38;5;228m|[0m           [38;5;135m|[0m      401c                	lw	a5,0(s0)
    80001fe2:	      [38;5;228m|[0m           [38;5;135m|[0m      0207f793          	andi	a5,a5,32
    80001fe6:	      [38;5;228m|[0m  [38;5;205m/--------[38;5;135m|[38;5;205m-----[0m ebb5                	bnez	a5,8000205a <_printf_common+0xea>
    80001fe8:	   [38;5;127m/[38;5;127m-[38;5;127m-[38;5;228m|[38;5;127m-[38;5;127m-[38;5;205m|[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;135m|[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m>[0m 04340613          	addi	a2,s0,67
    80001fec:	   [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      85d2                	mv	a1,s4
    80001fee:	   [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      854e                	mv	a0,s3
    80001ff0:	   [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      9a82                	jalr	s5
    80001ff2:	   [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      57fd                	li	a5,-1
    80001ff4:	[38;5;195m/--[38;5;127m|[38;5;195m--[38;5;228m|[38;5;195m--[38;5;205m|[38;5;195m--------[38;5;135m|[38;5;195m-----[0m 04f50563          	beq	a0,a5,8000203e <_printf_common+0xce>
    80001ff8:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      401c                	lw	a5,0(s0)
    80001ffa:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      4711                	li	a4,4
    80001ffc:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      4481                	li	s1,0
    80001ffe:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      8b99                	andi	a5,a5,6
    80002000:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m/--[0m 00e79b63          	bne	a5,a4,80002016 <_printf_common+0xa6>
    80002004:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m|[0m   4444                	lw	s1,12(s0)
    80002006:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m|[0m   00092783          	lw	a5,0(s2)
    8000200a:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m|[0m   40f487bb          	subw	a5,s1,a5
    8000200e:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m|[0m   84be                	mv	s1,a5
    80002010:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m+--[0m 0007d363          	bgez	a5,80002016 <_printf_common+0xa6>
    80002014:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m|[0m   4481                	li	s1,0
    80002016:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;130m\->[0m 441c                	lw	a5,8(s0)
    80002018:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      4818                	lw	a4,16(s0)
    8000201a:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;137m/[38;5;137m-[38;5;137m-[0m 00f75463          	bge	a4,a5,80002022 <_printf_common+0xb2>
    8000201e:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;137m|[0m   9f99                	subw	a5,a5,a4
    80002020:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;137m|[0m   9cbd                	addw	s1,s1,a5
    80002022:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m  [38;5;137m\[38;5;137m-[38;5;137m>[0m 4901                	li	s2,0
    80002024:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      0469                	addi	s0,s0,26
    80002026:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m        [38;5;135m|[0m      5b7d                	li	s6,-1
    80002028:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m/[38;5;211m-[38;5;211m-[38;5;169m/[38;5;169m-[38;5;169m-[38;5;135m|[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;211mX[0m 05249a63          	bne	s1,s2,8000207c <_printf_common+0x10c>
    8000202c:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;135m|[0m      4501                	li	a0,0
    8000202e:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;135m|[0m  [38;5;144m/[38;5;144m-[38;5;144m-[0m a809                	j	80002040 <_printf_common+0xd0>
    80002030:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;135m\--[38;5;144m|[38;5;135m->[0m 4685                	li	a3,1
    80002032:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m     [38;5;144m|[0m   865a                	mv	a2,s6
    80002034:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m     [38;5;144m|[0m   85d2                	mv	a1,s4
    80002036:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m     [38;5;144m|[0m   854e                	mv	a0,s3
    80002038:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m     [38;5;144m|[0m   9a82                	jalr	s5
    8000203a:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m/--[38;5;144m|[38;5;176m--[0m 01751e63          	bne	a0,s7,80002056 <_printf_common+0xe6>
    8000203e:	[38;5;195m>--[38;5;127m|[38;5;195m--[38;5;228m|[38;5;195m--[38;5;205m|[38;5;195m--[38;5;211m|[38;5;195m--[38;5;169m|[38;5;195m--[38;5;176m|[38;5;195m--[38;5;144m|[38;5;195m->[0m 557d                	li	a0,-1
    80002040:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m  [38;5;144m\[38;5;144m-[38;5;144m>[0m 60a6                	ld	ra,72(sp)
    80002042:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      6406                	ld	s0,64(sp)
    80002044:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      74e2                	ld	s1,56(sp)
    80002046:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      7942                	ld	s2,48(sp)
    80002048:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      79a2                	ld	s3,40(sp)
    8000204a:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      7a02                	ld	s4,32(sp)
    8000204c:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      6ae2                	ld	s5,24(sp)
    8000204e:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      6b42                	ld	s6,16(sp)
    80002050:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      6ba2                	ld	s7,8(sp)
    80002052:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      6161                	addi	sp,sp,80
    80002054:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m|[0m      8082                	ret
    80002056:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m|[0m  [38;5;205m|[0m  [38;5;211m|[0m  [38;5;169m|[0m  [38;5;176m\---->[0m 2485                	addiw	s1,s1,1
    80002058:	[38;5;195m|[0m  [38;5;127m|[0m  [38;5;228m\[38;5;228m-[38;5;228m-[38;5;205m|[38;5;228m-[38;5;228m-[38;5;211m|[38;5;228m-[38;5;228m-[38;5;169m|[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[0m bf85                	j	80001fc8 <_printf_common+0x58>
    8000205a:	[38;5;195m|[0m  [38;5;127m|[0m     [38;5;205m\--[38;5;211m|[38;5;205m--[38;5;169m|[38;5;205m------->[0m 00d407b3          	add	a5,s0,a3
    8000205e:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         03000693          	li	a3,48
    80002062:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         04d781a3          	sb	a3,67(a5)
    80002066:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         0016071b          	addiw	a4,a2,1
    8000206a:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         0026069b          	addiw	a3,a2,2
    8000206e:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         04544603          	lbu	a2,69(s0)
    80002072:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         00e407b3          	add	a5,s0,a4
    80002076:	[38;5;195m|[0m  [38;5;127m|[0m        [38;5;211m|[0m  [38;5;169m|[0m         04c781a3          	sb	a2,67(a5)
    8000207a:	[38;5;195m|[0m  [38;5;127m\[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;211m|[38;5;127m-[38;5;127m-[38;5;169m|[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[38;5;127m-[0m b7bd                	j	80001fe8 <_printf_common+0x78>
    8000207c:	[38;5;195m|[0m           [38;5;211m|[0m  [38;5;169m\[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m-[38;5;169m>[0m 4685                	li	a3,1
    8000207e:	[38;5;195m|[0m           [38;5;211m|[0m            8622                	mv	a2,s0
    80002080:	[38;5;195m|[0m           [38;5;211m|[0m            85d2                	mv	a1,s4
    80002082:	[38;5;195m|[0m           [38;5;211m|[0m            854e                	mv	a0,s3
    80002084:	[38;5;195m|[0m           [38;5;211m|[0m            9a82                	jalr	s5
    80002086:	[38;5;195m\-----------[38;5;211m|[38;5;195m-----------[0m fb650ce3          	beq	a0,s6,8000203e <_printf_common+0xce>
    8000208a:	            [38;5;211m|[0m            2905                	addiw	s2,s2,1
    8000208c:	            [38;5;211m\[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[38;5;211m-[0m bf71                	j	80002028 <_printf_common+0xb8>

000000008000208e <_printf_i>:
    8000208e:	                                                 715d                	addi	sp,sp,-80
    80002090:	                                                 e0a2                	sd	s0,64(sp)
    80002092:	                                                 f84a                	sd	s2,48(sp)
    80002094:	                                                 f44e                	sd	s3,40(sp)
    80002096:	                                                 f052                	sd	s4,32(sp)
    80002098:	                                                 e486                	sd	ra,72(sp)
    8000209a:	                                                 fc26                	sd	s1,56(sp)
    8000209c:	                                                 ec56                	sd	s5,24(sp)
    8000209e:	                                                 e85a                	sd	s6,16(sp)
    800020a0:	                                                 0185c803          	lbu	a6,24(a1)
    800020a4:	                                                 07800793          	li	a5,120
    800020a8:	                                                 892a                	mv	s2,a0
    800020aa:	                                                 842e                	mv	s0,a1
    800020ac:	                                                 89b2                	mv	s3,a2
    800020ae:	                                                 8a36                	mv	s4,a3
    800020b0:	                                       [38;5;205m/[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[0m 0307e263          	bltu	a5,a6,800020d4 <_printf_i+0x46>
    800020b4:	                                       [38;5;205m|[0m         06200793          	li	a5,98
    800020b8:	                                       [38;5;205m|[0m         04358693          	addi	a3,a1,67
    800020bc:	                                       [38;5;205m|[0m     [38;5;151m/[38;5;151m-[38;5;151m-[0m 0307e163          	bltu	a5,a6,800020de <_printf_i+0x50>
    800020c0:	[38;5;160m/--------------------------------------[38;5;205m|[38;5;160m-----[38;5;151m|[38;5;160m--[0m 1e080163          	beqz	a6,800022a2 <_printf_i+0x214>
    800020c4:	[38;5;160m|[0m                                      [38;5;205m|[0m     [38;5;151m|[0m   05800793          	li	a5,88
    800020c8:	[38;5;160m|[0m                                      [38;5;205m|[0m     [38;5;151m|[0m   00001617          	auipc	a2,0x1
    800020cc:	[38;5;160m|[0m                                      [38;5;205m|[0m     [38;5;151m|[0m   ca860613          	addi	a2,a2,-856 # 80002d70 <__sf_fake_stdin+0x50>
    800020d0:	[38;5;160m|[0m     [38;5;228m/[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;205m|[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;151m|[38;5;228m-[38;5;228m-[0m 16f80063          	beq	a6,a5,80002230 <_printf_i+0x1a2>
    800020d4:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m>[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;151m|[38;5;205m-[38;5;205m>[0m 04240493          	addi	s1,s0,66
    800020d8:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m|[0m     [38;5;151m|[0m   05040123          	sb	a6,66(s0)
    800020dc:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m|[0m  [38;5;146m/[38;5;146m-[38;5;146m-[38;5;151m|[38;5;146m-[38;5;146m-[0m a815                	j	80002110 <_printf_i+0x82>
    800020de:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m|[0m  [38;5;146m|[0m  [38;5;151m\[38;5;151m-[38;5;151m>[0m f9d8079b          	addiw	a5,a6,-99
    800020e2:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m|[0m  [38;5;146m|[0m      0ff7f793          	zext.b	a5,a5
    800020e6:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m|[0m  [38;5;146m|[0m      4655                	li	a2,21
    800020e8:	[38;5;160m|[0m     [38;5;228m|[0m                                [38;5;205m\[38;5;205m-[38;5;205m-[38;5;146m|[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[38;5;205m-[0m fef666e3          	bltu	a2,a5,800020d4 <_printf_i+0x46>
    800020ec:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      00001617          	auipc	a2,0x1
    800020f0:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      cb060613          	addi	a2,a2,-848 # 80002d9c <__sf_fake_stdin+0x7c>
    800020f4:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      078a                	slli	a5,a5,0x2
    800020f6:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      97b2                	add	a5,a5,a2
    800020f8:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      439c                	lw	a5,0(a5)
    800020fa:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      97b2                	add	a5,a5,a2
    800020fc:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      8782                	jr	a5
    800020fe:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      631c                	ld	a5,0(a4)
    80002100:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      04258493          	addi	s1,a1,66
    80002104:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      00878693          	addi	a3,a5,8
    80002108:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      439c                	lw	a5,0(a5)
    8000210a:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      e314                	sd	a3,0(a4)
    8000210c:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m|[0m      04f58123          	sb	a5,66(a1)
    80002110:	[38;5;160m|[0m     [38;5;228m|[0m                                   [38;5;146m\[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m>[0m 4785                	li	a5,1
    80002112:	[38;5;160m|[0m  [38;5;215m/[38;5;215m-[38;5;215m-[38;5;228m|[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[0m a2e1                	j	800022da <_printf_i+0x24c>
    80002114:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                                          4190                	lw	a2,0(a1)
    80002116:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                                          631c                	ld	a5,0(a4)
    80002118:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                                          08067513          	andi	a0,a2,128
    8000211c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                                          00878593          	addi	a1,a5,8
    80002120:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                             [38;5;193m/-----------[0m c139                	beqz	a0,80002166 <_printf_i+0xd8>
    80002122:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                             [38;5;193m|[0m            639c                	ld	a5,0(a5)
    80002124:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                             [38;5;193m|[0m            e30c                	sd	a1,0(a4)
    80002126:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m                          [38;5;140m/--[38;5;193m|[38;5;140m---------->[0m 4058                	lw	a4,4(s0)
    80002128:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m/-----------------------[38;5;140m|[38;5;217m--[38;5;193m|[38;5;217m-----------[0m 1407db63          	bgez	a5,8000227e <_printf_i+0x1f0>
    8000212c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m            02d00593          	li	a1,45
    80002130:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m            04b401a3          	sb	a1,67(s0)
    80002134:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m            c418                	sw	a4,8(s0)
    80002136:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m     [38;5;152m/-----[0m 04075263          	bgez	a4,8000217a <_printf_i+0xec>
    8000213a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m/[38;5;192m-[38;5;192m-[38;5;152m|[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m>[0m 40f007b3          	neg	a5,a5
    8000213e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m      00001617          	auipc	a2,0x1
    80002142:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m      c3260613          	addi	a2,a2,-974 # 80002d70 <__sf_fake_stdin+0x50>
    80002146:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                       [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m      4829                	li	a6,10
    80002148:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m/[38;5;144m-[38;5;144m-[38;5;140m|[38;5;144m-[38;5;144m-[38;5;193m|[38;5;144m-[38;5;144m-[38;5;192m|[38;5;144m-[38;5;144m-[38;5;152m|[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m>[0m 84b6                	mv	s1,a3
    8000214a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m/[38;5;212m-[38;5;212m>[0m 0307f733          	remu	a4,a5,a6
    8000214e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   14fd                	addi	s1,s1,-1
    80002150:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   9732                	add	a4,a4,a2
    80002152:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   00074703          	lbu	a4,0(a4)
    80002156:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   00e48023          	sb	a4,0(s1)
    8000215a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   873e                	mv	a4,a5
    8000215c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m|[0m   0307d7b3          	divu	a5,a5,a6
    80002160:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;212m\[38;5;212m-[38;5;212m-[0m ff0775e3          	bgeu	a4,a6,8000214a <_printf_i+0xbc>
    80002164:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m|[0m  [38;5;192m|[0m  [38;5;152m|[0m  [38;5;183m/[38;5;183m-[38;5;183m-[0m a8a1                	j	800021bc <_printf_i+0x12e>
    80002166:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m  [38;5;193m\--[38;5;192m|[38;5;193m--[38;5;152m|[38;5;193m--[38;5;183m|[38;5;193m->[0m 439c                	lw	a5,0(a5)
    80002168:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m     [38;5;192m|[0m  [38;5;152m|[0m  [38;5;183m|[0m   04067513          	andi	a0,a2,64
    8000216c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m     [38;5;192m|[0m  [38;5;152m|[0m  [38;5;183m|[0m   e30c                	sd	a1,0(a4)
    8000216e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m+-----[38;5;192m|[38;5;140m--[38;5;152m|[38;5;140m--[38;5;183m|[38;5;140m--[0m dd45                	beqz	a0,80002126 <_printf_i+0x98>
    80002170:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m     [38;5;192m|[0m  [38;5;152m|[0m  [38;5;183m|[0m   0107979b          	slliw	a5,a5,0x10
    80002174:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m|[0m     [38;5;192m|[0m  [38;5;152m|[0m  [38;5;183m|[0m   4107d79b          	sraiw	a5,a5,0x10
    80002178:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m  [38;5;140m\-----[38;5;192m|[38;5;140m--[38;5;152m|[38;5;140m--[38;5;183m|[38;5;140m--[0m b77d                	j	80002126 <_printf_i+0x98>
    8000217a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;192m|[0m  [38;5;152m\--[38;5;183m|[38;5;152m->[0m 9a6d                	andi	a2,a2,-5
    8000217c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;192m|[0m     [38;5;183m|[0m   c010                	sw	a2,0(s0)
    8000217e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;192m\[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;192m-[38;5;183m|[38;5;192m-[38;5;192m-[0m bf75                	j	8000213a <_printf_i+0xac>
    80002180:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m              [38;5;183m|[0m   4190                	lw	a2,0(a1)
    80002182:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m              [38;5;183m|[0m   631c                	ld	a5,0(a4)
    80002184:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m              [38;5;183m|[0m   08067513          	andi	a0,a2,128
    80002188:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m              [38;5;183m|[0m   00878593          	addi	a1,a5,8
    8000218c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m           [38;5;133m/--[38;5;183m|[38;5;133m--[0m cd35                	beqz	a0,80002208 <_printf_i+0x17a>
    8000218e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m           [38;5;133m|[0m  [38;5;183m|[0m   639c                	ld	a5,0(a5)
    80002190:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m           [38;5;133m|[0m  [38;5;183m|[0m   e30c                	sd	a1,0(a4)
    80002192:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;229m/--[38;5;133m|[38;5;229m--[38;5;183m|[38;5;229m->[0m 06f00713          	li	a4,111
    80002196:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   00001617          	auipc	a2,0x1
    8000219a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m                    [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   bda60613          	addi	a2,a2,-1062 # 80002d70 <__sf_fake_stdin+0x50>
    8000219e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m              [38;5;201m/-----[38;5;144m|[38;5;201m--------[38;5;229m|[38;5;201m--[38;5;133m|[38;5;201m--[38;5;183m|[38;5;201m--[0m 0ce81e63          	bne	a6,a4,8000227a <_printf_i+0x1ec>
    800021a2:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m              [38;5;201m|[0m     [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   4821                	li	a6,8
    800021a4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m              [38;5;201m|[0m  [38;5;153m/[38;5;153m-[38;5;153m-[38;5;144m|[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;229m|[38;5;153m-[38;5;153m-[38;5;133m|[38;5;153m-[38;5;153m-[38;5;183m|[38;5;153m-[38;5;153m>[0m 040401a3          	sb	zero,67(s0)
    800021a8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m/[38;5;167m-[38;5;167m-[38;5;201m|[38;5;167m-[38;5;167m-[38;5;153m|[38;5;167m-[38;5;167m-[38;5;144m|[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;229m|[38;5;167m-[38;5;167m-[38;5;133m|[38;5;167m-[38;5;167m-[38;5;183m|[38;5;167m-[38;5;167m>[0m 4058                	lw	a4,4(s0)
    800021aa:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   c418                	sw	a4,8(s0)
    800021ac:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m+[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;229m|[38;5;144m-[38;5;144m-[38;5;133m|[38;5;144m-[38;5;144m-[38;5;183m|[38;5;144m-[38;5;144m-[0m f8074ee3          	bltz	a4,80002148 <_printf_i+0xba>
    800021b0:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   400c                	lw	a1,0(s0)
    800021b2:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   99ed                	andi	a1,a1,-5
    800021b4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   c00c                	sw	a1,0(s0)
    800021b6:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m+[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;229m|[38;5;144m-[38;5;144m-[38;5;133m|[38;5;144m-[38;5;144m-[38;5;183m|[38;5;144m-[38;5;144m-[0m fbc9                	bnez	a5,80002148 <_printf_i+0xba>
    800021b8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m|[0m        [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m|[0m   84b6                	mv	s1,a3
    800021ba:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;144m\[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;144m-[38;5;229m|[38;5;144m-[38;5;144m-[38;5;133m|[38;5;144m-[38;5;144m-[38;5;183m|[38;5;144m-[38;5;144m-[0m f759                	bnez	a4,80002148 <_printf_i+0xba>
    800021bc:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;183m\[38;5;183m-[38;5;183m>[0m 47a1                	li	a5,8
    800021be:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m/--[0m 00f81e63          	bne	a6,a5,800021da <_printf_i+0x14c>
    800021c2:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   401c                	lw	a5,0(s0)
    800021c4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   8b85                	andi	a5,a5,1
    800021c6:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m+--[0m cb91                	beqz	a5,800021da <_printf_i+0x14c>
    800021c8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   4058                	lw	a4,4(s0)
    800021ca:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   481c                	lw	a5,16(s0)
    800021cc:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m+--[0m 00e7c763          	blt	a5,a4,800021da <_printf_i+0x14c>
    800021d0:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   03000793          	li	a5,48
    800021d4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   fef48fa3          	sb	a5,-1(s1)
    800021d8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m|[0m   14fd                	addi	s1,s1,-1
    800021da:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m  [38;5;147m\->[0m 8e85                	sub	a3,a3,s1
    800021dc:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m           [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      c814                	sw	a3,16(s0)
    800021de:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m/[38;5;176m-[38;5;176m-[38;5;167m|[38;5;176m-[38;5;176m-[38;5;201m|[38;5;176m-[38;5;176m-[38;5;153m|[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;229m|[38;5;176m-[38;5;176m-[38;5;133m|[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m>[0m 8752                	mv	a4,s4
    800021e0:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      86ce                	mv	a3,s3
    800021e2:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      0070                	addi	a2,sp,12
    800021e4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      85a2                	mv	a1,s0
    800021e6:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      854a                	mv	a0,s2
    800021e8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      d89ff0ef          	jal	ra,80001f70 <_printf_common>
    800021ec:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m           [38;5;229m|[0m  [38;5;133m|[0m      5afd                	li	s5,-1
    800021ee:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m        [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m/[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;229m|[38;5;145m-[38;5;145m-[38;5;133m|[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[0m 0f551a63          	bne	a0,s5,800022e2 <_printf_i+0x254>
    800021f2:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m/-----[38;5;176m|[38;5;154m--[38;5;167m|[38;5;154m--[38;5;201m|[38;5;154m--[38;5;153m|[38;5;154m--[38;5;145m|[38;5;154m--------[38;5;229m|[38;5;154m--[38;5;133m|[38;5;154m---->[0m 557d                	li	a0,-1
    800021f4:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m/--[38;5;176m|[38;5;208m--[38;5;167m|[38;5;208m--[38;5;201m|[38;5;208m--[38;5;153m|[38;5;208m--[38;5;145m|[38;5;208m--------[38;5;229m|[38;5;208m--[38;5;133m|[38;5;208m---->[0m 60a6                	ld	ra,72(sp)
    800021f6:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      6406                	ld	s0,64(sp)
    800021f8:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      74e2                	ld	s1,56(sp)
    800021fa:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      7942                	ld	s2,48(sp)
    800021fc:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      79a2                	ld	s3,40(sp)
    800021fe:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      7a02                	ld	s4,32(sp)
    80002200:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      6ae2                	ld	s5,24(sp)
    80002202:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      6b42                	ld	s6,16(sp)
    80002204:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      6161                	addi	sp,sp,80
    80002206:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m|[0m      8082                	ret
    80002208:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m  [38;5;133m\---->[0m 04067613          	andi	a2,a2,64
    8000220c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m         e30c                	sd	a1,0(a4)
    8000220e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m     [38;5;137m/--[0m c601                	beqz	a2,80002216 <_printf_i+0x188>
    80002210:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m     [38;5;137m|[0m   0007d783          	lhu	a5,0(a5)
    80002214:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m+-----[38;5;137m|[38;5;229m--[0m bfbd                	j	80002192 <_printf_i+0x104>
    80002216:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m|[0m     [38;5;137m\->[0m 0007e783          	lwu	a5,0(a5)
    8000221a:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m        [38;5;229m\--------[0m bfa5                	j	80002192 <_printf_i+0x104>
    8000221c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  419c                	lw	a5,0(a1)
    8000221e:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  0a07e793          	ori	a5,a5,160
    80002222:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  c19c                	sw	a5,0(a1)
    80002224:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  07800813          	li	a6,120
    80002228:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  00001617          	auipc	a2,0x1
    8000222c:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m|[0m  [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  b6060613          	addi	a2,a2,-1184 # 80002d88 <__sf_fake_stdin+0x68>
    80002230:	[38;5;160m|[0m  [38;5;215m|[0m  [38;5;228m\[38;5;228m-[38;5;228m-[38;5;217m|[38;5;228m-[38;5;228m-[38;5;154m|[38;5;228m-[38;5;228m-[38;5;208m|[38;5;228m-[38;5;228m-[38;5;176m|[38;5;228m-[38;5;228m-[38;5;167m|[38;5;228m-[38;5;228m-[38;5;201m|[38;5;228m-[38;5;228m-[38;5;153m|[38;5;228m-[38;5;228m-[38;5;145m|[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m-[38;5;228m>[0m 050402a3          	sb	a6,69(s0)
    80002234:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  400c                	lw	a1,0(s0)
    80002236:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  631c                	ld	a5,0(a4)
    80002238:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  0805f813          	andi	a6,a1,128
    8000223c:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m                  00878513          	addi	a0,a5,8
    80002240:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m           [38;5;212m/[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[0m 00080d63          	beqz	a6,8000225a <_printf_i+0x1cc>
    80002244:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m           [38;5;212m|[0m      639c                	ld	a5,0(a5)
    80002246:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m           [38;5;212m|[0m      e308                	sd	a0,0(a4)
    80002248:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m/[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;212m|[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m>[0m 0015f713          	andi	a4,a1,1
    8000224c:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m        [38;5;212m|[0m  [38;5;202m/[38;5;202m-[38;5;202m-[0m c701                	beqz	a4,80002254 <_printf_i+0x1c6>
    8000224e:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m        [38;5;212m|[0m  [38;5;202m|[0m   0205e593          	ori	a1,a1,32
    80002252:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m        [38;5;212m|[0m  [38;5;202m|[0m   c00c                	sw	a1,0(s0)
    80002254:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m     [38;5;206m/[38;5;206m-[38;5;206m-[38;5;212m|[38;5;206m-[38;5;206m-[38;5;202m\[38;5;202m-[38;5;206mX[0m cf91                	beqz	a5,80002270 <_printf_i+0x1e2>
    80002256:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m/--[38;5;206m|[38;5;135m--[38;5;212m|[38;5;135m---->[0m 4841                	li	a6,16
    80002258:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m+[38;5;153m-[38;5;153m-[38;5;145m|[38;5;153m-[38;5;153m-[38;5;185m|[38;5;153m-[38;5;153m-[38;5;135m|[38;5;153m-[38;5;153m-[38;5;206m|[38;5;153m-[38;5;153m-[38;5;212m|[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[0m b7b1                	j	800021a4 <_printf_i+0x116>
    8000225a:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m|[0m  [38;5;206m|[0m  [38;5;212m\[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m>[0m 0405f813          	andi	a6,a1,64
    8000225e:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m|[0m  [38;5;206m|[0m         e308                	sd	a0,0(a4)
    80002260:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m|[0m  [38;5;206m|[0m     [38;5;196m/--[0m 00080563          	beqz	a6,8000226a <_printf_i+0x1dc>
    80002264:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m|[0m  [38;5;206m|[0m     [38;5;196m|[0m   0007d783          	lhu	a5,0(a5)
    80002268:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m+[38;5;185m-[38;5;185m-[38;5;135m|[38;5;185m-[38;5;185m-[38;5;206m|[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;196m|[38;5;185m-[38;5;185m-[0m b7c5                	j	80002248 <_printf_i+0x1ba>
    8000226a:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m|[0m  [38;5;135m|[0m  [38;5;206m|[0m     [38;5;196m\->[0m 0007e783          	lwu	a5,0(a5)
    8000226e:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m  [38;5;185m\[38;5;185m-[38;5;185m-[38;5;135m|[38;5;185m-[38;5;185m-[38;5;206m|[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[38;5;185m-[0m bfe9                	j	80002248 <_printf_i+0x1ba>
    80002270:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m     [38;5;135m|[0m  [38;5;206m\[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m-[38;5;206m>[0m 4018                	lw	a4,0(s0)
    80002272:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m     [38;5;135m|[0m            fdf77713          	andi	a4,a4,-33
    80002276:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m     [38;5;135m|[0m            c018                	sw	a4,0(s0)
    80002278:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m|[0m  [38;5;153m|[0m  [38;5;145m|[0m     [38;5;135m\-----------[0m bff9                	j	80002256 <_printf_i+0x1c8>
    8000227a:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m  [38;5;201m\--[38;5;153m|[38;5;201m--[38;5;145m|[38;5;201m---------------->[0m 4829                	li	a6,10
    8000227c:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m|[0m  [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m     [38;5;153m\[38;5;153m-[38;5;153m-[38;5;145m|[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[38;5;153m-[0m b725                	j	800021a4 <_printf_i+0x116>
    8000227e:	[38;5;160m|[0m  [38;5;215m|[0m     [38;5;217m\--[38;5;154m|[38;5;217m--[38;5;208m|[38;5;217m--[38;5;176m|[38;5;217m--[38;5;167m|[38;5;217m--------[38;5;145m|[38;5;217m---------------->[0m 00001617          	auipc	a2,0x1
    80002282:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m        [38;5;145m|[0m                  af260613          	addi	a2,a2,-1294 # 80002d70 <__sf_fake_stdin+0x50>
    80002286:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m|[0m        [38;5;145m|[0m                  4829                	li	a6,10
    80002288:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m  [38;5;167m\[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;145m|[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[38;5;167m-[0m b705                	j	800021a8 <_printf_i+0x11a>
    8000228a:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  4190                	lw	a2,0(a1)
    8000228c:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  631c                	ld	a5,0(a4)
    8000228e:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  49cc                	lw	a1,20(a1)
    80002290:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  08067813          	andi	a6,a2,128
    80002294:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  00878513          	addi	a0,a5,8
    80002298:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m/--[0m 00080963          	beqz	a6,800022aa <_printf_i+0x21c>
    8000229c:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m|[0m   e308                	sd	a0,0(a4)
    8000229e:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m|[0m   639c                	ld	a5,0(a5)
    800022a0:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m|[0m   e38c                	sd	a1,0(a5)
    800022a2:	[38;5;160m>--[38;5;215m|[38;5;160m--------[38;5;154m|[38;5;160m--[38;5;208m|[38;5;160m--[38;5;176m|[38;5;160m-----------[38;5;145m|[38;5;160m--------------[38;5;134m|[38;5;160m->[0m 00042823          	sw	zero,16(s0)
    800022a6:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m|[0m   84b6                	mv	s1,a3
    800022a8:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m+[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;145m|[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;134m|[38;5;176m-[38;5;176m-[0m bf1d                	j	800021de <_printf_i+0x150>
    800022aa:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;134m\->[0m e308                	sd	a0,0(a4)
    800022ac:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  04067613          	andi	a2,a2,64
    800022b0:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  639c                	ld	a5,0(a5)
    800022b2:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;146m/[38;5;146m-[38;5;146m-[0m c601                	beqz	a2,800022ba <_printf_i+0x22c>
    800022b4:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;146m|[0m   00b79023          	sh	a1,0(a5)
    800022b8:	[38;5;160m+--[38;5;215m|[38;5;160m--------[38;5;154m|[38;5;160m--[38;5;208m|[38;5;160m--[38;5;176m|[38;5;160m-----------[38;5;145m|[38;5;160m--------------[38;5;146m|[38;5;160m--[0m b7ed                	j	800022a2 <_printf_i+0x214>
    800022ba:	[38;5;160m|[0m  [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;146m\[38;5;146m-[38;5;146m>[0m c38c                	sw	a1,0(a5)
    800022bc:	[38;5;160m\--[38;5;215m|[38;5;160m--------[38;5;154m|[38;5;160m--[38;5;208m|[38;5;160m--[38;5;176m|[38;5;160m-----------[38;5;145m|[38;5;160m-----------------[0m b7dd                	j	800022a2 <_printf_i+0x214>
    800022be:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  631c                	ld	a5,0(a4)
    800022c0:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  41d0                	lw	a2,4(a1)
    800022c2:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  4581                	li	a1,0
    800022c4:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  00878693          	addi	a3,a5,8
    800022c8:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  e314                	sd	a3,0(a4)
    800022ca:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  6384                	ld	s1,0(a5)
    800022cc:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  8526                	mv	a0,s1
    800022ce:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  b2bff0ef          	jal	ra,80001df8 <memchr>
    800022d2:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;130m/--[0m c119                	beqz	a0,800022d8 <_printf_i+0x24a>
    800022d4:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;130m|[0m   8d05                	sub	a0,a0,s1
    800022d6:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;130m|[0m   c048                	sw	a0,4(s0)
    800022d8:	   [38;5;215m|[0m        [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m              [38;5;130m\->[0m 405c                	lw	a5,4(s0)
    800022da:	   [38;5;215m\[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;154m|[38;5;215m-[38;5;215m-[38;5;208m|[38;5;215m-[38;5;215m-[38;5;176m|[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;145m|[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m-[38;5;215m>[0m c81c                	sw	a5,16(s0)
    800022dc:	            [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m|[0m           [38;5;145m|[0m                  040401a3          	sb	zero,67(s0)
    800022e0:	            [38;5;154m|[0m  [38;5;208m|[0m  [38;5;176m\[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;145m|[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[38;5;176m-[0m bdfd                	j	800021de <_printf_i+0x150>
    800022e2:	            [38;5;154m|[0m  [38;5;208m|[0m              [38;5;145m\[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m-[38;5;145m>[0m 4814                	lw	a3,16(s0)
    800022e4:	            [38;5;154m|[0m  [38;5;208m|[0m                                 8626                	mv	a2,s1
    800022e6:	            [38;5;154m|[0m  [38;5;208m|[0m                                 85ce                	mv	a1,s3
    800022e8:	            [38;5;154m|[0m  [38;5;208m|[0m                                 854a                	mv	a0,s2
    800022ea:	            [38;5;154m|[0m  [38;5;208m|[0m                                 9a02                	jalr	s4
    800022ec:	            [38;5;154m+--[38;5;208m|[38;5;154m--------------------------------[0m f15503e3          	beq	a0,s5,800021f2 <_printf_i+0x164>
    800022f0:	            [38;5;154m|[0m  [38;5;208m|[0m                                 401c                	lw	a5,0(s0)
    800022f2:	            [38;5;154m|[0m  [38;5;208m|[0m                                 8b89                	andi	a5,a5,2
    800022f4:	            [38;5;154m|[0m  [38;5;208m|[0m                    [38;5;146m/[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[0m eb85                	bnez	a5,80002324 <_printf_i+0x296>
    800022f6:	            [38;5;154m|[0m  [38;5;208m|[0m                    [38;5;146m|[0m  [38;5;231m/------->[0m 4458                	lw	a4,12(s0)
    800022f8:	            [38;5;154m|[0m  [38;5;208m|[0m                    [38;5;146m|[0m  [38;5;231m|[0m         47b2                	lw	a5,12(sp)
    800022fa:	            [38;5;154m|[0m  [38;5;208m|[0m                    [38;5;146m|[0m  [38;5;231m|[0m         0007051b          	sext.w	a0,a4
    800022fe:	            [38;5;154m|[0m  [38;5;208m+--------------------[38;5;146m|[38;5;208m--[38;5;231m|[38;5;208m--------[0m eef75be3          	bge	a4,a5,800021f4 <_printf_i+0x166>
    80002302:	            [38;5;154m|[0m  [38;5;208m|[0m                    [38;5;146m|[0m  [38;5;231m|[0m         0007851b          	sext.w	a0,a5
    80002306:	            [38;5;154m|[0m  [38;5;208m\--------------------[38;5;146m|[38;5;208m--[38;5;231m|[38;5;208m--------[0m b5fd                	j	800021f4 <_printf_i+0x166>
    80002308:	            [38;5;154m|[0m                       [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m/---->[0m 4685                	li	a3,1
    8000230a:	            [38;5;154m|[0m                       [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m      8656                	mv	a2,s5
    8000230c:	            [38;5;154m|[0m                       [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m      85ce                	mv	a1,s3
    8000230e:	            [38;5;154m|[0m                       [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m      854a                	mv	a0,s2
    80002310:	            [38;5;154m|[0m                       [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m      9a02                	jalr	s4
    80002312:	            [38;5;154m\-----------------------[38;5;146m|[38;5;154m--[38;5;231m|[38;5;154m--[38;5;172m|[38;5;154m-----[0m ef6500e3          	beq	a0,s6,800021f2 <_printf_i+0x164>
    80002316:	                                    [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m      2485                	addiw	s1,s1,1
    80002318:	                                    [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m  [38;5;126m/[38;5;126m-[38;5;126m>[0m 445c                	lw	a5,12(s0)
    8000231a:	                                    [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m  [38;5;126m|[0m   4732                	lw	a4,12(sp)
    8000231c:	                                    [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m|[0m  [38;5;126m|[0m   9f99                	subw	a5,a5,a4
    8000231e:	                                    [38;5;146m|[0m  [38;5;231m|[0m  [38;5;172m\--[38;5;126m|[38;5;172m--[0m fef4c5e3          	blt	s1,a5,80002308 <_printf_i+0x27a>
    80002322:	                                    [38;5;146m|[0m  [38;5;231m\-----[38;5;126m|[38;5;231m--[0m bfd1                	j	800022f6 <_printf_i+0x268>
    80002324:	                                    [38;5;146m\[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;146m-[38;5;126m|[38;5;146m-[38;5;146m>[0m 4481                	li	s1,0
    80002326:	                                             [38;5;126m|[0m   01940a93          	addi	s5,s0,25
    8000232a:	                                             [38;5;126m|[0m   5b7d                	li	s6,-1
    8000232c:	                                             [38;5;126m\[38;5;126m-[38;5;126m-[0m b7f5                	j	80002318 <_printf_i+0x28a>

000000008000232e <_read_r>:
    8000232e:	    1141                	addi	sp,sp,-16
    80002330:	    e022                	sd	s0,0(sp)
    80002332:	    842a                	mv	s0,a0
    80002334:	    852e                	mv	a0,a1
    80002336:	    85b2                	mv	a1,a2
    80002338:	    8636                	mv	a2,a3
    8000233a:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    8000233e:	    e406                	sd	ra,8(sp)
    80002340:	    1c4000ef          	jal	ra,80002504 <_read>
    80002344:	    57fd                	li	a5,-1
    80002346:	[38;5;197m/[38;5;197m-[38;5;197m-[0m 00f51663          	bne	a0,a5,80002352 <_read_r+0x24>
    8000234a:	[38;5;197m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    8000234e:	[38;5;197m+[38;5;197m-[38;5;197m-[0m c391                	beqz	a5,80002352 <_read_r+0x24>
    80002350:	[38;5;197m|[0m   c01c                	sw	a5,0(s0)
    80002352:	[38;5;197m\[38;5;197m-[38;5;197m>[0m 60a2                	ld	ra,8(sp)
    80002354:	    6402                	ld	s0,0(sp)
    80002356:	    0141                	addi	sp,sp,16
    80002358:	    8082                	ret

000000008000235a <cleanup_glue>:
    8000235a:	[38;5;158m/[38;5;158m-[38;5;158m-[38;5;158m-[38;5;158m-[38;5;158m>[0m 1101                	addi	sp,sp,-32
    8000235c:	[38;5;158m|[0m      e822                	sd	s0,16(sp)
    8000235e:	[38;5;158m|[0m      842e                	mv	s0,a1
    80002360:	[38;5;158m|[0m      618c                	ld	a1,0(a1)
    80002362:	[38;5;158m|[0m      e426                	sd	s1,8(sp)
    80002364:	[38;5;158m|[0m      ec06                	sd	ra,24(sp)
    80002366:	[38;5;158m|[0m      84aa                	mv	s1,a0
    80002368:	[38;5;158m|[0m  [38;5;142m/[38;5;142m-[38;5;142m-[0m c199                	beqz	a1,8000236e <cleanup_glue+0x14>
    8000236a:	[38;5;158m\[38;5;158m-[38;5;158m-[38;5;142m|[38;5;158m-[38;5;158m-[0m ff1ff0ef          	jal	ra,8000235a <cleanup_glue>
    8000236e:	   [38;5;142m\[38;5;142m-[38;5;142m>[0m 85a2                	mv	a1,s0
    80002370:	       6442                	ld	s0,16(sp)
    80002372:	       60e2                	ld	ra,24(sp)
    80002374:	       8526                	mv	a0,s1
    80002376:	       64a2                	ld	s1,8(sp)
    80002378:	       6105                	addi	sp,sp,32
    8000237a:	       bce1                	j	80001e52 <_free_r>

000000008000237c <_reclaim_reent>:
    8000237c:	                   00001797          	auipc	a5,0x1
    80002380:	                   b847b783          	ld	a5,-1148(a5) # 80002f00 <_impure_ptr>
    80002384:	[38;5;124m/-----------------[0m 0ca78863          	beq	a5,a0,80002454 <_reclaim_reent+0xd8>
    80002388:	[38;5;124m|[0m                  613c                	ld	a5,64(a0)
    8000238a:	[38;5;124m|[0m                  7179                	addi	sp,sp,-48
    8000238c:	[38;5;124m|[0m                  f022                	sd	s0,32(sp)
    8000238e:	[38;5;124m|[0m                  f406                	sd	ra,40(sp)
    80002390:	[38;5;124m|[0m                  ec26                	sd	s1,24(sp)
    80002392:	[38;5;124m|[0m                  e84a                	sd	s2,16(sp)
    80002394:	[38;5;124m|[0m                  e44e                	sd	s3,8(sp)
    80002396:	[38;5;124m|[0m                  842a                	mv	s0,a0
    80002398:	[38;5;124m|[0m        [38;5;131m/--------[0m cb8d                	beqz	a5,800023ca <_reclaim_reent+0x4e>
    8000239a:	[38;5;124m|[0m        [38;5;131m|[0m         6f9c                	ld	a5,24(a5)
    8000239c:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m/[38;5;172m-[38;5;172m-[38;5;172m-[38;5;172m-[38;5;172m-[0m c38d                	beqz	a5,800023be <_reclaim_reent+0x42>
    8000239e:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m      4481                	li	s1,0
    800023a0:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m      20000913          	li	s2,512
    800023a4:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m/->[0m 603c                	ld	a5,64(s0)
    800023a6:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m|[0m   6f9c                	ld	a5,24(a5)
    800023a8:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m|[0m   97a6                	add	a5,a5,s1
    800023aa:	[38;5;124m|[0m        [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m|[0m   638c                	ld	a1,0(a5)
    800023ac:	[38;5;124m|[0m  [38;5;156m/[38;5;156m-[38;5;156m-[38;5;141m/[38;5;141m-[38;5;141m-[38;5;131m|[38;5;141m-[38;5;141m-[38;5;172m|[38;5;141m-[38;5;141m-[38;5;159m|[38;5;141m-[38;5;156mX[0m e5d1                	bnez	a1,80002438 <_reclaim_reent+0xbc>
    800023ae:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m|[0m   04a1                	addi	s1,s1,8
    800023b0:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m  [38;5;159m\--[0m ff249ae3          	bne	s1,s2,800023a4 <_reclaim_reent+0x28>
    800023b4:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m      603c                	ld	a5,64(s0)
    800023b6:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m      8522                	mv	a0,s0
    800023b8:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m      6f8c                	ld	a1,24(a5)
    800023ba:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m|[0m      a99ff0ef          	jal	ra,80001e52 <_free_r>
    800023be:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m  [38;5;172m\[38;5;172m-[38;5;172m-[38;5;172m-[38;5;172m-[38;5;172m>[0m 603c                	ld	a5,64(s0)
    800023c0:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m         638c                	ld	a1,0(a5)
    800023c2:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m+--------[0m c581                	beqz	a1,800023ca <_reclaim_reent+0x4e>
    800023c4:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m         8522                	mv	a0,s0
    800023c6:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m|[0m         a8dff0ef          	jal	ra,80001e52 <_free_r>
    800023ca:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m  [38;5;131m\------->[0m 740c                	ld	a1,40(s0)
    800023cc:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;133m/--[0m c581                	beqz	a1,800023d4 <_reclaim_reent+0x58>
    800023ce:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;133m|[0m   8522                	mv	a0,s0
    800023d0:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;133m|[0m   a83ff0ef          	jal	ra,80001e52 <_free_r>
    800023d4:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;133m\->[0m 602c                	ld	a1,64(s0)
    800023d6:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;189m/--[0m c581                	beqz	a1,800023de <_reclaim_reent+0x62>
    800023d8:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;189m|[0m   8522                	mv	a0,s0
    800023da:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;189m|[0m   a79ff0ef          	jal	ra,80001e52 <_free_r>
    800023de:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;189m\->[0m 702c                	ld	a1,96(s0)
    800023e0:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;130m/--[0m c581                	beqz	a1,800023e8 <_reclaim_reent+0x6c>
    800023e2:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;130m|[0m   8522                	mv	a0,s0
    800023e4:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;130m|[0m   a6fff0ef          	jal	ra,80001e52 <_free_r>
    800023e8:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;130m\->[0m 742c                	ld	a1,104(s0)
    800023ea:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;128m/--[0m c581                	beqz	a1,800023f2 <_reclaim_reent+0x76>
    800023ec:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;128m|[0m   8522                	mv	a0,s0
    800023ee:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;128m|[0m   a65ff0ef          	jal	ra,80001e52 <_free_r>
    800023f2:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;128m\->[0m 782c                	ld	a1,112(s0)
    800023f4:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;150m/--[0m c581                	beqz	a1,800023fc <_reclaim_reent+0x80>
    800023f6:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;150m|[0m   8522                	mv	a0,s0
    800023f8:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;150m|[0m   a5bff0ef          	jal	ra,80001e52 <_free_r>
    800023fc:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;150m\->[0m 744c                	ld	a1,168(s0)
    800023fe:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;163m/--[0m c581                	beqz	a1,80002406 <_reclaim_reent+0x8a>
    80002400:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;163m|[0m   8522                	mv	a0,s0
    80002402:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;163m|[0m   a51ff0ef          	jal	ra,80001e52 <_free_r>
    80002406:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;163m\->[0m 704c                	ld	a1,160(s0)
    80002408:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;215m/--[0m c581                	beqz	a1,80002410 <_reclaim_reent+0x94>
    8000240a:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;215m|[0m   8522                	mv	a0,s0
    8000240c:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;215m|[0m   a47ff0ef          	jal	ra,80001e52 <_free_r>
    80002410:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;215m\->[0m 6c2c                	ld	a1,88(s0)
    80002412:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;131m/--[0m c581                	beqz	a1,8000241a <_reclaim_reent+0x9e>
    80002414:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;131m|[0m   8522                	mv	a0,s0
    80002416:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;131m|[0m   a3dff0ef          	jal	ra,80001e52 <_free_r>
    8000241a:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;131m\->[0m 581c                	lw	a5,48(s0)
    8000241c:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m/--[0m c78d                	beqz	a5,80002446 <_reclaim_reent+0xca>
    8000241e:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   643c                	ld	a5,72(s0)
    80002420:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   8522                	mv	a0,s0
    80002422:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   9782                	jalr	a5
    80002424:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   604c                	ld	a1,128(s0)
    80002426:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m+--[0m c185                	beqz	a1,80002446 <_reclaim_reent+0xca>
    80002428:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   8522                	mv	a0,s0
    8000242a:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   7402                	ld	s0,32(sp)
    8000242c:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   70a2                	ld	ra,40(sp)
    8000242e:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   64e2                	ld	s1,24(sp)
    80002430:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   6942                	ld	s2,16(sp)
    80002432:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   69a2                	ld	s3,8(sp)
    80002434:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   6145                	addi	sp,sp,48
    80002436:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m|[0m        [38;5;221m|[0m   b715                	j	8000235a <cleanup_glue>
    80002438:	[38;5;124m|[0m  [38;5;156m|[0m  [38;5;141m\[38;5;141m-[38;5;141m-[38;5;141m-[38;5;141m-[38;5;141m-[38;5;141m-[38;5;141m-[38;5;141m-[38;5;221m|[38;5;141m-[38;5;141m>[0m 0005b983          	ld	s3,0(a1)
    8000243c:	[38;5;124m|[0m  [38;5;156m|[0m           [38;5;221m|[0m   8522                	mv	a0,s0
    8000243e:	[38;5;124m|[0m  [38;5;156m|[0m           [38;5;221m|[0m   a15ff0ef          	jal	ra,80001e52 <_free_r>
    80002442:	[38;5;124m|[0m  [38;5;156m|[0m           [38;5;221m|[0m   85ce                	mv	a1,s3
    80002444:	[38;5;124m|[0m  [38;5;156m\[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;156m-[38;5;221m|[38;5;156m-[38;5;156m-[0m b7a5                	j	800023ac <_reclaim_reent+0x30>
    80002446:	[38;5;124m|[0m              [38;5;221m\->[0m 70a2                	ld	ra,40(sp)
    80002448:	[38;5;124m|[0m                  7402                	ld	s0,32(sp)
    8000244a:	[38;5;124m|[0m                  64e2                	ld	s1,24(sp)
    8000244c:	[38;5;124m|[0m                  6942                	ld	s2,16(sp)
    8000244e:	[38;5;124m|[0m                  69a2                	ld	s3,8(sp)
    80002450:	[38;5;124m|[0m                  6145                	addi	sp,sp,48
    80002452:	[38;5;124m|[0m                  8082                	ret
    80002454:	[38;5;124m\---------------->[0m 8082                	ret

0000000080002456 <_fstat_r>:
    80002456:	    1141                	addi	sp,sp,-16
    80002458:	    e022                	sd	s0,0(sp)
    8000245a:	    842a                	mv	s0,a0
    8000245c:	    852e                	mv	a0,a1
    8000245e:	    85b2                	mv	a1,a2
    80002460:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    80002464:	    e406                	sd	ra,8(sp)
    80002466:	    06e000ef          	jal	ra,800024d4 <_fstat>
    8000246a:	    57fd                	li	a5,-1
    8000246c:	[38;5;148m/[38;5;148m-[38;5;148m-[0m 00f51663          	bne	a0,a5,80002478 <_fstat_r+0x22>
    80002470:	[38;5;148m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    80002474:	[38;5;148m+[38;5;148m-[38;5;148m-[0m c391                	beqz	a5,80002478 <_fstat_r+0x22>
    80002476:	[38;5;148m|[0m   c01c                	sw	a5,0(s0)
    80002478:	[38;5;148m\[38;5;148m-[38;5;148m>[0m 60a2                	ld	ra,8(sp)
    8000247a:	    6402                	ld	s0,0(sp)
    8000247c:	    0141                	addi	sp,sp,16
    8000247e:	    8082                	ret

0000000080002480 <_isatty_r>:
    80002480:	    1141                	addi	sp,sp,-16
    80002482:	    e022                	sd	s0,0(sp)
    80002484:	    842a                	mv	s0,a0
    80002486:	    852e                	mv	a0,a1
    80002488:	    8801a823          	sw	zero,-1904(gp) # 80002f90 <errno>
    8000248c:	    e406                	sd	ra,8(sp)
    8000248e:	    05a000ef          	jal	ra,800024e8 <_isatty>
    80002492:	    57fd                	li	a5,-1
    80002494:	[38;5;157m/--[0m 00f51663          	bne	a0,a5,800024a0 <_isatty_r+0x20>
    80002498:	[38;5;157m|[0m   8901a783          	lw	a5,-1904(gp) # 80002f90 <errno>
    8000249c:	[38;5;157m+--[0m c391                	beqz	a5,800024a0 <_isatty_r+0x20>
    8000249e:	[38;5;157m|[0m   c01c                	sw	a5,0(s0)
    800024a0:	[38;5;157m\->[0m 60a2                	ld	ra,8(sp)
    800024a2:	    6402                	ld	s0,0(sp)
    800024a4:	    0141                	addi	sp,sp,16
    800024a6:	    8082                	ret

00000000800024a8 <_malloc_usable_size_r>:
    800024a8:	    ff85b503          	ld	a0,-8(a1)
    800024ac:	    0005079b          	sext.w	a5,a0
    800024b0:	    1561                	addi	a0,a0,-8
    800024b2:	[38;5;145m/--[0m 0007d663          	bgez	a5,800024be <_malloc_usable_size_r+0x16>
    800024b6:	[38;5;145m|[0m   95aa                	add	a1,a1,a0
    800024b8:	[38;5;145m|[0m   6188                	ld	a0,0(a1)
    800024ba:	[38;5;145m|[0m   17e1                	addi	a5,a5,-8
    800024bc:	[38;5;145m|[0m   953e                	add	a0,a0,a5
    800024be:	[38;5;145m\->[0m 8082                	ret

00000000800024c0 <_close>:
#include <errno.h>
#include "syscall.h"

int _close(int file)
{
    800024c0:	1141                	addi	sp,sp,-16
    800024c2:	e406                	sd	ra,8(sp)
    errno = EBADF;
    800024c4:	154000ef          	jal	ra,80002618 <__errno>
    return -1;
}
    800024c8:	60a2                	ld	ra,8(sp)
    errno = EBADF;
    800024ca:	47a5                	li	a5,9
    800024cc:	c11c                	sw	a5,0(a0)
}
    800024ce:	557d                	li	a0,-1
    800024d0:	0141                	addi	sp,sp,16
    800024d2:	8082                	ret

00000000800024d4 <_fstat>:
#include <errno.h>
#include <sys/stat.h>
#include "syscall.h"

int _fstat(int file, struct stat *st)
{
    800024d4:	1141                	addi	sp,sp,-16
    800024d6:	e406                	sd	ra,8(sp)
    errno = EBADF;
    800024d8:	140000ef          	jal	ra,80002618 <__errno>
    return -1;
}
    800024dc:	60a2                	ld	ra,8(sp)
    errno = EBADF;
    800024de:	47a5                	li	a5,9
    800024e0:	c11c                	sw	a5,0(a0)
}
    800024e2:	557d                	li	a0,-1
    800024e4:	0141                	addi	sp,sp,16
    800024e6:	8082                	ret

00000000800024e8 <_isatty>:
#include <unistd.h>
#include "syscall.h"

int _isatty(int file)
{
    return (file == STDOUT_FILENO || file == STDERR_FILENO);
    800024e8:	357d                	addiw	a0,a0,-1
}
    800024ea:	00253513          	sltiu	a0,a0,2
    800024ee:	8082                	ret

00000000800024f0 <_lseek>:
#include <errno.h>
#include <sys/types.h>
#include "syscall.h"

off_t _lseek(int file, off_t ptr, int dir)
{
    800024f0:	1141                	addi	sp,sp,-16
    800024f2:	e406                	sd	ra,8(sp)
    errno = EBADF;
    800024f4:	124000ef          	jal	ra,80002618 <__errno>
    return -1;
}
    800024f8:	60a2                	ld	ra,8(sp)
    errno = EBADF;
    800024fa:	47a5                	li	a5,9
    800024fc:	c11c                	sw	a5,0(a0)
}
    800024fe:	557d                	li	a0,-1
    80002500:	0141                	addi	sp,sp,16
    80002502:	8082                	ret

0000000080002504 <_read>:
#include <errno.h>
#include <sys/types.h>
#include "syscall.h"

ssize_t _read(int file, void *ptr, size_t len)
{
    80002504:	1141                	addi	sp,sp,-16
    80002506:	e406                	sd	ra,8(sp)
    errno = ENOSYS;
    80002508:	110000ef          	jal	ra,80002618 <__errno>
    return -1;
}
    8000250c:	60a2                	ld	ra,8(sp)
    errno = ENOSYS;
    8000250e:	05800793          	li	a5,88
    80002512:	c11c                	sw	a5,0(a0)
}
    80002514:	557d                	li	a0,-1
    80002516:	0141                	addi	sp,sp,16
    80002518:	8082                	ret

000000008000251a <_sbrk>:
{
    extern char __heap_end[];
    char *newbrk;
    char *oldbrk;

    oldbrk = curbrk;
    8000251a:	    00001717          	auipc	a4,0x1
    8000251e:	    9ee70713          	addi	a4,a4,-1554 # 80002f08 <curbrk>
    80002522:	    631c                	ld	a5,0(a4)
    newbrk = oldbrk + incr;
    if (unlikely((newbrk < _end) || (newbrk >= __heap_end))) {
    80002524:	    dd018693          	addi	a3,gp,-560 # 800034d0 <_end>
    newbrk = oldbrk + incr;
    80002528:	    953e                	add	a0,a0,a5
    if (unlikely((newbrk < _end) || (newbrk >= __heap_end))) {
    8000252a:	[38;5;204m/[38;5;204m-[38;5;204m-[0m 00d56b63          	bltu	a0,a3,80002540 <_sbrk+0x26>
    8000252e:	[38;5;204m|[0m   00022697          	auipc	a3,0x22
    80002532:	[38;5;204m|[0m   ad268693          	addi	a3,a3,-1326 # 80024000 <__heap_end>
    80002536:	[38;5;204m+[38;5;204m-[38;5;204m-[0m 00d57563          	bgeu	a0,a3,80002540 <_sbrk+0x26>
        errno = ENOMEM;
        return (void *)(-1);
    }

    curbrk = newbrk;
    8000253a:	[38;5;204m|[0m   e308                	sd	a0,0(a4)
    return oldbrk;
}
    8000253c:	[38;5;204m|[0m   853e                	mv	a0,a5
    8000253e:	[38;5;204m|[0m   8082                	ret
{
    80002540:	[38;5;204m\[38;5;204m-[38;5;204m>[0m 1141                	addi	sp,sp,-16
    80002542:	    e406                	sd	ra,8(sp)
        errno = ENOMEM;
    80002544:	    0d4000ef          	jal	ra,80002618 <__errno>
}
    80002548:	    60a2                	ld	ra,8(sp)
        errno = ENOMEM;
    8000254a:	    47b1                	li	a5,12
    8000254c:	    c11c                	sw	a5,0(a0)
        return (void *)(-1);
    8000254e:	    57fd                	li	a5,-1
}
    80002550:	    853e                	mv	a0,a5
    80002552:	    0141                	addi	sp,sp,16
    80002554:	    8082                	ret

0000000080002556 <_write>:
#include <sys/types.h>
#include "syscall.h"

ssize_t _write(int fd, const void *ptr, size_t len)
{
    return SYSCALL3(SYS_write, fd, (uintptr_t)ptr, len);
    80002556:	04000693          	li	a3,64
    8000255a:	a0a1                	j	800025a2 <htif_syscall>

000000008000255c <handle_trap>:
#include <stdint.h>
#include "syscall.h"

void __attribute__((weak)) handle_trap(uintptr_t epc, uintptr_t cause, uintptr_t tval, uintptr_t regs[32])
{
    8000255c:	    1141                	addi	sp,sp,-16
    /* Extract low-order bits of exception code as positive int */
    int code = cause & ((1UL << ((sizeof(int)<<3)-1)) - 1);
    8000255e:	    02159513          	slli	a0,a1,0x21
{
    80002562:	    e406                	sd	ra,8(sp)
    int code = cause & ((1UL << ((sizeof(int)<<3)-1)) - 1);
    80002564:	    9105                	srli	a0,a0,0x21
    /* Encode interrupt as negative value */
    code = ((intptr_t)cause < 0) ? -code : code;
    80002566:	[38;5;211m/[38;5;211m-[38;5;211m-[0m 0005d463          	bgez	a1,8000256e <handle_trap+0x12>
    8000256a:	[38;5;211m|[0m   40a0053b          	negw	a0,a0
    _exit(code);
    8000256e:	[38;5;211m\[38;5;211m-[38;5;211m>[0m 07e000ef          	jal	ra,800025ec <_exit>

0000000080002572 <__init_tls>:
#include <string.h>

void __init_tls(void)
{
    80002572:	1141                	addi	sp,sp,-16
    extern char __tdata_start[];
    extern char __tbss_offset[];
    extern char __tdata_size[];
    extern char __tbss_size[];

    memcpy(__thread_self, __tdata_start, (size_t)__tdata_size);
    80002574:	00000613          	li	a2,0
    80002578:	00000597          	auipc	a1,0x0
    8000257c:	2a458593          	addi	a1,a1,676 # 8000281c <__tdata_start>
    80002580:	8512                	mv	a0,tp
{
    80002582:	e022                	sd	s0,0(sp)
    80002584:	e406                	sd	ra,8(sp)
    memcpy(__thread_self, __tdata_start, (size_t)__tdata_size);
    80002586:	8412                	mv	s0,tp
    80002588:	88bff0ef          	jal	ra,80001e12 <memcpy>
    memset(__thread_self + (size_t)__tbss_offset, 0, (size_t)__tbss_size);
    8000258c:	00000513          	li	a0,0
    80002590:	9522                	add	a0,a0,s0
}
    80002592:	6402                	ld	s0,0(sp)
    80002594:	60a2                	ld	ra,8(sp)
    memset(__thread_self + (size_t)__tbss_offset, 0, (size_t)__tbss_size);
    80002596:	00400613          	li	a2,4
    8000259a:	4581                	li	a1,0
}
    8000259c:	0141                	addi	sp,sp,16
    memset(__thread_self + (size_t)__tbss_offset, 0, (size_t)__tbss_size);
    8000259e:	b35fe06f          	j	800010d2 <memset>

00000000800025a2 <htif_syscall>:
volatile uint64_t fromhost __attribute__ ((section (".htif")));

static spinlock_t htif_lock = SPINLOCK_INIT;

long htif_syscall(uint64_t a0, uint64_t a1, uint64_t a2, unsigned long n)
{
    800025a2:	    7139                	addi	sp,sp,-64
    volatile uint64_t buf[8];
    uint64_t sc;

    buf[0] = n;
    800025a4:	    e036                	sd	a3,0(sp)
    buf[1] = a0;
    800025a6:	    e42a                	sd	a0,8(sp)
    buf[2] = a1;
    800025a8:	    e82e                	sd	a1,16(sp)
    buf[3] = a2;

    sc = HTIF_TOHOST(0, 0, (uintptr_t)&buf);
    800025aa:	    57fd                	li	a5,-1
    buf[3] = a2;
    800025ac:	    ec32                	sd	a2,24(sp)
    sc = HTIF_TOHOST(0, 0, (uintptr_t)&buf);
    800025ae:	    83c1                	srli	a5,a5,0x10
    800025b0:	    860a                	mv	a2,sp
    800025b2:	    8e7d                	and	a2,a2,a5
    spin_lock(&htif_lock);
    800025b4:	    89818713          	addi	a4,gp,-1896 # 80002f98 <htif_lock>

static inline long atomic_swap_acquire(atomic_t *p, atomic_t v)
{
    long n;
#ifdef __riscv_atomic
    __asm__ __volatile__ (
    800025b8:	    56fd                	li	a3,-1
    return *((volatile const atomic_t *)p);
    800025ba:	[38;5;133m/[38;5;133m-[38;5;133m>[0m 431c                	lw	a5,0(a4)

static inline void spin_lock(spinlock_t *lock)
{
    do {
#ifdef __riscv_atomic
        while (atomic_load(&lock->lock));
    800025bc:	[38;5;133m+[38;5;133m-[38;5;133m-[0m fffd                	bnez	a5,800025ba <htif_syscall+0x18>
    __asm__ __volatile__ (
    800025be:	[38;5;133m|[0m   0cd727af          	amoswap.w.aq	a5,a3,(a4)
#endif
    } while (atomic_swap_acquire(&lock->lock, -1));
    800025c2:	[38;5;133m\[38;5;133m-[38;5;133m-[0m ffe5                	bnez	a5,800025ba <htif_syscall+0x18>
static inline void wmb(void) { fence(w, w); }
    800025c4:	    0110000f          	fence	w,w
    wmb();
    tohost = sc;
    800025c8:	    00001697          	auipc	a3,0x1
    800025cc:	    87868693          	addi	a3,a3,-1928 # 80002e40 <tohost>
    800025d0:	    e290                	sd	a2,0(a3)
    while (fromhost == 0);
    800025d2:	[38;5;130m/->[0m 669c                	ld	a5,8(a3)
    800025d4:	[38;5;130m\--[0m dffd                	beqz	a5,800025d2 <htif_syscall+0x30>
    fromhost = 0;
    800025d6:	    00001797          	auipc	a5,0x1
    800025da:	    8607b923          	sd	zero,-1934(a5) # 80002e48 <fromhost>
}

static inline void atomic_clear_release(atomic_t *p)
{
#ifdef __riscv_atomic
    __asm__ __volatile__ (
    800025de:	    0a07202f          	amoswap.w.rl	zero,zero,(a4)
static inline void rmb(void) { fence(r, r); }
    800025e2:	    0220000f          	fence	r,r
    spin_unlock(&htif_lock);

    rmb();
    return buf[0];
    800025e6:	    6502                	ld	a0,0(sp)
}
    800025e8:	    6121                	addi	sp,sp,64
    800025ea:	    8082                	ret

00000000800025ec <_exit>:
#include "syscall.h"
#include "htif.h"

void __attribute__ ((noreturn)) _exit(int code)
{
    uint64_t cmd = HTIF_TOHOST(0, 0, (code << 1) | 0x1);
    800025ec:	    0015179b          	slliw	a5,a0,0x1
    800025f0:	    0017e793          	ori	a5,a5,1
    800025f4:	    2781                	sext.w	a5,a5
    800025f6:	    07c2                	slli	a5,a5,0x10
    800025f8:	    83c1                	srli	a5,a5,0x10
    800025fa:	    00001717          	auipc	a4,0x1
    800025fe:	    84670713          	addi	a4,a4,-1978 # 80002e40 <tohost>
    for (;;) {
        fromhost = 0;
    80002602:	[38;5;139m/->[0m 00001697          	auipc	a3,0x1
    80002606:	[38;5;139m|[0m   8406b323          	sd	zero,-1978(a3) # 80002e48 <fromhost>
        tohost = cmd;
    8000260a:	[38;5;139m|[0m   e31c                	sd	a5,0(a4)
    for (;;) {
    8000260c:	[38;5;139m\--[0m bfdd                	j	80002602 <_exit+0x16>

000000008000260e <atexit>:
    8000260e:	85aa                	mv	a1,a0
    80002610:	4681                	li	a3,0
    80002612:	4601                	li	a2,0
    80002614:	4501                	li	a0,0
    80002616:	a0e1                	j	800026de <__register_exitproc>

0000000080002618 <__errno>:
    80002618:	00001517          	auipc	a0,0x1
    8000261c:	8e853503          	ld	a0,-1816(a0) # 80002f00 <_impure_ptr>
    80002620:	8082                	ret

0000000080002622 <exit>:
    80002622:	    1141                	addi	sp,sp,-16
    80002624:	    e022                	sd	s0,0(sp)
    80002626:	    e406                	sd	ra,8(sp)
    80002628:	    00000797          	auipc	a5,0x0
    8000262c:	    12c78793          	addi	a5,a5,300 # 80002754 <__call_exitprocs>
    80002630:	    842a                	mv	s0,a0
    80002632:	[38;5;145m/[38;5;145m-[38;5;145m-[0m c781                	beqz	a5,8000263a <exit+0x18>
    80002634:	[38;5;145m|[0m   4581                	li	a1,0
    80002636:	[38;5;145m|[0m   11e000ef          	jal	ra,80002754 <__call_exitprocs>
    8000263a:	[38;5;145m\[38;5;145m-[38;5;145m>[0m 8201b503          	ld	a0,-2016(gp) # 80002f20 <_global_impure_ptr>
    8000263e:	    653c                	ld	a5,72(a0)
    80002640:	[38;5;204m/--[0m c391                	beqz	a5,80002644 <exit+0x22>
    80002642:	[38;5;204m|[0m   9782                	jalr	a5
    80002644:	[38;5;204m\->[0m 8522                	mv	a0,s0
    80002646:	    fa7ff0ef          	jal	ra,800025ec <_exit>

000000008000264a <__libc_fini_array>:
    8000264a:	       1101                	addi	sp,sp,-32
    8000264c:	       e822                	sd	s0,16(sp)
    8000264e:	       e426                	sd	s1,8(sp)
    80002650:	       00000417          	auipc	s0,0x0
    80002654:	       7f040413          	addi	s0,s0,2032 # 80002e40 <tohost>
    80002658:	       00000497          	auipc	s1,0x0
    8000265c:	       7e848493          	addi	s1,s1,2024 # 80002e40 <tohost>
    80002660:	       8c05                	sub	s0,s0,s1
    80002662:	       ec06                	sd	ra,24(sp)
    80002664:	       840d                	srai	s0,s0,0x3
    80002666:	[38;5;128m/[38;5;128m-[38;5;128m-[38;5;198m/[38;5;198m-[38;5;128mX[0m e411                	bnez	s0,80002672 <__libc_fini_array+0x28>
    80002668:	[38;5;128m|[0m  [38;5;198m|[0m   60e2                	ld	ra,24(sp)
    8000266a:	[38;5;128m|[0m  [38;5;198m|[0m   6442                	ld	s0,16(sp)
    8000266c:	[38;5;128m|[0m  [38;5;198m|[0m   64a2                	ld	s1,8(sp)
    8000266e:	[38;5;128m|[0m  [38;5;198m|[0m   6105                	addi	sp,sp,32
    80002670:	[38;5;128m|[0m  [38;5;198m|[0m   8082                	ret
    80002672:	[38;5;128m|[0m  [38;5;198m\[38;5;198m-[38;5;198m>[0m 147d                	addi	s0,s0,-1
    80002674:	[38;5;128m|[0m      00341793          	slli	a5,s0,0x3
    80002678:	[38;5;128m|[0m      97a6                	add	a5,a5,s1
    8000267a:	[38;5;128m|[0m      639c                	ld	a5,0(a5)
    8000267c:	[38;5;128m|[0m      9782                	jalr	a5
    8000267e:	[38;5;128m\[38;5;128m-[38;5;128m-[38;5;128m-[38;5;128m-[38;5;128m-[0m b7e5                	j	80002666 <__libc_fini_array+0x1c>

0000000080002680 <__libc_init_array>:
    80002680:	             1101                	addi	sp,sp,-32
    80002682:	             e822                	sd	s0,16(sp)
    80002684:	             e426                	sd	s1,8(sp)
    80002686:	             00000417          	auipc	s0,0x0
    8000268a:	             7ba40413          	addi	s0,s0,1978 # 80002e40 <tohost>
    8000268e:	             00000497          	auipc	s1,0x0
    80002692:	             7b248493          	addi	s1,s1,1970 # 80002e40 <tohost>
    80002696:	             8c81                	sub	s1,s1,s0
    80002698:	             e04a                	sd	s2,0(sp)
    8000269a:	             ec06                	sd	ra,24(sp)
    8000269c:	             848d                	srai	s1,s1,0x3
    8000269e:	             4901                	li	s2,0
    800026a0:	[38;5;148m/[38;5;148m-[38;5;148m-[38;5;134m/[38;5;134m-[38;5;134m-[38;5;134m-[38;5;134m-[38;5;134m-[38;5;134m-[38;5;134m-[38;5;148mX[0m 02991563          	bne	s2,s1,800026ca <__libc_init_array+0x4a>
    800026a4:	[38;5;148m|[0m  [38;5;134m|[0m         00000417          	auipc	s0,0x0
    800026a8:	[38;5;148m|[0m  [38;5;134m|[0m         79c40413          	addi	s0,s0,1948 # 80002e40 <tohost>
    800026ac:	[38;5;148m|[0m  [38;5;134m|[0m         00000497          	auipc	s1,0x0
    800026b0:	[38;5;148m|[0m  [38;5;134m|[0m         79448493          	addi	s1,s1,1940 # 80002e40 <tohost>
    800026b4:	[38;5;148m|[0m  [38;5;134m|[0m         8c81                	sub	s1,s1,s0
    800026b6:	[38;5;148m|[0m  [38;5;134m|[0m         848d                	srai	s1,s1,0x3
    800026b8:	[38;5;148m|[0m  [38;5;134m|[0m         4901                	li	s2,0
    800026ba:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m/--[38;5;156m/[38;5;156m-[38;5;208mX[0m 00991d63          	bne	s2,s1,800026d4 <__libc_init_array+0x54>
    800026be:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   60e2                	ld	ra,24(sp)
    800026c0:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   6442                	ld	s0,16(sp)
    800026c2:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   64a2                	ld	s1,8(sp)
    800026c4:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   6902                	ld	s2,0(sp)
    800026c6:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   6105                	addi	sp,sp,32
    800026c8:	[38;5;148m|[0m  [38;5;134m|[0m  [38;5;208m|[0m  [38;5;156m|[0m   8082                	ret
    800026ca:	[38;5;148m|[0m  [38;5;134m\[38;5;134m-[38;5;134m-[38;5;208m|[38;5;134m-[38;5;134m-[38;5;156m|[38;5;134m-[38;5;134m>[0m 601c                	ld	a5,0(s0)
    800026cc:	[38;5;148m|[0m     [38;5;208m|[0m  [38;5;156m|[0m   0905                	addi	s2,s2,1
    800026ce:	[38;5;148m|[0m     [38;5;208m|[0m  [38;5;156m|[0m   0421                	addi	s0,s0,8
    800026d0:	[38;5;148m|[0m     [38;5;208m|[0m  [38;5;156m|[0m   9782                	jalr	a5
    800026d2:	[38;5;148m\[38;5;148m-[38;5;148m-[38;5;148m-[38;5;148m-[38;5;148m-[38;5;208m|[38;5;148m-[38;5;148m-[38;5;156m|[38;5;148m-[38;5;148m-[0m b7f9                	j	800026a0 <__libc_init_array+0x20>
    800026d4:	      [38;5;208m|[0m  [38;5;156m\[38;5;156m-[38;5;156m>[0m 601c                	ld	a5,0(s0)
    800026d6:	      [38;5;208m|[0m      0905                	addi	s2,s2,1
    800026d8:	      [38;5;208m|[0m      0421                	addi	s0,s0,8
    800026da:	      [38;5;208m|[0m      9782                	jalr	a5
    800026dc:	      [38;5;208m\-----[0m bff9                	j	800026ba <__libc_init_array+0x3a>

00000000800026de <__register_exitproc>:
    800026de:	       88aa                	mv	a7,a0
    800026e0:	       8a818513          	addi	a0,gp,-1880 # 80002fa8 <_global_atexit>
    800026e4:	       6118                	ld	a4,0(a0)
    800026e6:	[38;5;187m/-----[0m ef01                	bnez	a4,800026fe <__register_exitproc+0x20>
    800026e8:	[38;5;187m|[0m      cb818793          	addi	a5,gp,-840 # 800033b8 <_global_atexit0>
    800026ec:	[38;5;187m|[0m      e11c                	sd	a5,0(a0)
    800026ee:	[38;5;187m|[0m      00000713          	li	a4,0
    800026f2:	[38;5;187m|[0m  [38;5;156m/[38;5;156m-[38;5;156m-[0m c701                	beqz	a4,800026fa <__register_exitproc+0x1c>
    800026f4:	[38;5;187m|[0m  [38;5;156m|[0m   6318                	ld	a4,0(a4)
    800026f6:	[38;5;187m|[0m  [38;5;156m|[0m   10e7b823          	sd	a4,272(a5)
    800026fa:	[38;5;187m|[0m  [38;5;156m\[38;5;156m-[38;5;156m>[0m cb818713          	addi	a4,gp,-840 # 800033b8 <_global_atexit0>
    800026fe:	[38;5;187m\---->[0m 471c                	lw	a5,8(a4)
    80002700:	       487d                	li	a6,31
    80002702:	       557d                	li	a0,-1
    80002704:	[38;5;212m/[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[0m 04f84763          	blt	a6,a5,80002752 <__register_exitproc+0x74>
    80002708:	[38;5;212m|[0m  [38;5;133m/[38;5;133m-[38;5;133m-[0m 02088d63          	beqz	a7,80002742 <__register_exitproc+0x64>
    8000270c:	[38;5;212m|[0m  [38;5;133m|[0m   11073803          	ld	a6,272(a4)
    80002710:	[38;5;212m+[38;5;212m-[38;5;212m-[38;5;133m|[38;5;212m-[38;5;212m-[0m 04080163          	beqz	a6,80002752 <__register_exitproc+0x74>
    80002714:	[38;5;212m|[0m  [38;5;133m|[0m   00379513          	slli	a0,a5,0x3
    80002718:	[38;5;212m|[0m  [38;5;133m|[0m   9542                	add	a0,a0,a6
    8000271a:	[38;5;212m|[0m  [38;5;133m|[0m   e110                	sd	a2,0(a0)
    8000271c:	[38;5;212m|[0m  [38;5;133m|[0m   20082303          	lw	t1,512(a6)
    80002720:	[38;5;212m|[0m  [38;5;133m|[0m   4605                	li	a2,1
    80002722:	[38;5;212m|[0m  [38;5;133m|[0m   00f6163b          	sllw	a2,a2,a5
    80002726:	[38;5;212m|[0m  [38;5;133m|[0m   00c36333          	or	t1,t1,a2
    8000272a:	[38;5;212m|[0m  [38;5;133m|[0m   20682023          	sw	t1,512(a6)
    8000272e:	[38;5;212m|[0m  [38;5;133m|[0m   10d53023          	sd	a3,256(a0)
    80002732:	[38;5;212m|[0m  [38;5;133m|[0m   4689                	li	a3,2
    80002734:	[38;5;212m|[0m  [38;5;133m+[38;5;133m-[38;5;133m-[0m 00d89763          	bne	a7,a3,80002742 <__register_exitproc+0x64>
    80002738:	[38;5;212m|[0m  [38;5;133m|[0m   20482683          	lw	a3,516(a6)
    8000273c:	[38;5;212m|[0m  [38;5;133m|[0m   8ed1                	or	a3,a3,a2
    8000273e:	[38;5;212m|[0m  [38;5;133m|[0m   20d82223          	sw	a3,516(a6)
    80002742:	[38;5;212m|[0m  [38;5;133m\[38;5;133m-[38;5;133m>[0m 0017869b          	addiw	a3,a5,1
    80002746:	[38;5;212m|[0m      0789                	addi	a5,a5,2
    80002748:	[38;5;212m|[0m      078e                	slli	a5,a5,0x3
    8000274a:	[38;5;212m|[0m      c714                	sw	a3,8(a4)
    8000274c:	[38;5;212m|[0m      973e                	add	a4,a4,a5
    8000274e:	[38;5;212m|[0m      e30c                	sd	a1,0(a4)
    80002750:	[38;5;212m|[0m      4501                	li	a0,0
    80002752:	[38;5;212m\[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m-[38;5;212m>[0m 8082                	ret

0000000080002754 <__call_exitprocs>:
    80002754:	                      711d                	addi	sp,sp,-96
    80002756:	                      f852                	sd	s4,48(sp)
    80002758:	                      f456                	sd	s5,40(sp)
    8000275a:	                      f05a                	sd	s6,32(sp)
    8000275c:	                      ec5e                	sd	s7,24(sp)
    8000275e:	                      ec86                	sd	ra,88(sp)
    80002760:	                      e8a2                	sd	s0,80(sp)
    80002762:	                      e4a6                	sd	s1,72(sp)
    80002764:	                      e0ca                	sd	s2,64(sp)
    80002766:	                      fc4e                	sd	s3,56(sp)
    80002768:	                      e862                	sd	s8,16(sp)
    8000276a:	                      e466                	sd	s9,8(sp)
    8000276c:	                      8aaa                	mv	s5,a0
    8000276e:	                      8a2e                	mv	s4,a1
    80002770:	                      8a818b13          	addi	s6,gp,-1880 # 80002fa8 <_global_atexit>
    80002774:	                      4b85                	li	s7,1
    80002776:	[38;5;149m/------------------->[0m 000b3483          	ld	s1,0(s6)
    8000277a:	[38;5;149m|[0m                 [38;5;206m/[38;5;206m-[38;5;206m-[0m cc81                	beqz	s1,80002792 <__call_exitprocs+0x3e>
    8000277c:	[38;5;149m|[0m                 [38;5;206m|[0m   4480                	lw	s0,8(s1)
    8000277e:	[38;5;149m|[0m                 [38;5;206m|[0m   1104b983          	ld	s3,272(s1)
    80002782:	[38;5;149m|[0m                 [38;5;206m|[0m   fff4091b          	addiw	s2,s0,-1
    80002786:	[38;5;149m|[0m                 [38;5;206m|[0m   040e                	slli	s0,s0,0x3
    80002788:	[38;5;149m|[0m                 [38;5;206m|[0m   00898cb3          	add	s9,s3,s0
    8000278c:	[38;5;149m|[0m                 [38;5;206m|[0m   9426                	add	s0,s0,s1
    8000278e:	[38;5;149m|[0m        [38;5;216m/--[38;5;136m/-----[38;5;206m|[38;5;136m-[38;5;216mX[0m 00095f63          	bgez	s2,800027ac <__call_exitprocs+0x58>
    80002792:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m     [38;5;206m\[38;5;206m-[38;5;206m>[0m 60e6                	ld	ra,88(sp)
    80002794:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6446                	ld	s0,80(sp)
    80002796:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         64a6                	ld	s1,72(sp)
    80002798:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6906                	ld	s2,64(sp)
    8000279a:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         79e2                	ld	s3,56(sp)
    8000279c:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         7a42                	ld	s4,48(sp)
    8000279e:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         7aa2                	ld	s5,40(sp)
    800027a0:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         7b02                	ld	s6,32(sp)
    800027a2:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6be2                	ld	s7,24(sp)
    800027a4:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6c42                	ld	s8,16(sp)
    800027a6:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6ca2                	ld	s9,8(sp)
    800027a8:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         6125                	addi	sp,sp,96
    800027aa:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m|[0m         8082                	ret
    800027ac:	[38;5;149m|[0m        [38;5;216m|[0m  [38;5;136m\--[38;5;139m/----[38;5;136mX[0m 000a0c63          	beqz	s4,800027c4 <__call_exitprocs+0x70>
    800027b0:	[38;5;149m|[0m        [38;5;216m|[0m     [38;5;139m|[0m  [38;5;125m/--[0m 00099663          	bnez	s3,800027bc <__call_exitprocs+0x68>
    800027b4:	[38;5;149m|[0m  [38;5;172m/-----[38;5;216m|[38;5;172m-----[38;5;139m|[38;5;172m--[38;5;125m|[38;5;172m->[0m 397d                	addiw	s2,s2,-1
    800027b6:	[38;5;149m|[0m  [38;5;172m|[0m     [38;5;216m|[0m     [38;5;139m|[0m  [38;5;125m|[0m   1ce1                	addi	s9,s9,-8
    800027b8:	[38;5;149m|[0m  [38;5;172m|[0m     [38;5;216m|[0m     [38;5;139m|[0m  [38;5;125m|[0m   1461                	addi	s0,s0,-8
    800027ba:	[38;5;149m|[0m  [38;5;172m|[0m     [38;5;216m\-----[38;5;139m|[38;5;216m--[38;5;125m|[38;5;216m--[0m bfd1                	j	8000278e <__call_exitprocs+0x3a>
    800027bc:	[38;5;149m|[0m  [38;5;172m|[0m           [38;5;139m|[0m  [38;5;125m\->[0m 0f8cb783          	ld	a5,248(s9)
    800027c0:	[38;5;149m|[0m  [38;5;172m+-----------[38;5;139m|[38;5;172m-----[0m ff479ae3          	bne	a5,s4,800027b4 <__call_exitprocs+0x60>
    800027c4:	[38;5;149m|[0m  [38;5;172m|[0m           [38;5;139m\---->[0m 449c                	lw	a5,8(s1)
    800027c6:	[38;5;149m|[0m  [38;5;172m|[0m                  6418                	ld	a4,8(s0)
    800027c8:	[38;5;149m|[0m  [38;5;172m|[0m                  37fd                	addiw	a5,a5,-1
    800027ca:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m/[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[0m 03279963          	bne	a5,s2,800027fc <__call_exitprocs+0xa8>
    800027ce:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m               0124a423          	sw	s2,8(s1)
    800027d2:	[38;5;149m|[0m  [38;5;172m+--[38;5;136m|[38;5;172m-----[38;5;133m/-------[38;5;172mX[0m d36d                	beqz	a4,800027b4 <__call_exitprocs+0x60>
    800027d4:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m         0084ac03          	lw	s8,8(s1)
    800027d8:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m     [38;5;152m/--[0m 00098963          	beqz	s3,800027ea <__call_exitprocs+0x96>
    800027dc:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m     [38;5;152m|[0m   2009a783          	lw	a5,512(s3)
    800027e0:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m     [38;5;152m|[0m   012b96bb          	sllw	a3,s7,s2
    800027e4:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m     [38;5;152m|[0m   8ff5                	and	a5,a5,a3
    800027e6:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m     [38;5;152m|[0m   2781                	sext.w	a5,a5
    800027e8:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m  [38;5;136m/[38;5;136m-[38;5;136m-[38;5;152m|[38;5;136m-[38;5;136m-[0m ef89                	bnez	a5,80002802 <__call_exitprocs+0xae>
    800027ea:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m     [38;5;133m|[0m  [38;5;136m|[0m  [38;5;152m\->[0m 9702                	jalr	a4
    800027ec:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m  [38;5;179m/[38;5;179m-[38;5;179m-[38;5;133m|[38;5;179m-[38;5;179m-[38;5;136m|[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m>[0m 4498                	lw	a4,8(s1)
    800027ee:	[38;5;149m|[0m  [38;5;172m|[0m  [38;5;136m|[0m  [38;5;179m|[0m  [38;5;133m|[0m  [38;5;136m|[0m      000b3783          	ld	a5,0(s6)
    800027f2:	[38;5;149m+--[38;5;172m|[38;5;149m--[38;5;136m|[38;5;149m--[38;5;179m|[38;5;149m--[38;5;133m|[38;5;149m--[38;5;136m|[38;5;149m-----[0m f98712e3          	bne	a4,s8,80002776 <__call_exitprocs+0x22>
    800027f6:	[38;5;149m|[0m  [38;5;172m\--[38;5;136m|[38;5;172m--[38;5;179m|[38;5;172m--[38;5;133m|[38;5;172m--[38;5;136m|[38;5;172m-----[0m faf48fe3          	beq	s1,a5,800027b4 <__call_exitprocs+0x60>
    800027fa:	[38;5;149m\-----[38;5;136m|[38;5;149m--[38;5;179m|[38;5;149m--[38;5;133m|[38;5;149m--[38;5;136m|[38;5;149m-----[0m bfb5                	j	80002776 <__call_exitprocs+0x22>
    800027fc:	      [38;5;136m\[38;5;136m-[38;5;136m-[38;5;179m|[38;5;136m-[38;5;136m-[38;5;133m|[38;5;136m-[38;5;136m-[38;5;136m|[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m>[0m 00043423          	sd	zero,8(s0)
    80002800:	         [38;5;179m|[0m  [38;5;133m\--[38;5;136m|[38;5;133m-----[0m bfc9                	j	800027d2 <__call_exitprocs+0x7e>
    80002802:	         [38;5;179m|[0m     [38;5;136m\[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m-[38;5;136m>[0m 2049a783          	lw	a5,516(s3)
    80002806:	         [38;5;179m|[0m            ff8cb583          	ld	a1,-8(s9)
    8000280a:	         [38;5;179m|[0m            8ff5                	and	a5,a5,a3
    8000280c:	         [38;5;179m|[0m            2781                	sext.w	a5,a5
    8000280e:	         [38;5;179m|[0m        [38;5;231m/--[0m e781                	bnez	a5,80002816 <__call_exitprocs+0xc2>
    80002810:	         [38;5;179m|[0m        [38;5;231m|[0m   8556                	mv	a0,s5
    80002812:	         [38;5;179m|[0m        [38;5;231m|[0m   9702                	jalr	a4
    80002814:	         [38;5;179m+[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;231m|[38;5;179m-[38;5;179m-[0m bfe1                	j	800027ec <__call_exitprocs+0x98>
    80002816:	         [38;5;179m|[0m        [38;5;231m\->[0m 852e                	mv	a0,a1
    80002818:	         [38;5;179m|[0m            9702                	jalr	a4
    8000281a:	         [38;5;179m\[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[38;5;179m-[0m bfc9                	j	800027ec <__call_exitprocs+0x98>

Disassembly of section .tbss:

000000008000281c <__tbss_start>:
    8000281c:	0000                	unimp
	...

Disassembly of section .rodata:

0000000080002820 <__sf_fake_stderr-0x490>:
    80002820:	6c25                	lui	s8,0x9
    80002822:	2075                	.2byte	0x2075
    80002824:	7525                	lui	a0,0xfffe9
    80002826:	2520                	fld	fs0,72(a0)
    80002828:	756c                	ld	a1,232(a0)
    8000282a:	2520                	fld	fs0,72(a0)
    8000282c:	756c                	ld	a1,232(a0)
    8000282e:	2520                	fld	fs0,72(a0)
    80002830:	756c                	ld	a1,232(a0)
    80002832:	2520                	fld	fs0,72(a0)
    80002834:	756c                	ld	a1,232(a0)
    80002836:	2520                	fld	fs0,72(a0)
    80002838:	756c                	ld	a1,232(a0)
    8000283a:	2520                	fld	fs0,72(a0)
    8000283c:	756c                	ld	a1,232(a0)
    8000283e:	2520                	fld	fs0,72(a0)
    80002840:	756c                	ld	a1,232(a0)
    80002842:	2520                	fld	fs0,72(a0)
    80002844:	756c                	ld	a1,232(a0)
    80002846:	2520                	fld	fs0,72(a0)
    80002848:	756c                	ld	a1,232(a0)
    8000284a:	2520                	fld	fs0,72(a0)
    8000284c:	756c                	ld	a1,232(a0)
    8000284e:	000a                	c.slli	zero,0x2
    80002850:	3172                	fld	ft2,312(sp)
    80002852:	203a                	fld	ft0,392(sp)
    80002854:	6425                	lui	s0,0x9
    80002856:	000a                	c.slli	zero,0x2
    80002858:	203a3163          	.4byte	0x203a3163
    8000285c:	6425                	lui	s0,0x9
    8000285e:	000a                	c.slli	zero,0x2
    80002860:	3072                	fld	ft0,312(sp)
    80002862:	203a                	fld	ft0,392(sp)
    80002864:	6425                	lui	s0,0x9
    80002866:	000a                	c.slli	zero,0x2
    80002868:	203a3063          	.4byte	0x203a3063
    8000286c:	6425                	lui	s0,0x9
    8000286e:	000a                	c.slli	zero,0x2
    80002870:	0100                	addi	s0,sp,128
    80002872:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002874:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002876:	0302                	c.slli64	t1
    80002878:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    8000287a:	0302                	c.slli64	t1
    8000287c:	0302                	c.slli64	t1
    8000287e:	02010403          	lb	s0,32(sp)
    80002882:	0302                	c.slli64	t1
    80002884:	0302                	c.slli64	t1
    80002886:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    8000288a:	04030403          	lb	s0,64(t1)
    8000288e:	0504                	addi	s1,sp,640
    80002890:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002892:	0302                	c.slli64	t1
    80002894:	0302                	c.slli64	t1
    80002896:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    8000289a:	04030403          	lb	s0,64(t1)
    8000289e:	0504                	addi	s1,sp,640
    800028a0:	0302                	c.slli64	t1
    800028a2:	04030403          	lb	s0,64(t1)
    800028a6:	0504                	addi	s1,sp,640
    800028a8:	05040403          	lb	s0,80(s0) # 9050 <__stack_size+0x1050>
    800028ac:	0504                	addi	s1,sp,640
    800028ae:	0605                	addi	a2,a2,1
    800028b0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    800028b2:	0302                	c.slli64	t1
    800028b4:	0302                	c.slli64	t1
    800028b6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    800028ba:	04030403          	lb	s0,64(t1)
    800028be:	0504                	addi	s1,sp,640
    800028c0:	0302                	c.slli64	t1
    800028c2:	04030403          	lb	s0,64(t1)
    800028c6:	0504                	addi	s1,sp,640
    800028c8:	05040403          	lb	s0,80(s0)
    800028cc:	0504                	addi	s1,sp,640
    800028ce:	0605                	addi	a2,a2,1
    800028d0:	0302                	c.slli64	t1
    800028d2:	04030403          	lb	s0,64(t1)
    800028d6:	0504                	addi	s1,sp,640
    800028d8:	05040403          	lb	s0,80(s0)
    800028dc:	0504                	addi	s1,sp,640
    800028de:	0605                	addi	a2,a2,1
    800028e0:	05040403          	lb	s0,80(s0)
    800028e4:	0504                	addi	s1,sp,640
    800028e6:	0605                	addi	a2,a2,1
    800028e8:	0504                	addi	s1,sp,640
    800028ea:	0605                	addi	a2,a2,1
    800028ec:	0605                	addi	a2,a2,1
    800028ee:	0706                	slli	a4,a4,0x1
    800028f0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    800028f2:	0302                	c.slli64	t1
    800028f4:	0302                	c.slli64	t1
    800028f6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    800028fa:	04030403          	lb	s0,64(t1)
    800028fe:	0504                	addi	s1,sp,640
    80002900:	0302                	c.slli64	t1
    80002902:	04030403          	lb	s0,64(t1)
    80002906:	0504                	addi	s1,sp,640
    80002908:	05040403          	lb	s0,80(s0)
    8000290c:	0504                	addi	s1,sp,640
    8000290e:	0605                	addi	a2,a2,1
    80002910:	0302                	c.slli64	t1
    80002912:	04030403          	lb	s0,64(t1)
    80002916:	0504                	addi	s1,sp,640
    80002918:	05040403          	lb	s0,80(s0)
    8000291c:	0504                	addi	s1,sp,640
    8000291e:	0605                	addi	a2,a2,1
    80002920:	05040403          	lb	s0,80(s0)
    80002924:	0504                	addi	s1,sp,640
    80002926:	0605                	addi	a2,a2,1
    80002928:	0504                	addi	s1,sp,640
    8000292a:	0605                	addi	a2,a2,1
    8000292c:	0605                	addi	a2,a2,1
    8000292e:	0706                	slli	a4,a4,0x1
    80002930:	0302                	c.slli64	t1
    80002932:	04030403          	lb	s0,64(t1)
    80002936:	0504                	addi	s1,sp,640
    80002938:	05040403          	lb	s0,80(s0)
    8000293c:	0504                	addi	s1,sp,640
    8000293e:	0605                	addi	a2,a2,1
    80002940:	05040403          	lb	s0,80(s0)
    80002944:	0504                	addi	s1,sp,640
    80002946:	0605                	addi	a2,a2,1
    80002948:	0504                	addi	s1,sp,640
    8000294a:	0605                	addi	a2,a2,1
    8000294c:	0605                	addi	a2,a2,1
    8000294e:	0706                	slli	a4,a4,0x1
    80002950:	05040403          	lb	s0,80(s0)
    80002954:	0504                	addi	s1,sp,640
    80002956:	0605                	addi	a2,a2,1
    80002958:	0504                	addi	s1,sp,640
    8000295a:	0605                	addi	a2,a2,1
    8000295c:	0605                	addi	a2,a2,1
    8000295e:	0706                	slli	a4,a4,0x1
    80002960:	0504                	addi	s1,sp,640
    80002962:	0605                	addi	a2,a2,1
    80002964:	0605                	addi	a2,a2,1
    80002966:	0706                	slli	a4,a4,0x1
    80002968:	0605                	addi	a2,a2,1
    8000296a:	0706                	slli	a4,a4,0x1
    8000296c:	0706                	slli	a4,a4,0x1
    8000296e:	de1a0807          	.4byte	0xde1a0807
    80002972:	ffff                	.2byte	0xffff
    80002974:	ddcc                	sw	a1,60(a1)
    80002976:	ffff                	.2byte	0xffff
    80002978:	ddbc                	sw	a5,120(a1)
    8000297a:	ffff                	.2byte	0xffff
    8000297c:	ddac                	sw	a1,120(a1)
    8000297e:	ffff                	.2byte	0xffff
    80002980:	dd9c                	sw	a5,56(a1)
    80002982:	ffff                	.2byte	0xffff
    80002984:	dd8c                	sw	a1,56(a1)
    80002986:	ffff                	.2byte	0xffff
    80002988:	dd3e                	sw	a5,184(sp)
    8000298a:	ffff                	.2byte	0xffff
    8000298c:	ddfc                	sw	a5,124(a1)
    8000298e:	ffff                	.2byte	0xffff
    80002990:	0100                	addi	s0,sp,128
    80002992:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002994:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002996:	0302                	c.slli64	t1
    80002998:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    8000299a:	0302                	c.slli64	t1
    8000299c:	0302                	c.slli64	t1
    8000299e:	02010403          	lb	s0,32(sp)
    800029a2:	0302                	c.slli64	t1
    800029a4:	0302                	c.slli64	t1
    800029a6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    800029aa:	04030403          	lb	s0,64(t1)
    800029ae:	0504                	addi	s1,sp,640
    800029b0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    800029b2:	0302                	c.slli64	t1
    800029b4:	0302                	c.slli64	t1
    800029b6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    800029ba:	04030403          	lb	s0,64(t1)
    800029be:	0504                	addi	s1,sp,640
    800029c0:	0302                	c.slli64	t1
    800029c2:	04030403          	lb	s0,64(t1)
    800029c6:	0504                	addi	s1,sp,640
    800029c8:	05040403          	lb	s0,80(s0)
    800029cc:	0504                	addi	s1,sp,640
    800029ce:	0605                	addi	a2,a2,1
    800029d0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    800029d2:	0302                	c.slli64	t1
    800029d4:	0302                	c.slli64	t1
    800029d6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    800029da:	04030403          	lb	s0,64(t1)
    800029de:	0504                	addi	s1,sp,640
    800029e0:	0302                	c.slli64	t1
    800029e2:	04030403          	lb	s0,64(t1)
    800029e6:	0504                	addi	s1,sp,640
    800029e8:	05040403          	lb	s0,80(s0)
    800029ec:	0504                	addi	s1,sp,640
    800029ee:	0605                	addi	a2,a2,1
    800029f0:	0302                	c.slli64	t1
    800029f2:	04030403          	lb	s0,64(t1)
    800029f6:	0504                	addi	s1,sp,640
    800029f8:	05040403          	lb	s0,80(s0)
    800029fc:	0504                	addi	s1,sp,640
    800029fe:	0605                	addi	a2,a2,1
    80002a00:	05040403          	lb	s0,80(s0)
    80002a04:	0504                	addi	s1,sp,640
    80002a06:	0605                	addi	a2,a2,1
    80002a08:	0504                	addi	s1,sp,640
    80002a0a:	0605                	addi	a2,a2,1
    80002a0c:	0605                	addi	a2,a2,1
    80002a0e:	0706                	slli	a4,a4,0x1
    80002a10:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002a12:	0302                	c.slli64	t1
    80002a14:	0302                	c.slli64	t1
    80002a16:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002a1a:	04030403          	lb	s0,64(t1)
    80002a1e:	0504                	addi	s1,sp,640
    80002a20:	0302                	c.slli64	t1
    80002a22:	04030403          	lb	s0,64(t1)
    80002a26:	0504                	addi	s1,sp,640
    80002a28:	05040403          	lb	s0,80(s0)
    80002a2c:	0504                	addi	s1,sp,640
    80002a2e:	0605                	addi	a2,a2,1
    80002a30:	0302                	c.slli64	t1
    80002a32:	04030403          	lb	s0,64(t1)
    80002a36:	0504                	addi	s1,sp,640
    80002a38:	05040403          	lb	s0,80(s0)
    80002a3c:	0504                	addi	s1,sp,640
    80002a3e:	0605                	addi	a2,a2,1
    80002a40:	05040403          	lb	s0,80(s0)
    80002a44:	0504                	addi	s1,sp,640
    80002a46:	0605                	addi	a2,a2,1
    80002a48:	0504                	addi	s1,sp,640
    80002a4a:	0605                	addi	a2,a2,1
    80002a4c:	0605                	addi	a2,a2,1
    80002a4e:	0706                	slli	a4,a4,0x1
    80002a50:	0302                	c.slli64	t1
    80002a52:	04030403          	lb	s0,64(t1)
    80002a56:	0504                	addi	s1,sp,640
    80002a58:	05040403          	lb	s0,80(s0)
    80002a5c:	0504                	addi	s1,sp,640
    80002a5e:	0605                	addi	a2,a2,1
    80002a60:	05040403          	lb	s0,80(s0)
    80002a64:	0504                	addi	s1,sp,640
    80002a66:	0605                	addi	a2,a2,1
    80002a68:	0504                	addi	s1,sp,640
    80002a6a:	0605                	addi	a2,a2,1
    80002a6c:	0605                	addi	a2,a2,1
    80002a6e:	0706                	slli	a4,a4,0x1
    80002a70:	05040403          	lb	s0,80(s0)
    80002a74:	0504                	addi	s1,sp,640
    80002a76:	0605                	addi	a2,a2,1
    80002a78:	0504                	addi	s1,sp,640
    80002a7a:	0605                	addi	a2,a2,1
    80002a7c:	0605                	addi	a2,a2,1
    80002a7e:	0706                	slli	a4,a4,0x1
    80002a80:	0504                	addi	s1,sp,640
    80002a82:	0605                	addi	a2,a2,1
    80002a84:	0605                	addi	a2,a2,1
    80002a86:	0706                	slli	a4,a4,0x1
    80002a88:	0605                	addi	a2,a2,1
    80002a8a:	0706                	slli	a4,a4,0x1
    80002a8c:	0706                	slli	a4,a4,0x1
    80002a8e:	01000807          	.4byte	0x1000807
    80002a92:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002a94:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002a96:	0302                	c.slli64	t1
    80002a98:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002a9a:	0302                	c.slli64	t1
    80002a9c:	0302                	c.slli64	t1
    80002a9e:	02010403          	lb	s0,32(sp)
    80002aa2:	0302                	c.slli64	t1
    80002aa4:	0302                	c.slli64	t1
    80002aa6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002aaa:	04030403          	lb	s0,64(t1)
    80002aae:	0504                	addi	s1,sp,640
    80002ab0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002ab2:	0302                	c.slli64	t1
    80002ab4:	0302                	c.slli64	t1
    80002ab6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002aba:	04030403          	lb	s0,64(t1)
    80002abe:	0504                	addi	s1,sp,640
    80002ac0:	0302                	c.slli64	t1
    80002ac2:	04030403          	lb	s0,64(t1)
    80002ac6:	0504                	addi	s1,sp,640
    80002ac8:	05040403          	lb	s0,80(s0)
    80002acc:	0504                	addi	s1,sp,640
    80002ace:	0605                	addi	a2,a2,1
    80002ad0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002ad2:	0302                	c.slli64	t1
    80002ad4:	0302                	c.slli64	t1
    80002ad6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002ada:	04030403          	lb	s0,64(t1)
    80002ade:	0504                	addi	s1,sp,640
    80002ae0:	0302                	c.slli64	t1
    80002ae2:	04030403          	lb	s0,64(t1)
    80002ae6:	0504                	addi	s1,sp,640
    80002ae8:	05040403          	lb	s0,80(s0)
    80002aec:	0504                	addi	s1,sp,640
    80002aee:	0605                	addi	a2,a2,1
    80002af0:	0302                	c.slli64	t1
    80002af2:	04030403          	lb	s0,64(t1)
    80002af6:	0504                	addi	s1,sp,640
    80002af8:	05040403          	lb	s0,80(s0)
    80002afc:	0504                	addi	s1,sp,640
    80002afe:	0605                	addi	a2,a2,1
    80002b00:	05040403          	lb	s0,80(s0)
    80002b04:	0504                	addi	s1,sp,640
    80002b06:	0605                	addi	a2,a2,1
    80002b08:	0504                	addi	s1,sp,640
    80002b0a:	0605                	addi	a2,a2,1
    80002b0c:	0605                	addi	a2,a2,1
    80002b0e:	0706                	slli	a4,a4,0x1
    80002b10:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002b12:	0302                	c.slli64	t1
    80002b14:	0302                	c.slli64	t1
    80002b16:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002b1a:	04030403          	lb	s0,64(t1)
    80002b1e:	0504                	addi	s1,sp,640
    80002b20:	0302                	c.slli64	t1
    80002b22:	04030403          	lb	s0,64(t1)
    80002b26:	0504                	addi	s1,sp,640
    80002b28:	05040403          	lb	s0,80(s0)
    80002b2c:	0504                	addi	s1,sp,640
    80002b2e:	0605                	addi	a2,a2,1
    80002b30:	0302                	c.slli64	t1
    80002b32:	04030403          	lb	s0,64(t1)
    80002b36:	0504                	addi	s1,sp,640
    80002b38:	05040403          	lb	s0,80(s0)
    80002b3c:	0504                	addi	s1,sp,640
    80002b3e:	0605                	addi	a2,a2,1
    80002b40:	05040403          	lb	s0,80(s0)
    80002b44:	0504                	addi	s1,sp,640
    80002b46:	0605                	addi	a2,a2,1
    80002b48:	0504                	addi	s1,sp,640
    80002b4a:	0605                	addi	a2,a2,1
    80002b4c:	0605                	addi	a2,a2,1
    80002b4e:	0706                	slli	a4,a4,0x1
    80002b50:	0302                	c.slli64	t1
    80002b52:	04030403          	lb	s0,64(t1)
    80002b56:	0504                	addi	s1,sp,640
    80002b58:	05040403          	lb	s0,80(s0)
    80002b5c:	0504                	addi	s1,sp,640
    80002b5e:	0605                	addi	a2,a2,1
    80002b60:	05040403          	lb	s0,80(s0)
    80002b64:	0504                	addi	s1,sp,640
    80002b66:	0605                	addi	a2,a2,1
    80002b68:	0504                	addi	s1,sp,640
    80002b6a:	0605                	addi	a2,a2,1
    80002b6c:	0605                	addi	a2,a2,1
    80002b6e:	0706                	slli	a4,a4,0x1
    80002b70:	05040403          	lb	s0,80(s0)
    80002b74:	0504                	addi	s1,sp,640
    80002b76:	0605                	addi	a2,a2,1
    80002b78:	0504                	addi	s1,sp,640
    80002b7a:	0605                	addi	a2,a2,1
    80002b7c:	0605                	addi	a2,a2,1
    80002b7e:	0706                	slli	a4,a4,0x1
    80002b80:	0504                	addi	s1,sp,640
    80002b82:	0605                	addi	a2,a2,1
    80002b84:	0605                	addi	a2,a2,1
    80002b86:	0706                	slli	a4,a4,0x1
    80002b88:	0605                	addi	a2,a2,1
    80002b8a:	0706                	slli	a4,a4,0x1
    80002b8c:	0706                	slli	a4,a4,0x1
    80002b8e:	e0de0807          	.4byte	0xe0de0807
    80002b92:	ffff                	.2byte	0xffff
    80002b94:	e090                	sd	a2,0(s1)
    80002b96:	ffff                	.2byte	0xffff
    80002b98:	e080                	sd	s0,0(s1)
    80002b9a:	ffff                	.2byte	0xffff
    80002b9c:	e070                	sd	a2,192(s0)
    80002b9e:	ffff                	.2byte	0xffff
    80002ba0:	e060                	sd	s0,192(s0)
    80002ba2:	ffff                	.2byte	0xffff
    80002ba4:	e050                	sd	a2,128(s0)
    80002ba6:	ffff                	.2byte	0xffff
    80002ba8:	e002                	sd	zero,0(sp)
    80002baa:	ffff                	.2byte	0xffff
    80002bac:	e0c0                	sd	s0,128(s1)
    80002bae:	ffff                	.2byte	0xffff
    80002bb0:	0100                	addi	s0,sp,128
    80002bb2:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002bb4:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002bb6:	0302                	c.slli64	t1
    80002bb8:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002bba:	0302                	c.slli64	t1
    80002bbc:	0302                	c.slli64	t1
    80002bbe:	02010403          	lb	s0,32(sp)
    80002bc2:	0302                	c.slli64	t1
    80002bc4:	0302                	c.slli64	t1
    80002bc6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002bca:	04030403          	lb	s0,64(t1)
    80002bce:	0504                	addi	s1,sp,640
    80002bd0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002bd2:	0302                	c.slli64	t1
    80002bd4:	0302                	c.slli64	t1
    80002bd6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002bda:	04030403          	lb	s0,64(t1)
    80002bde:	0504                	addi	s1,sp,640
    80002be0:	0302                	c.slli64	t1
    80002be2:	04030403          	lb	s0,64(t1)
    80002be6:	0504                	addi	s1,sp,640
    80002be8:	05040403          	lb	s0,80(s0)
    80002bec:	0504                	addi	s1,sp,640
    80002bee:	0605                	addi	a2,a2,1
    80002bf0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002bf2:	0302                	c.slli64	t1
    80002bf4:	0302                	c.slli64	t1
    80002bf6:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002bfa:	04030403          	lb	s0,64(t1)
    80002bfe:	0504                	addi	s1,sp,640
    80002c00:	0302                	c.slli64	t1
    80002c02:	04030403          	lb	s0,64(t1)
    80002c06:	0504                	addi	s1,sp,640
    80002c08:	05040403          	lb	s0,80(s0)
    80002c0c:	0504                	addi	s1,sp,640
    80002c0e:	0605                	addi	a2,a2,1
    80002c10:	0302                	c.slli64	t1
    80002c12:	04030403          	lb	s0,64(t1)
    80002c16:	0504                	addi	s1,sp,640
    80002c18:	05040403          	lb	s0,80(s0)
    80002c1c:	0504                	addi	s1,sp,640
    80002c1e:	0605                	addi	a2,a2,1
    80002c20:	05040403          	lb	s0,80(s0)
    80002c24:	0504                	addi	s1,sp,640
    80002c26:	0605                	addi	a2,a2,1
    80002c28:	0504                	addi	s1,sp,640
    80002c2a:	0605                	addi	a2,a2,1
    80002c2c:	0605                	addi	a2,a2,1
    80002c2e:	0706                	slli	a4,a4,0x1
    80002c30:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
    80002c32:	0302                	c.slli64	t1
    80002c34:	0302                	c.slli64	t1
    80002c36:	03020403          	lb	s0,48(tp) # 30 <__stack_align+0x20>
    80002c3a:	04030403          	lb	s0,64(t1)
    80002c3e:	0504                	addi	s1,sp,640
    80002c40:	0302                	c.slli64	t1
    80002c42:	04030403          	lb	s0,64(t1)
    80002c46:	0504                	addi	s1,sp,640
    80002c48:	05040403          	lb	s0,80(s0)
    80002c4c:	0504                	addi	s1,sp,640
    80002c4e:	0605                	addi	a2,a2,1
    80002c50:	0302                	c.slli64	t1
    80002c52:	04030403          	lb	s0,64(t1)
    80002c56:	0504                	addi	s1,sp,640
    80002c58:	05040403          	lb	s0,80(s0)
    80002c5c:	0504                	addi	s1,sp,640
    80002c5e:	0605                	addi	a2,a2,1
    80002c60:	05040403          	lb	s0,80(s0)
    80002c64:	0504                	addi	s1,sp,640
    80002c66:	0605                	addi	a2,a2,1
    80002c68:	0504                	addi	s1,sp,640
    80002c6a:	0605                	addi	a2,a2,1
    80002c6c:	0605                	addi	a2,a2,1
    80002c6e:	0706                	slli	a4,a4,0x1
    80002c70:	0302                	c.slli64	t1
    80002c72:	04030403          	lb	s0,64(t1)
    80002c76:	0504                	addi	s1,sp,640
    80002c78:	05040403          	lb	s0,80(s0)
    80002c7c:	0504                	addi	s1,sp,640
    80002c7e:	0605                	addi	a2,a2,1
    80002c80:	05040403          	lb	s0,80(s0)
    80002c84:	0504                	addi	s1,sp,640
    80002c86:	0605                	addi	a2,a2,1
    80002c88:	0504                	addi	s1,sp,640
    80002c8a:	0605                	addi	a2,a2,1
    80002c8c:	0605                	addi	a2,a2,1
    80002c8e:	0706                	slli	a4,a4,0x1
    80002c90:	05040403          	lb	s0,80(s0)
    80002c94:	0504                	addi	s1,sp,640
    80002c96:	0605                	addi	a2,a2,1
    80002c98:	0504                	addi	s1,sp,640
    80002c9a:	0605                	addi	a2,a2,1
    80002c9c:	0605                	addi	a2,a2,1
    80002c9e:	0706                	slli	a4,a4,0x1
    80002ca0:	0504                	addi	s1,sp,640
    80002ca2:	0605                	addi	a2,a2,1
    80002ca4:	0605                	addi	a2,a2,1
    80002ca6:	0706                	slli	a4,a4,0x1
    80002ca8:	0605                	addi	a2,a2,1
    80002caa:	0706                	slli	a4,a4,0x1
    80002cac:	0706                	slli	a4,a4,0x1
    80002cae:	          	.4byte	0x807

0000000080002cb0 <__sf_fake_stderr>:
	...

0000000080002ce8 <__sf_fake_stdout>:
	...

0000000080002d20 <__sf_fake_stdin>:
	...
    80002d58:	2b302d23          	sw	s3,698(zero) # 2ba <__stack_align+0x2aa>
    80002d5c:	0020                	addi	s0,sp,8
    80002d5e:	0000                	unimp
    80002d60:	6c68                	ld	a0,216(s0)
    80002d62:	004c                	addi	a1,sp,4
    80002d64:	0000                	unimp
    80002d66:	0000                	unimp
    80002d68:	6665                	lui	a2,0x19
    80002d6a:	47464567          	.4byte	0x47464567
    80002d6e:	0000                	unimp
    80002d70:	3130                	fld	fa2,96(a0)
    80002d72:	3332                	fld	ft6,296(sp)
    80002d74:	3534                	fld	fa3,104(a0)
    80002d76:	3736                	fld	fa4,360(sp)
    80002d78:	3938                	fld	fa4,112(a0)
    80002d7a:	4241                	li	tp,16
    80002d7c:	46454443          	.4byte	0x46454443
	...
    80002d88:	3130                	fld	fa2,96(a0)
    80002d8a:	3332                	fld	ft6,296(sp)
    80002d8c:	3534                	fld	fa3,104(a0)
    80002d8e:	3736                	fld	fa4,360(sp)
    80002d90:	3938                	fld	fa4,112(a0)
    80002d92:	6261                	lui	tp,0x18
    80002d94:	66656463          	bltu	a0,t1,800033fc <_global_atexit0+0x44>
    80002d98:	0000                	unimp
    80002d9a:	0000                	unimp
    80002d9c:	f362                	sd	s8,416(sp)
    80002d9e:	ffff                	.2byte	0xffff
    80002da0:	f378                	sd	a4,224(a4)
    80002da2:	ffff                	.2byte	0xffff
    80002da4:	f338                	sd	a4,96(a4)
    80002da6:	ffff                	.2byte	0xffff
    80002da8:	f338                	sd	a4,96(a4)
    80002daa:	ffff                	.2byte	0xffff
    80002dac:	f338                	sd	a4,96(a4)
    80002dae:	ffff                	.2byte	0xffff
    80002db0:	f338                	sd	a4,96(a4)
    80002db2:	ffff                	.2byte	0xffff
    80002db4:	f378                	sd	a4,224(a4)
    80002db6:	ffff                	.2byte	0xffff
    80002db8:	f338                	sd	a4,96(a4)
    80002dba:	ffff                	.2byte	0xffff
    80002dbc:	f338                	sd	a4,96(a4)
    80002dbe:	ffff                	.2byte	0xffff
    80002dc0:	f338                	sd	a4,96(a4)
    80002dc2:	ffff                	.2byte	0xffff
    80002dc4:	f338                	sd	a4,96(a4)
    80002dc6:	ffff                	.2byte	0xffff
    80002dc8:	f4ee                	sd	s11,104(sp)
    80002dca:	ffff                	.2byte	0xffff
    80002dcc:	f3e4                	sd	s1,224(a5)
    80002dce:	ffff                	.2byte	0xffff
    80002dd0:	f480                	sd	s0,40(s1)
    80002dd2:	ffff                	.2byte	0xffff
    80002dd4:	f338                	sd	a4,96(a4)
    80002dd6:	ffff                	.2byte	0xffff
    80002dd8:	f338                	sd	a4,96(a4)
    80002dda:	ffff                	.2byte	0xffff
    80002ddc:	f522                	sd	s0,168(sp)
    80002dde:	ffff                	.2byte	0xffff
    80002de0:	f338                	sd	a4,96(a4)
    80002de2:	ffff                	.2byte	0xffff
    80002de4:	f3e4                	sd	s1,224(a5)
    80002de6:	ffff                	.2byte	0xffff
    80002de8:	f338                	sd	a4,96(a4)
    80002dea:	ffff                	.2byte	0xffff
    80002dec:	f338                	sd	a4,96(a4)
    80002dee:	ffff                	.2byte	0xffff
    80002df0:	f488                	sd	a0,40(s1)
    80002df2:	ffff                	.2byte	0xffff
    80002df4:	0000                	unimp
	...

0000000080002df8 <argv>:
    80002df8:	2e08                	fld	fa0,24(a2)
    80002dfa:	8000                	.2byte	0x8000
	...

0000000080002e08 <name>:
    80002e08:	70696863          	bltu	s2,t1,80003518 <_end+0x48>
    80002e0c:	6179                	addi	sp,sp,464
    80002e0e:	6472                	ld	s0,280(sp)
	...

Disassembly of section .eh_frame:

0000000080002e18 <.eh_frame>:
    80002e18:	0010                	.2byte	0x10
    80002e1a:	0000                	unimp
    80002e1c:	0000                	unimp
    80002e1e:	0000                	unimp
    80002e20:	00527a03          	.4byte	0x527a03
    80002e24:	7c01                	lui	s8,0xfffe0
    80002e26:	0101                	addi	sp,sp,0
    80002e28:	00020d1b          	sext.w	s10,tp
    80002e2c:	0010                	.2byte	0x10
    80002e2e:	0000                	unimp
    80002e30:	0018                	.2byte	0x18
    80002e32:	0000                	unimp
    80002e34:	d1cc                	sw	a1,36(a1)
    80002e36:	ffff                	.2byte	0xffff
    80002e38:	0140                	addi	s0,sp,132
    80002e3a:	0000                	unimp
    80002e3c:	0000                	unimp
	...

Disassembly of section .htif:

0000000080002e40 <tohost>:
	...

0000000080002e48 <fromhost>:
	...

Disassembly of section .data.impure_data:

0000000080002e50 <impure_data>:
	...
    80002e58:	2d20                	fld	fs0,88(a0)
    80002e5a:	8000                	.2byte	0x8000
    80002e5c:	0000                	unimp
    80002e5e:	0000                	unimp
    80002e60:	2ce8                	fld	fa0,216(s1)
    80002e62:	8000                	.2byte	0x8000
    80002e64:	0000                	unimp
    80002e66:	0000                	unimp
    80002e68:	2cb0                	fld	fa2,88(s1)
    80002e6a:	8000                	.2byte	0x8000
	...

Disassembly of section .sdata:

0000000080002f00 <_impure_ptr>:
    80002f00:	2e50                	fld	fa2,152(a2)
    80002f02:	8000                	.2byte	0x8000
    80002f04:	0000                	unimp
	...

0000000080002f08 <curbrk>:
static char *curbrk = _end;
    80002f08:	34d0                	fld	fa2,168(s1)
    80002f0a:	8000                	.2byte	0x8000
    80002f0c:	0000                	unimp
	...

0000000080002f10 <environ>:
    80002f10:	2fa0                	fld	fs0,88(a5)
    80002f12:	8000                	.2byte	0x8000
    80002f14:	0000                	unimp
	...

0000000080002f18 <__atexit_dummy>:
    80002f18:	2754                	fld	fa3,136(a4)
    80002f1a:	8000                	.2byte	0x8000
    80002f1c:	0000                	unimp
	...

0000000080002f20 <_global_impure_ptr>:
    80002f20:	2e50                	fld	fa2,152(a2)
    80002f22:	8000                	.2byte	0x8000
    80002f24:	0000                	unimp
	...

Disassembly of section .bss:

0000000080002f28 <sense.0>:
    80002f28:	0000                	unimp
	...

0000000080002f2c <count.1>:
    80002f2c:	0000                	unimp
	...

0000000080002f30 <bitcount_iterations>:
	...

0000000080002f38 <bitcount_n>:
	...

0000000080002f40 <bitcount_seed>:
	...

0000000080002f48 <bitcount_res>:
	...

0000000080002f50 <bitcount_randseed>:
	...

0000000080002f58 <bitcount_iterations_t1>:
	...

0000000080002f60 <bitcount_n_t1>:
	...

0000000080002f68 <bitcount_seed_t1>:
	...

0000000080002f70 <bitcount_res_t1>:
	...

0000000080002f78 <bitcount_randseed_t1>:
	...

0000000080002f80 <__malloc_sbrk_start>:
	...

0000000080002f88 <__malloc_free_list>:
	...

0000000080002f90 <errno>:
	...

0000000080002f98 <htif_lock>:
	...

0000000080002fa0 <initial_env>:
	...

0000000080002fa8 <_global_atexit>:
	...

0000000080002fb0 <bitcount_bits>:
	...

00000000800030b0 <bitcount_bits>:
	...

00000000800031b0 <bitcount_bits_t1>:
	...

00000000800032b0 <bitcount_bits_t1>:
	...

00000000800033b0 <__boot_sync>:
	...

00000000800033b8 <_global_atexit0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	65653267          	.4byte	0x65653267
   a:	6535                	lui	a0,0xd
   c:	3334                	fld	fa3,96(a4)
   e:	3030                	fld	fa2,96(s0)
  10:	3831                	addiw	a6,a6,-20
  12:	2029                	.2byte	0x2029
  14:	3231                	addiw	tp,tp,-20 # 17fec <__stack_size+0xffec>
  16:	322e                	fld	ft4,232(sp)
  18:	302e                	fld	ft0,232(sp)
  1a:	4700                	lw	s0,8(a4)
  1c:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
  20:	4728                	lw	a0,72(a4)
  22:	554e                	lw	a0,240(sp)
  24:	2029                	.2byte	0x2029
  26:	3231                	addiw	tp,tp,-20 # ffffffffffffffec <__heap_end+0xffffffff7ffdbfec>
  28:	322e                	fld	ft4,232(sp)
  2a:	302e                	fld	ft0,232(sp)
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3841                	addiw	a6,a6,-16
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <__stack_align+0x4>
   c:	002e                	c.slli	zero,0xb
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	.2byte	0x7032
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <__heap_end+0xffffffff7ffbcffb>
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  26:	3266                	fld	ft4,120(sp)
  28:	3070                	fld	fa2,224(s0)
  2a:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  30:	30703263          	.4byte	0x30703263
  34:	0800                	addi	s0,sp,16
  36:	0a01                	addi	s4,s4,0
  38:	0b              	Address 0x0000000000000038 is out of bounds.


Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	00cd                	addi	ra,ra,19 # 800014e7 <_vfiprintf_r+0x28d>
       2:	0000                	unimp
       4:	0005                	c.nop	1
       6:	0801                	addi	a6,a6,0
       8:	0000                	unimp
       a:	0000                	unimp
       c:	5202                	lw	tp,32(sp)
       e:	0000                	unimp
      10:	1d00                	addi	s0,sp,688
      12:	002e                	c.slli	zero,0xb
      14:	0000                	unimp
      16:	0000                	unimp
      18:	0000                	unimp
      1a:	24c0                	fld	fs0,136(s1)
      1c:	8000                	.2byte	0x8000
      1e:	0000                	unimp
      20:	0000                	unimp
      22:	0014                	.2byte	0x14
	...
      2c:	0000                	unimp
      2e:	69050403          	lb	s0,1680(a0) # d690 <__stack_size+0x5690>
      32:	746e                	ld	s0,248(sp)
      34:	0100                	addi	s0,sp,128
      36:	0508                	addi	a0,sp,640
      38:	0005                	c.nop	1
      3a:	0000                	unimp
      3c:	0801                	addi	a6,a6,0
      3e:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
      42:	0100                	addi	s0,sp,128
      44:	0508                	addi	a0,sp,640
      46:	0000                	unimp
      48:	0000                	unimp
      4a:	1001                	c.nop	-32
      4c:	dd04                	sw	s1,56(a0)
      4e:	0000                	unimp
      50:	0100                	addi	s0,sp,128
      52:	0704                	addi	s1,sp,896
      54:	0039                	c.nop	14
      56:	0000                	unimp
      58:	0101                	addi	sp,sp,0
      5a:	2306                	fld	ft6,64(sp)
      5c:	0000                	unimp
      5e:	0100                	addi	s0,sp,128
      60:	0801                	addi	a6,a6,0
      62:	0021                	c.nop	8
      64:	0000                	unimp
      66:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
      68:	e905                	bnez	a0,98 <__stack_align+0x88>
      6a:	0000                	unimp
      6c:	0100                	addi	s0,sp,128
      6e:	0702                	c.slli64	a4
      70:	000e                	c.slli	zero,0x3
      72:	0000                	unimp
      74:	0101                	addi	sp,sp,0
      76:	2a08                	fld	fa0,16(a2)
      78:	0000                	unimp
      7a:	0100                	addi	s0,sp,128
      7c:	0708                	addi	a0,sp,896
      7e:	0000002f          	.4byte	0x2f
      82:	d504                	sw	s1,40(a0)
      84:	0000                	unimp
      86:	0200                	addi	s0,sp,256
      88:	008e0d0f          	.4byte	0x8e0d0f
      8c:	0000                	unimp
      8e:	0805                	addi	a6,a6,1
      90:	002e                	c.slli	zero,0xb
      92:	0000                	unimp
      94:	4606                	lw	a2,64(sp)
      96:	0000                	unimp
      98:	0100                	addi	s0,sp,128
      9a:	0504                	addi	s1,sp,640
      9c:	002e                	c.slli	zero,0xb
      9e:	0000                	unimp
      a0:	24c0                	fld	fs0,136(s1)
      a2:	8000                	.2byte	0x8000
      a4:	0000                	unimp
      a6:	0000                	unimp
      a8:	0014                	.2byte	0x14
      aa:	0000                	unimp
      ac:	0000                	unimp
      ae:	0000                	unimp
      b0:	9c01                	subw	s0,s0,s0
      b2:	00004d07          	.4byte	0x4d07
      b6:	0100                	addi	s0,sp,128
      b8:	1004                	addi	s1,sp,32
      ba:	002e                	c.slli	zero,0xb
      bc:	0000                	unimp
      be:	000c                	.2byte	0xc
      c0:	0000                	unimp
      c2:	c808                	sw	a0,16(s0)
      c4:	0024                	addi	s1,sp,8
      c6:	0080                	addi	s0,sp,64
      c8:	0000                	unimp
      ca:	8200                	.2byte	0x8200
      cc:	0000                	unimp
      ce:	0000                	unimp
      d0:	da00                	sw	s0,48(a2)
      d2:	0002                	c.slli64	zero
      d4:	0500                	addi	s0,sp,640
      d6:	0100                	addi	s0,sp,128
      d8:	7d08                	ld	a0,56(a0)
      da:	0000                	unimp
      dc:	0600                	addi	s0,sp,768
      de:	0052                	c.slli	zero,0x14
      e0:	0000                	unimp
      e2:	971d                	srai	a4,a4,0x27
      e4:	0000                	unimp
      e6:	0000                	unimp
      e8:	0000                	unimp
      ea:	d400                	sw	s0,40(s0)
      ec:	0024                	addi	s1,sp,8
      ee:	0080                	addi	s0,sp,64
      f0:	0000                	unimp
      f2:	1400                	addi	s0,sp,544
      f4:	0000                	unimp
      f6:	0000                	unimp
      f8:	0000                	unimp
      fa:	9200                	.2byte	0x9200
      fc:	0000                	unimp
      fe:	0700                	addi	s0,sp,896
     100:	0504                	addi	s1,sp,640
     102:	6e69                	lui	t3,0x1a
     104:	0074                	addi	a3,sp,12
     106:	05050803          	lb	a6,80(a0)
     10a:	0000                	unimp
     10c:	0300                	addi	s0,sp,384
     10e:	0708                	addi	a0,sp,896
     110:	0034                	addi	a3,sp,8
     112:	0000                	unimp
     114:	00050803          	lb	a6,0(a0)
     118:	0000                	unimp
     11a:	0300                	addi	s0,sp,384
     11c:	0410                	addi	a2,sp,512
     11e:	00dd                	addi	ra,ra,23
     120:	0000                	unimp
     122:	39070403          	lb	s0,912(a4)
     126:	0000                	unimp
     128:	0300                	addi	s0,sp,384
     12a:	0601                	addi	a2,a2,0 # 19000 <__stack_size+0x11000>
     12c:	00000023          	sb	zero,0(zero) # 0 <__boot_hart>
     130:	21080103          	lb	sp,528(a6)
     134:	0000                	unimp
     136:	0300                	addi	s0,sp,384
     138:	0502                	c.slli64	a0
     13a:	00e9                	addi	ra,ra,26
     13c:	0000                	unimp
     13e:	0e070203          	lb	tp,224(a4)
     142:	0000                	unimp
     144:	0100                	addi	s0,sp,128
     146:	0000016b          	.4byte	0x16b
     14a:	4f02                	lw	t5,0(sp)
     14c:	5119                	li	sp,-26
     14e:	0000                	unimp
     150:	0100                	addi	s0,sp,128
     152:	018a                	slli	gp,gp,0x2
     154:	0000                	unimp
     156:	350e1e03          	lh	t3,848(t3) # 1a350 <__stack_size+0x12350>
     15a:	0000                	unimp
     15c:	0100                	addi	s0,sp,128
     15e:	017e                	slli	sp,sp,0x1f
     160:	0000                	unimp
     162:	350e2203          	lw	tp,848(t3)
     166:	0000                	unimp
     168:	0100                	addi	s0,sp,128
     16a:	01ad                	addi	gp,gp,11 # 8000370b <__global_pointer$+0xb>
     16c:	0000                	unimp
     16e:	350e2e03          	lw	t3,848(t3)
     172:	0000                	unimp
     174:	0100                	addi	s0,sp,128
     176:	0138                	addi	a4,sp,136
     178:	0000                	unimp
     17a:	660f3803          	ld	a6,1632(t5)
     17e:	0000                	unimp
     180:	0100                	addi	s0,sp,128
     182:	000000f3          	.4byte	0xf3
     186:	6d183c03          	ld	s8,1745(a6)
     18a:	0000                	unimp
     18c:	0100                	addi	s0,sp,128
     18e:	01a4                	addi	s1,sp,200
     190:	0000                	unimp
     192:	6d183f03          	ld	t5,1745(a6)
     196:	0000                	unimp
     198:	0100                	addi	s0,sp,128
     19a:	01d4                	addi	a3,sp,196
     19c:	0000                	unimp
     19e:	6d184b03          	lbu	s6,1745(a6)
     1a2:	0000                	unimp
     1a4:	0100                	addi	s0,sp,128
     1a6:	000001cb          	fnmsub.s	ft3,ft0,ft0,ft0,rne
     1aa:	74145a03          	lhu	s4,1857(s0)
     1ae:	0000                	unimp
     1b0:	0100                	addi	s0,sp,128
     1b2:	01ac                	addi	a1,sp,200
     1b4:	0000                	unimp
     1b6:	98106603          	lwu	a2,-1663(zero) # fffffffffffff981 <__heap_end+0xffffffff7ffdb981>
     1ba:	0000                	unimp
     1bc:	0100                	addi	s0,sp,128
     1be:	0161                	addi	sp,sp,24
     1c0:	0000                	unimp
     1c2:	6d18d103          	lhu	sp,1745(a7)
     1c6:	0000                	unimp
     1c8:	0300                	addi	s0,sp,384
     1ca:	0801                	addi	a6,a6,0
     1cc:	002a                	c.slli	zero,0xa
     1ce:	0000                	unimp
     1d0:	2f070803          	lb	a6,752(a4)
     1d4:	0000                	unimp
     1d6:	0100                	addi	s0,sp,128
     1d8:	018c                	addi	a1,sp,192
     1da:	0000                	unimp
     1dc:	6104                	ld	s1,0(a0)
     1de:	8014                	.2byte	0x8014
     1e0:	0000                	unimp
     1e2:	0100                	addi	s0,sp,128
     1e4:	0180                	addi	s0,sp,192
     1e6:	0000                	unimp
     1e8:	6604                	ld	s1,8(a2)
     1ea:	8c15                	sub	s0,s0,a3
     1ec:	0000                	unimp
     1ee:	0100                	addi	s0,sp,128
     1f0:	015a                	slli	sp,sp,0x16
     1f2:	0000                	unimp
     1f4:	7104                	ld	s1,32(a0)
     1f6:	3512                	fld	fa0,288(sp)
     1f8:	0000                	unimp
     1fa:	0100                	addi	s0,sp,128
     1fc:	01d6                	slli	gp,gp,0x15
     1fe:	0000                	unimp
     200:	8b04                	.2byte	0x8b04
     202:	c812                	sw	tp,16(sp)
     204:	0000                	unimp
     206:	0100                	addi	s0,sp,128
     208:	01ae                	slli	gp,gp,0xb
     20a:	0000                	unimp
     20c:	9d04                	.2byte	0x9d04
     20e:	e012                	sd	tp,0(sp)
     210:	0000                	unimp
     212:	0100                	addi	s0,sp,128
     214:	013a                	slli	sp,sp,0xe
     216:	0000                	unimp
     218:	a104                	fsd	fs1,0(a0)
     21a:	a412                	fsd	ft4,8(sp)
     21c:	0000                	unimp
     21e:	0100                	addi	s0,sp,128
     220:	00f5                	addi	ra,ra,29
     222:	0000                	unimp
     224:	a504                	fsd	fs1,8(a0)
     226:	b012                	fsd	ft4,32(sp)
     228:	0000                	unimp
     22a:	0100                	addi	s0,sp,128
     22c:	01a6                	slli	gp,gp,0x9
     22e:	0000                	unimp
     230:	a904                	fsd	fs1,16(a0)
     232:	bc12                	fsd	ft4,56(sp)
     234:	0000                	unimp
     236:	0100                	addi	s0,sp,128
     238:	01cd                	addi	gp,gp,19 # 80003713 <__global_pointer$+0x13>
     23a:	0000                	unimp
     23c:	bd04                	fsd	fs1,56(a0)
     23e:	d412                	sw	tp,40(sp)
     240:	0000                	unimp
     242:	0100                	addi	s0,sp,128
     244:	00000163          	beqz	zero,246 <__stack_align+0x236>
     248:	c204                	sw	s1,0(a2)
     24a:	0000ec13          	ori	s8,ra,0
     24e:	0400                	addi	s0,sp,512
     250:	000001bb          	addw	gp,zero,zero
     254:	0510                	addi	a2,sp,640
     256:	0001a52f          	amoadd.w	a0,zero,(gp)
     25a:	0200                	addi	s0,sp,256
     25c:	01b4                	addi	a3,sp,200
     25e:	0000                	unimp
     260:	3005                	.2byte	0x3005
     262:	1e09                	addi	t3,t3,-30
     264:	0001                	nop
     266:	0000                	unimp
     268:	0402                	c.slli64	s0
     26a:	0001                	nop
     26c:	0500                	addi	s0,sp,640
     26e:	0731                	addi	a4,a4,12
     270:	0035                	c.nop	13
     272:	0000                	unimp
     274:	0008                	.2byte	0x8
     276:	c604                	sw	s1,8(a2)
     278:	0001                	nop
     27a:	6800                	ld	s0,16(s0)
     27c:	1b06                	slli	s6,s6,0x21
     27e:	0268                	addi	a0,sp,268
     280:	0000                	unimp
     282:	dc02                	sw	zero,56(sp)
     284:	0001                	nop
     286:	0600                	addi	s0,sp,768
     288:	0a1d                	addi	s4,s4,7
     28a:	0142                	slli	sp,sp,0x10
     28c:	0000                	unimp
     28e:	0200                	addi	s0,sp,256
     290:	011c                	addi	a5,sp,128
     292:	0000                	unimp
     294:	1e06                	slli	t3,t3,0x21
     296:	2a0a                	fld	fs4,128(sp)
     298:	0001                	nop
     29a:	0200                	addi	s0,sp,256
     29c:	4a02                	lw	s4,0(sp)
     29e:	0001                	nop
     2a0:	0600                	addi	s0,sp,768
     2a2:	0a1f 0166 0000      	.byte	0x1f, 0x0a, 0x66, 0x01, 0x00, 0x00
     2a8:	0204                	addi	s1,sp,256
     2aa:	000000fb          	.4byte	0xfb
     2ae:	2006                	fld	ft0,64(sp)
     2b0:	0001720b          	.4byte	0x1720b
     2b4:	0800                	addi	s0,sp,16
     2b6:	9d02                	jalr	s10
     2b8:	0001                	nop
     2ba:	0600                	addi	s0,sp,768
     2bc:	0a21                	addi	s4,s4,8
     2be:	014e                	slli	sp,sp,0x13
     2c0:	0000                	unimp
     2c2:	020a                	slli	tp,tp,0x2
     2c4:	000001e3          	beqz	zero,ac6 <__stack_align+0xab6>
     2c8:	2206                	fld	ft4,64(sp)
     2ca:	5a0a                	lw	s4,160(sp)
     2cc:	0001                	nop
     2ce:	0c00                	addi	s0,sp,528
     2d0:	7602                	ld	a2,32(sp)
     2d2:	0001                	nop
     2d4:	0600                	addi	s0,sp,768
     2d6:	01420a23          	sb	s4,20(tp) # 14 <__stack_align+0x4>
     2da:	0000                	unimp
     2dc:	020e                	slli	tp,tp,0x3
     2de:	010c                	addi	a1,sp,128
     2e0:	0000                	unimp
     2e2:	2406                	fld	fs0,64(sp)
     2e4:	360a                	fld	fa2,160(sp)
     2e6:	0001                	nop
     2e8:	1000                	addi	s0,sp,32
     2ea:	5202                	lw	tp,32(sp)
     2ec:	0001                	nop
     2ee:	0600                	addi	s0,sp,768
     2f0:	132a                	slli	t1,t1,0x2a
     2f2:	017e                	slli	sp,sp,0x1f
     2f4:	0000                	unimp
     2f6:	0218                	addi	a4,sp,256
     2f8:	0114                	addi	a3,sp,128
     2fa:	0000                	unimp
     2fc:	2b06                	fld	fs6,64(sp)
     2fe:	00017e13          	andi	t3,sp,0
     302:	2800                	fld	fs0,16(s0)
     304:	9502                	jalr	a0
     306:	0001                	nop
     308:	0600                	addi	s0,sp,768
     30a:	132c                	addi	a1,sp,424
     30c:	017e                	slli	sp,sp,0x1f
     30e:	0000                	unimp
     310:	0238                	addi	a4,sp,264
     312:	00000123          	sb	zero,2(zero) # 2 <__boot_hart+0x2>
     316:	2d06                	fld	fs10,64(sp)
     318:	1211                	addi	tp,tp,-28 # ffffffffffffffe4 <__heap_end+0xffffffff7ffdbfe4>
     31a:	0001                	nop
     31c:	4800                	lw	s0,16(s0)
     31e:	4002                	.2byte	0x4002
     320:	0001                	nop
     322:	0600                	addi	s0,sp,768
     324:	0c2e                	slli	s8,s8,0xb
     326:	0106                	slli	sp,sp,0x1
     328:	0000                	unimp
     32a:	0250                	addi	a2,sp,260
     32c:	012e                	slli	sp,sp,0xb
     32e:	0000                	unimp
     330:	3006                	fld	ft0,96(sp)
     332:	6809                	lui	a6,0x2
     334:	0002                	c.slli64	zero
     336:	5800                	lw	s0,48(s0)
     338:	0800                	addi	s0,sp,16
     33a:	0035                	c.nop	13
     33c:	0000                	unimp
     33e:	0278                	addi	a4,sp,268
     340:	0000                	unimp
     342:	3c09                	addiw	s8,s8,-30 # fffffffffffdffe2 <__heap_end+0xffffffff7ffbbfe2>
     344:	0000                	unimp
     346:	0100                	addi	s0,sp,128
     348:	0a00                	addi	s0,sp,272
     34a:	00d5                	addi	ra,ra,21
     34c:	0000                	unimp
     34e:	840d0f07          	.4byte	0x840d0f07
     352:	0002                	c.slli64	zero
     354:	0500                	addi	s0,sp,640
     356:	002e                	c.slli	zero,0xb
     358:	0000                	unimp
     35a:	0001c40b          	.4byte	0x1c40b
     35e:	0100                	addi	s0,sp,128
     360:	0505                	addi	a0,a0,1
     362:	002e                	c.slli	zero,0xb
     364:	0000                	unimp
     366:	24d4                	fld	fa3,136(s1)
     368:	8000                	.2byte	0x8000
     36a:	0000                	unimp
     36c:	0000                	unimp
     36e:	0014                	.2byte	0x14
     370:	0000                	unimp
     372:	0000                	unimp
     374:	0000                	unimp
     376:	9c01                	subw	s0,s0,s0
     378:	02d8                	addi	a4,sp,324
     37a:	0000                	unimp
     37c:	4d0c                	lw	a1,24(a0)
     37e:	0000                	unimp
     380:	0100                	addi	s0,sp,128
     382:	1005                	c.nop	-31
     384:	002e                	c.slli	zero,0xb
     386:	0000                	unimp
     388:	0042                	c.slli	zero,0x10
     38a:	0000                	unimp
     38c:	730d                	lui	t1,0xfffe3
     38e:	0074                	addi	a3,sp,12
     390:	0501                	addi	a0,a0,0
     392:	0002d823          	.4byte	0x2d823
     396:	6c00                	ld	s0,24(s0)
     398:	0000                	unimp
     39a:	0e00                	addi	s0,sp,784
     39c:	24dc                	fld	fa5,136(s1)
     39e:	8000                	.2byte	0x8000
     3a0:	0000                	unimp
     3a2:	0000                	unimp
     3a4:	0278                	addi	a4,sp,268
     3a6:	0000                	unimp
     3a8:	0500                	addi	s0,sp,640
     3aa:	01a5                	addi	gp,gp,9 # 80003709 <__global_pointer$+0x9>
     3ac:	0000                	unimp
     3ae:	a700                	fsd	fs0,8(a4)
     3b0:	0000                	unimp
     3b2:	0500                	addi	s0,sp,640
     3b4:	0100                	addi	s0,sp,128
     3b6:	5208                	lw	a0,32(a2)
     3b8:	0001                	nop
     3ba:	0200                	addi	s0,sp,256
     3bc:	0052                	c.slli	zero,0x14
     3be:	0000                	unimp
     3c0:	191d                	addi	s2,s2,-25
     3c2:	0001                	nop
     3c4:	0000                	unimp
     3c6:	0000                	unimp
     3c8:	e800                	sd	s0,16(s0)
     3ca:	0024                	addi	s1,sp,8
     3cc:	0080                	addi	s0,sp,64
     3ce:	0000                	unimp
     3d0:	0800                	addi	s0,sp,16
     3d2:	0000                	unimp
     3d4:	0000                	unimp
     3d6:	0000                	unimp
     3d8:	4100                	lw	s0,0(a0)
     3da:	0001                	nop
     3dc:	0100                	addi	s0,sp,128
     3de:	0601                	addi	a2,a2,0
     3e0:	00000023          	sb	zero,0(zero) # 0 <__boot_hart>
     3e4:	0101                	addi	sp,sp,0
     3e6:	2108                	fld	fa0,0(a0)
     3e8:	0000                	unimp
     3ea:	0100                	addi	s0,sp,128
     3ec:	0502                	c.slli64	a0
     3ee:	00e9                	addi	ra,ra,26
     3f0:	0000                	unimp
     3f2:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     3f4:	00000e07          	.4byte	0xe07
     3f8:	0300                	addi	s0,sp,384
     3fa:	0504                	addi	s1,sp,640
     3fc:	6e69                	lui	t3,0x1a
     3fe:	0074                	addi	a3,sp,12
     400:	0401                	addi	s0,s0,0
     402:	00003907          	fld	fs2,0(zero) # 0 <__boot_hart>
     406:	0100                	addi	s0,sp,128
     408:	0508                	addi	a0,sp,640
     40a:	0005                	c.nop	1
     40c:	0000                	unimp
     40e:	0801                	addi	a6,a6,0 # 2000 <__stack_align+0x1ff0>
     410:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
     414:	0100                	addi	s0,sp,128
     416:	0508                	addi	a0,sp,640
     418:	0000                	unimp
     41a:	0000                	unimp
     41c:	0101                	addi	sp,sp,0
     41e:	2a08                	fld	fa0,16(a2)
     420:	0000                	unimp
     422:	0100                	addi	s0,sp,128
     424:	0410                	addi	a2,sp,512
     426:	00dd                	addi	ra,ra,23
     428:	0000                	unimp
     42a:	ea04                	sd	s1,16(a2)
     42c:	0001                	nop
     42e:	0100                	addi	s0,sp,128
     430:	0504                	addi	s1,sp,640
     432:	004a                	c.slli	zero,0x12
     434:	0000                	unimp
     436:	24e8                	fld	fa0,200(s1)
     438:	8000                	.2byte	0x8000
     43a:	0000                	unimp
     43c:	0000                	unimp
     43e:	0008                	.2byte	0x8
     440:	0000                	unimp
     442:	0000                	unimp
     444:	0000                	unimp
     446:	9c01                	subw	s0,s0,s0
     448:	4d05                	li	s10,1
     44a:	0000                	unimp
     44c:	0100                	addi	s0,sp,128
     44e:	1104                	addi	s1,sp,160
     450:	004a                	c.slli	zero,0x12
     452:	0000                	unimp
     454:	00a2                	slli	ra,ra,0x8
     456:	0000                	unimp
     458:	0000                	unimp
     45a:	010d                	addi	sp,sp,3
     45c:	0000                	unimp
     45e:	0005                	c.nop	1
     460:	0801                	addi	a6,a6,0
     462:	01a8                	addi	a0,sp,200
     464:	0000                	unimp
     466:	5204                	lw	s1,32(a2)
     468:	0000                	unimp
     46a:	1d00                	addi	s0,sp,688
     46c:	0129                	addi	sp,sp,10
     46e:	0000                	unimp
     470:	0000                	unimp
     472:	0000                	unimp
     474:	24f0                	fld	fa2,200(s1)
     476:	8000                	.2byte	0x8000
     478:	0000                	unimp
     47a:	0000                	unimp
     47c:	0014                	.2byte	0x14
     47e:	0000                	unimp
     480:	0000                	unimp
     482:	0000                	unimp
     484:	01a8                	addi	a0,sp,200
     486:	0000                	unimp
     488:	0405                	addi	s0,s0,1
     48a:	6905                	lui	s2,0x1
     48c:	746e                	ld	s0,248(sp)
     48e:	0100                	addi	s0,sp,128
     490:	0508                	addi	a0,sp,640
     492:	0005                	c.nop	1
     494:	0000                	unimp
     496:	0801                	addi	a6,a6,0
     498:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
     49c:	0100                	addi	s0,sp,128
     49e:	0508                	addi	a0,sp,640
     4a0:	0000                	unimp
     4a2:	0000                	unimp
     4a4:	1001                	c.nop	-32
     4a6:	dd04                	sw	s1,56(a0)
     4a8:	0000                	unimp
     4aa:	0100                	addi	s0,sp,128
     4ac:	0704                	addi	s1,sp,896
     4ae:	0039                	c.nop	14
     4b0:	0000                	unimp
     4b2:	0101                	addi	sp,sp,0
     4b4:	2306                	fld	ft6,64(sp)
     4b6:	0000                	unimp
     4b8:	0100                	addi	s0,sp,128
     4ba:	0801                	addi	a6,a6,0
     4bc:	0021                	c.nop	8
     4be:	0000                	unimp
     4c0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     4c2:	e905                	bnez	a0,4f2 <__stack_align+0x4e2>
     4c4:	0000                	unimp
     4c6:	0100                	addi	s0,sp,128
     4c8:	0702                	c.slli64	a4
     4ca:	000e                	c.slli	zero,0x3
     4cc:	0000                	unimp
     4ce:	ad02                	fsd	ft0,152(sp)
     4d0:	0001                	nop
     4d2:	0200                	addi	s0,sp,256
     4d4:	0e2e                	slli	t3,t3,0xb
     4d6:	0035                	c.nop	13
     4d8:	0000                	unimp
     4da:	ac02                	fsd	ft0,24(sp)
     4dc:	0001                	nop
     4de:	0200                	addi	s0,sp,256
     4e0:	1066                	c.slli	zero,0x39
     4e2:	0074                	addi	a3,sp,12
     4e4:	0000                	unimp
     4e6:	0101                	addi	sp,sp,0
     4e8:	2a08                	fld	fa0,16(a2)
     4ea:	0000                	unimp
     4ec:	0100                	addi	s0,sp,128
     4ee:	0708                	addi	a0,sp,896
     4f0:	0000002f          	.4byte	0x2f
     4f4:	ae02                	fsd	ft0,280(sp)
     4f6:	0001                	nop
     4f8:	0300                	addi	s0,sp,384
     4fa:	129d                	addi	t0,t0,-25
     4fc:	0080                	addi	s0,sp,64
     4fe:	0000                	unimp
     500:	d506                	sw	ra,168(sp)
     502:	0000                	unimp
     504:	0400                	addi	s0,sp,512
     506:	00b20d0f          	.4byte	0xb20d0f
     50a:	0000                	unimp
     50c:	002e0807          	.4byte	0x2e0807
     510:	0000                	unimp
     512:	f208                	sd	a0,32(a2)
     514:	0001                	nop
     516:	0100                	addi	s0,sp,128
     518:	0705                	addi	a4,a4,1
     51a:	009a                	slli	ra,ra,0x6
     51c:	0000                	unimp
     51e:	24f0                	fld	fa2,200(s1)
     520:	8000                	.2byte	0x8000
     522:	0000                	unimp
     524:	0000                	unimp
     526:	0014                	.2byte	0x14
     528:	0000                	unimp
     52a:	0000                	unimp
     52c:	0000                	unimp
     52e:	9c01                	subw	s0,s0,s0
     530:	4d09                	li	s10,2
     532:	0000                	unimp
     534:	0100                	addi	s0,sp,128
     536:	1205                	addi	tp,tp,-31 # ffffffffffffffe1 <__heap_end+0xffffffff7ffdbfe1>
     538:	002e                	c.slli	zero,0xb
     53a:	0000                	unimp
     53c:	00d8                	addi	a4,sp,68
     53e:	0000                	unimp
     540:	72747003          	.4byte	0x72747003
     544:	1e00                	addi	s0,sp,816
     546:	009a                	slli	ra,ra,0x6
     548:	0000                	unimp
     54a:	0102                	c.slli64	sp
     54c:	0000                	unimp
     54e:	72696403          	lwu	s0,1830(s2) # 1726 <__stack_align+0x1716>
     552:	2700                	fld	fs0,8(a4)
     554:	002e                	c.slli	zero,0xb
     556:	0000                	unimp
     558:	012c                	addi	a1,sp,136
     55a:	0000                	unimp
     55c:	f80a                	sd	sp,48(sp)
     55e:	0024                	addi	s1,sp,8
     560:	0080                	addi	s0,sp,64
     562:	0000                	unimp
     564:	a600                	fsd	fs0,8(a2)
     566:	0000                	unimp
     568:	0000                	unimp
     56a:	0f00                	addi	s0,sp,912
     56c:	0001                	nop
     56e:	0500                	addi	s0,sp,640
     570:	0100                	addi	s0,sp,128
     572:	4708                	lw	a0,8(a4)
     574:	0002                	c.slli64	zero
     576:	0400                	addi	s0,sp,512
     578:	0052                	c.slli	zero,0x14
     57a:	0000                	unimp
     57c:	381d                	addiw	a6,a6,-25
     57e:	0001                	nop
     580:	0000                	unimp
     582:	0000                	unimp
     584:	0400                	addi	s0,sp,512
     586:	0025                	c.nop	9
     588:	0080                	addi	s0,sp,64
     58a:	0000                	unimp
     58c:	1600                	addi	s0,sp,800
     58e:	0000                	unimp
     590:	0000                	unimp
     592:	0000                	unimp
     594:	4400                	lw	s0,8(s0)
     596:	0002                	c.slli64	zero
     598:	0500                	addi	s0,sp,640
     59a:	0504                	addi	s1,sp,640
     59c:	6e69                	lui	t3,0x1a
     59e:	0074                	addi	a3,sp,12
     5a0:	0801                	addi	a6,a6,0
     5a2:	0505                	addi	a0,a0,1
     5a4:	0000                	unimp
     5a6:	0200                	addi	s0,sp,256
     5a8:	00000183          	lb	gp,0(zero) # 0 <__boot_hart>
     5ac:	d602                	sw	zero,44(sp)
     5ae:	00004817          	auipc	a6,0x4
     5b2:	0100                	addi	s0,sp,128
     5b4:	0708                	addi	a0,sp,896
     5b6:	0034                	addi	a3,sp,8
     5b8:	0000                	unimp
     5ba:	0801                	addi	a6,a6,0 # 45ae <__stack_align+0x459e>
     5bc:	0005                	c.nop	1
     5be:	0000                	unimp
     5c0:	0100                	addi	s0,sp,128
     5c2:	0410                	addi	a2,sp,512
     5c4:	00dd                	addi	ra,ra,23
     5c6:	0000                	unimp
     5c8:	0401                	addi	s0,s0,0
     5ca:	00003907          	fld	fs2,0(zero) # 0 <__boot_hart>
     5ce:	0100                	addi	s0,sp,128
     5d0:	0601                	addi	a2,a2,0
     5d2:	00000023          	sb	zero,0(zero) # 0 <__boot_hart>
     5d6:	0101                	addi	sp,sp,0
     5d8:	2108                	fld	fa0,0(a0)
     5da:	0000                	unimp
     5dc:	0100                	addi	s0,sp,128
     5de:	0502                	c.slli64	a0
     5e0:	00e9                	addi	ra,ra,26
     5e2:	0000                	unimp
     5e4:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     5e6:	00000e07          	.4byte	0xe07
     5ea:	0200                	addi	s0,sp,256
     5ec:	01ff                	.2byte	0x1ff
     5ee:	0000                	unimp
     5f0:	35179303          	lh	t1,849(a5)
     5f4:	0000                	unimp
     5f6:	0600                	addi	s0,sp,768
     5f8:	0108                	addi	a0,sp,128
     5fa:	0801                	addi	a6,a6,0
     5fc:	002a                	c.slli	zero,0xa
     5fe:	0000                	unimp
     600:	0801                	addi	a6,a6,0
     602:	00002f07          	flw	ft10,0(zero) # 0 <__boot_hart>
     606:	0200                	addi	s0,sp,256
     608:	0200                	addi	s0,sp,256
     60a:	0000                	unimp
     60c:	b804                	fsd	fs1,48(s0)
     60e:	8012                	c.mv	zero,tp
     610:	0000                	unimp
     612:	0700                	addi	s0,sp,896
     614:	00d5                	addi	ra,ra,21
     616:	0000                	unimp
     618:	0f05                	addi	t5,t5,1
     61a:	b40d                	j	3c <__stack_align+0x2c>
     61c:	0000                	unimp
     61e:	0800                	addi	s0,sp,16
     620:	2e08                	fld	fa0,24(a2)
     622:	0000                	unimp
     624:	0900                	addi	s0,sp,144
     626:	01f9                	addi	gp,gp,30 # 8000371e <__global_pointer$+0x1e>
     628:	0000                	unimp
     62a:	0501                	addi	a0,a0,0
     62c:	9c09                	subw	s0,s0,a0
     62e:	0000                	unimp
     630:	0400                	addi	s0,sp,512
     632:	0025                	c.nop	9
     634:	0080                	addi	s0,sp,64
     636:	0000                	unimp
     638:	1600                	addi	s0,sp,800
     63a:	0000                	unimp
     63c:	0000                	unimp
     63e:	0000                	unimp
     640:	0100                	addi	s0,sp,128
     642:	0a9c                	addi	a5,sp,336
     644:	004d                	c.nop	19
     646:	0000                	unimp
     648:	0501                	addi	a0,a0,0
     64a:	00002e13          	slti	t3,zero,0
     64e:	6200                	ld	s0,0(a2)
     650:	0001                	nop
     652:	0300                	addi	s0,sp,384
     654:	7470                	ld	a2,232(s0)
     656:	0072                	c.slli	zero,0x1c
     658:	8c1f 0000 8c00      	.byte	0x1f, 0x8c, 0x00, 0x00, 0x00, 0x8c
     65e:	0001                	nop
     660:	0300                	addi	s0,sp,384
     662:	656c                	ld	a1,200(a0)
     664:	006e                	c.slli	zero,0x1b
     666:	00003c2b          	.4byte	0x3c2b
     66a:	b600                	fsd	fs0,40(a2)
     66c:	0001                	nop
     66e:	0b00                	addi	s0,sp,400
     670:	250c                	fld	fa1,8(a0)
     672:	8000                	.2byte	0x8000
     674:	0000                	unimp
     676:	0000                	unimp
     678:	00a8                	addi	a0,sp,72
     67a:	0000                	unimp
     67c:	0000                	unimp
     67e:	0132                	slli	sp,sp,0xc
     680:	0000                	unimp
     682:	0005                	c.nop	1
     684:	0801                	addi	a6,a6,0
     686:	02ed                	addi	t0,t0,27
     688:	0000                	unimp
     68a:	5205                	li	tp,-31
     68c:	0000                	unimp
     68e:	1d00                	addi	s0,sp,688
     690:	01a5                	addi	gp,gp,9 # 80003709 <__global_pointer$+0x9>
     692:	0000                	unimp
     694:	0000                	unimp
     696:	0000                	unimp
     698:	251a                	fld	fa0,384(sp)
     69a:	8000                	.2byte	0x8000
     69c:	0000                	unimp
     69e:	0000                	unimp
     6a0:	003c                	addi	a5,sp,8
     6a2:	0000                	unimp
     6a4:	0000                	unimp
     6a6:	0000                	unimp
     6a8:	02e9                	addi	t0,t0,26
     6aa:	0000                	unimp
     6ac:	0806                	slli	a6,a6,0x1
     6ae:	0002                	c.slli64	zero
     6b0:	0200                	addi	s0,sp,256
     6b2:	1a91                	addi	s5,s5,-28
     6b4:	003a                	c.slli	zero,0xe
     6b6:	0000                	unimp
     6b8:	0801                	addi	a6,a6,0
     6ba:	0505                	addi	a0,a0,1
     6bc:	0000                	unimp
     6be:	0100                	addi	s0,sp,128
     6c0:	0708                	addi	a0,sp,896
     6c2:	0034                	addi	a3,sp,8
     6c4:	0000                	unimp
     6c6:	69050407          	.4byte	0x69050407
     6ca:	746e                	ld	s0,248(sp)
     6cc:	0100                	addi	s0,sp,128
     6ce:	0508                	addi	a0,sp,640
     6d0:	0000                	unimp
     6d2:	0000                	unimp
     6d4:	1001                	c.nop	-32
     6d6:	dd04                	sw	s1,56(a0)
     6d8:	0000                	unimp
     6da:	0100                	addi	s0,sp,128
     6dc:	0704                	addi	s1,sp,896
     6de:	0039                	c.nop	14
     6e0:	0000                	unimp
     6e2:	0101                	addi	sp,sp,0
     6e4:	2306                	fld	ft6,64(sp)
     6e6:	0000                	unimp
     6e8:	0100                	addi	s0,sp,128
     6ea:	0801                	addi	a6,a6,0
     6ec:	0021                	c.nop	8
     6ee:	0000                	unimp
     6f0:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     6f2:	e905                	bnez	a0,722 <__stack_align+0x712>
     6f4:	0000                	unimp
     6f6:	0100                	addi	s0,sp,128
     6f8:	0702                	c.slli64	a4
     6fa:	000e                	c.slli	zero,0x3
     6fc:	0000                	unimp
     6fe:	0808                	addi	a0,sp,16
     700:	8702                	jr	a4
     702:	0000                	unimp
     704:	0100                	addi	s0,sp,128
     706:	0801                	addi	a6,a6,0
     708:	002a                	c.slli	zero,0xa
     70a:	0000                	unimp
     70c:	0801                	addi	a6,a6,0
     70e:	00002f07          	flw	ft10,0(zero) # 0 <__boot_hart>
     712:	0900                	addi	s0,sp,144
     714:	00000087          	.4byte	0x87
     718:	00a0                	addi	s0,sp,72
     71a:	0000                	unimp
     71c:	000a                	c.slli	zero,0x2
     71e:	00021803          	lh	a6,0(tp) # 0 <__boot_hart>
     722:	0600                	addi	s0,sp,768
     724:	950d                	srai	a0,a0,0x23
     726:	0000                	unimp
     728:	0b00                	addi	s0,sp,400
     72a:	021d                	addi	tp,tp,7 # 7 <__tbss_size+0x3>
     72c:	0000                	unimp
     72e:	0701                	addi	a4,a4,0
     730:	820e                	mv	tp,gp
     732:	0000                	unimp
     734:	0900                	addi	s0,sp,144
     736:	002f0803          	lb	a6,2(t5)
     73a:	0080                	addi	s0,sp,64
     73c:	0000                	unimp
     73e:	0c00                	addi	s0,sp,528
     740:	00d5                	addi	ra,ra,21
     742:	0000                	unimp
     744:	cd0d0f03          	lb	t5,-816(s10)
     748:	0000                	unimp
     74a:	0200                	addi	s0,sp,256
     74c:	0048                	addi	a0,sp,4
     74e:	0000                	unimp
     750:	240d                	addiw	s0,s0,3
     752:	0002                	c.slli64	zero
     754:	0100                	addi	s0,sp,128
     756:	0709                	addi	a4,a4,2
     758:	0080                	addi	s0,sp,64
     75a:	0000                	unimp
     75c:	251a                	fld	fa0,384(sp)
     75e:	8000                	.2byte	0x8000
     760:	0000                	unimp
     762:	0000                	unimp
     764:	003c                	addi	a5,sp,8
     766:	0000                	unimp
     768:	0000                	unimp
     76a:	0000                	unimp
     76c:	9c01                	subw	s0,s0,s0
     76e:	2a0e                	fld	fs4,192(sp)
     770:	0002                	c.slli64	zero
     772:	0100                	addi	s0,sp,128
     774:	1709                	addi	a4,a4,-30
     776:	002e                	c.slli	zero,0xb
     778:	0000                	unimp
     77a:	01ec                	addi	a1,sp,204
     77c:	0000                	unimp
     77e:	00021203          	lh	tp,0(tp) # 0 <__boot_hart>
     782:	0b00                	addi	s0,sp,400
     784:	9511                	srai	a0,a0,0x24
     786:	0000                	unimp
     788:	0400                	addi	s0,sp,512
     78a:	0236                	slli	tp,tp,0xd
     78c:	0000                	unimp
     78e:	820c                	.2byte	0x820c
     790:	0000                	unimp
     792:	1600                	addi	s0,sp,800
     794:	0002                	c.slli64	zero
     796:	0400                	addi	s0,sp,512
     798:	0000022f          	.4byte	0x22f
     79c:	820d                	srli	a2,a2,0x3
     79e:	0000                	unimp
     7a0:	5800                	lw	s0,48(s0)
     7a2:	0002                	c.slli64	zero
     7a4:	0f00                	addi	s0,sp,912
     7a6:	2548                	fld	fa0,136(a0)
     7a8:	8000                	.2byte	0x8000
     7aa:	0000                	unimp
     7ac:	0000                	unimp
     7ae:	00c1                	addi	ra,ra,16
     7b0:	0000                	unimp
     7b2:	0000                	unimp
     7b4:	016d                	addi	sp,sp,27
     7b6:	0000                	unimp
     7b8:	0005                	c.nop	1
     7ba:	0801                	addi	a6,a6,0
     7bc:	000003c7          	fmsub.s	ft7,ft0,ft0,ft0,rne
     7c0:	5206                	lw	tp,96(sp)
     7c2:	0000                	unimp
     7c4:	1d00                	addi	s0,sp,688
     7c6:	000001b3          	add	gp,zero,zero
     7ca:	0000                	unimp
     7cc:	0000                	unimp
     7ce:	2556                	fld	fa0,336(sp)
     7d0:	8000                	.2byte	0x8000
     7d2:	0000                	unimp
     7d4:	0000                	unimp
     7d6:	0006                	c.slli	zero,0x1
     7d8:	0000                	unimp
     7da:	0000                	unimp
     7dc:	0000                	unimp
     7de:	040c                	addi	a1,sp,512
     7e0:	0000                	unimp
     7e2:	69050407          	.4byte	0x69050407
     7e6:	746e                	ld	s0,248(sp)
     7e8:	0100                	addi	s0,sp,128
     7ea:	0508                	addi	a0,sp,640
     7ec:	0005                	c.nop	1
     7ee:	0000                	unimp
     7f0:	8302                	jr	t1
     7f2:	0001                	nop
     7f4:	0200                	addi	s0,sp,256
     7f6:	17d6                	slli	a5,a5,0x35
     7f8:	0048                	addi	a0,sp,4
     7fa:	0000                	unimp
     7fc:	0801                	addi	a6,a6,0
     7fe:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
     802:	0100                	addi	s0,sp,128
     804:	0508                	addi	a0,sp,640
     806:	0000                	unimp
     808:	0000                	unimp
     80a:	1001                	c.nop	-32
     80c:	dd04                	sw	s1,56(a0)
     80e:	0000                	unimp
     810:	0100                	addi	s0,sp,128
     812:	0704                	addi	s1,sp,896
     814:	0039                	c.nop	14
     816:	0000                	unimp
     818:	0101                	addi	sp,sp,0
     81a:	2306                	fld	ft6,64(sp)
     81c:	0000                	unimp
     81e:	0100                	addi	s0,sp,128
     820:	0801                	addi	a6,a6,0
     822:	0021                	c.nop	8
     824:	0000                	unimp
     826:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     828:	e905                	bnez	a0,858 <__stack_align+0x848>
     82a:	0000                	unimp
     82c:	0100                	addi	s0,sp,128
     82e:	0702                	c.slli64	a4
     830:	000e                	c.slli	zero,0x3
     832:	0000                	unimp
     834:	5d02                	lw	s10,32(sp)
     836:	0002                	c.slli64	zero
     838:	0300                	addi	s0,sp,384
     83a:	1969                	addi	s2,s2,-6
     83c:	0048                	addi	a0,sp,4
     83e:	0000                	unimp
     840:	4a02                	lw	s4,0(sp)
     842:	0002                	c.slli64	zero
     844:	0300                	addi	s0,sp,384
     846:	1ae8                	addi	a0,sp,380
     848:	0048                	addi	a0,sp,4
     84a:	0000                	unimp
     84c:	ff02                	sd	zero,440(sp)
     84e:	0001                	nop
     850:	0400                	addi	s0,sp,512
     852:	00351793          	slli	a5,a0,0x3
     856:	0000                	unimp
     858:	0101                	addi	sp,sp,0
     85a:	2a08                	fld	fa0,16(a2)
     85c:	0000                	unimp
     85e:	0100                	addi	s0,sp,128
     860:	0708                	addi	a0,sp,896
     862:	0000002f          	.4byte	0x2f
     866:	5f02                	lw	t5,32(sp)
     868:	0002                	c.slli64	zero
     86a:	0500                	addi	s0,sp,640
     86c:	143c                	addi	a5,sp,552
     86e:	0080                	addi	s0,sp,64
     870:	0000                	unimp
     872:	4c02                	lw	s8,0(sp)
     874:	0002                	c.slli64	zero
     876:	0500                	addi	s0,sp,640
     878:	1552                	slli	a0,a0,0x34
     87a:	008c                	addi	a1,sp,64
     87c:	0000                	unimp
     87e:	0002                	c.slli64	zero
     880:	0002                	c.slli64	zero
     882:	0600                	addi	s0,sp,768
     884:	12b8                	addi	a4,sp,360
     886:	0098                	addi	a4,sp,64
     888:	0000                	unimp
     88a:	3d08                	fld	fa0,56(a0)
     88c:	0002                	c.slli64	zero
     88e:	0700                	addi	s0,sp,896
     890:	0d1a                	slli	s10,s10,0x6
     892:	0035                	c.nop	13
     894:	0000                	unimp
     896:	000000fb          	.4byte	0xfb
     89a:	0000b203          	ld	tp,0(ra)
     89e:	0300                	addi	s0,sp,384
     8a0:	00b2                	slli	ra,ra,0xc
     8a2:	0000                	unimp
     8a4:	0000b203          	ld	tp,0(ra)
     8a8:	0300                	addi	s0,sp,384
     8aa:	0048                	addi	a0,sp,4
     8ac:	0000                	unimp
     8ae:	0900                	addi	s0,sp,144
     8b0:	0256                	slli	tp,tp,0x15
     8b2:	0000                	unimp
     8b4:	0601                	addi	a2,a2,0
     8b6:	ca09                	beqz	a2,8c8 <__stack_align+0x8b8>
     8b8:	0000                	unimp
     8ba:	5600                	lw	s0,40(a2)
     8bc:	0025                	c.nop	9
     8be:	0080                	addi	s0,sp,64
     8c0:	0000                	unimp
     8c2:	0600                	addi	s0,sp,768
     8c4:	0000                	unimp
     8c6:	0000                	unimp
     8c8:	0000                	unimp
     8ca:	0100                	addi	s0,sp,128
     8cc:	699c                	ld	a5,16(a1)
     8ce:	0001                	nop
     8d0:	0400                	addi	s0,sp,512
     8d2:	6466                	ld	s0,88(sp)
     8d4:	1400                	addi	s0,sp,544
     8d6:	002e                	c.slli	zero,0xb
     8d8:	0000                	unimp
     8da:	0278                	addi	a4,sp,268
     8dc:	0000                	unimp
     8de:	7004                	ld	s1,32(s0)
     8e0:	7274                	ld	a3,224(a2)
     8e2:	2400                	fld	fs0,8(s0)
     8e4:	0169                	addi	sp,sp,26
     8e6:	0000                	unimp
     8e8:	02a2                	slli	t0,t0,0x8
     8ea:	0000                	unimp
     8ec:	6c04                	ld	s1,24(s0)
     8ee:	6e65                	lui	t3,0x19
     8f0:	3000                	fld	fs0,32(s0)
     8f2:	003c                	addi	a5,sp,8
     8f4:	0000                	unimp
     8f6:	02cc                	addi	a1,sp,324
     8f8:	0000                	unimp
     8fa:	5c0a                	lw	s8,160(sp)
     8fc:	0025                	c.nop	9
     8fe:	0080                	addi	s0,sp,64
     900:	0000                	unimp
     902:	d600                	sw	s0,40(a2)
     904:	0000                	unimp
     906:	0500                	addi	s0,sp,640
     908:	5b01                	li	s6,-32
     90a:	5b01a303          	lw	t1,1456(gp) # 80003cb0 <__global_pointer$+0x5b0>
     90e:	0105                	addi	sp,sp,1
     910:	035c                	addi	a5,sp,388
     912:	055c01a3          	sb	s5,67(s8)
     916:	5d01                	li	s10,-32
     918:	0802                	c.slli64	a6
     91a:	0040                	addi	s0,sp,4
     91c:	0b00                	addi	s0,sp,400
     91e:	6f08                	ld	a0,24(a4)
     920:	0001                	nop
     922:	0c00                	addi	s0,sp,528
     924:	2500                	fld	fs0,8(a0)
     926:	0000                	unimp
     928:	0500                	addi	s0,sp,640
     92a:	0100                	addi	s0,sp,128
     92c:	7108                	ld	a0,32(a0)
     92e:	0004                	.2byte	0x4
     930:	0100                	addi	s0,sp,128
     932:	0499                	addi	s1,s1,6
     934:	0000                	unimp
     936:	0000                	unimp
     938:	8000                	.2byte	0x8000
     93a:	0000                	unimp
     93c:	0000                	unimp
     93e:	0494                	addi	a3,sp,576
     940:	0268                	addi	a0,sp,268
     942:	0000                	unimp
     944:	00000277          	.4byte	0x277
     948:	02a5                	addi	t0,t0,9
     94a:	0000                	unimp
     94c:	8001                	c.srli64	s0
     94e:	0024                	addi	s1,sp,8
     950:	0000                	unimp
     952:	0005                	c.nop	1
     954:	0801                	addi	a6,a6,0
     956:	0485                	addi	s1,s1,1
     958:	0000                	unimp
     95a:	cb01                	beqz	a4,96a <__stack_align+0x95a>
     95c:	0008                	.2byte	0x8
     95e:	ea00                	sd	s0,16(a2)
     960:	0001                	nop
     962:	0080                	addi	s0,sp,64
     964:	0000                	unimp
     966:	6200                	ld	s0,0(a2)
     968:	02b1                	addi	t0,t0,12
     96a:	0000                	unimp
     96c:	00000277          	.4byte	0x277
     970:	02a5                	addi	t0,t0,9
     972:	0000                	unimp
     974:	8001                	c.srli64	s0
     976:	0136                	slli	sp,sp,0xd
     978:	0000                	unimp
     97a:	0005                	c.nop	1
     97c:	0801                	addi	a6,a6,0
     97e:	0499                	addi	s1,s1,6
     980:	0000                	unimp
     982:	5204                	lw	s1,32(a2)
     984:	0000                	unimp
     986:	1d00                	addi	s0,sp,688
     988:	000001f7          	.4byte	0x1f7
     98c:	0000                	unimp
     98e:	0000                	unimp
     990:	255c                	fld	fa5,136(a0)
     992:	8000                	.2byte	0x8000
     994:	0000                	unimp
     996:	0000                	unimp
     998:	0016                	c.slli	zero,0x5
     99a:	0000                	unimp
     99c:	0000                	unimp
     99e:	0000                	unimp
     9a0:	0000092b          	.4byte	0x92b
     9a4:	0101                	addi	sp,sp,0
     9a6:	2306                	fld	ft6,64(sp)
     9a8:	0000                	unimp
     9aa:	0100                	addi	s0,sp,128
     9ac:	0801                	addi	a6,a6,0
     9ae:	0021                	c.nop	8
     9b0:	0000                	unimp
     9b2:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     9b4:	e905                	bnez	a0,9e4 <__stack_align+0x9d4>
     9b6:	0000                	unimp
     9b8:	0100                	addi	s0,sp,128
     9ba:	0702                	c.slli64	a4
     9bc:	000e                	c.slli	zero,0x3
     9be:	0000                	unimp
     9c0:	0405                	addi	s0,s0,1
     9c2:	6905                	lui	s2,0x1
     9c4:	746e                	ld	s0,248(sp)
     9c6:	0100                	addi	s0,sp,128
     9c8:	0704                	addi	s1,sp,896
     9ca:	0039                	c.nop	14
     9cc:	0000                	unimp
     9ce:	0801                	addi	a6,a6,0
     9d0:	0505                	addi	a0,a0,1
     9d2:	0000                	unimp
     9d4:	0100                	addi	s0,sp,128
     9d6:	0708                	addi	a0,sp,896
     9d8:	0034                	addi	a3,sp,8
     9da:	0000                	unimp
     9dc:	db02                	sw	zero,180(sp)
     9de:	0002                	c.slli64	zero
     9e0:	0200                	addi	s0,sp,256
     9e2:	19e6                	slli	s3,s3,0x39
     9e4:	0058                	addi	a4,sp,4
     9e6:	0000                	unimp
     9e8:	4a02                	lw	s4,0(sp)
     9ea:	0002                	c.slli64	zero
     9ec:	0200                	addi	s0,sp,256
     9ee:	1ae8                	addi	a0,sp,380
     9f0:	005f 0000 dd02      	.byte	0x5f, 0x00, 0x00, 0x00, 0x02, 0xdd
     9f6:	0002                	c.slli64	zero
     9f8:	0300                	addi	s0,sp,384
     9fa:	144d                	addi	s0,s0,-13
     9fc:	0066                	c.slli	zero,0x19
     9fe:	0000                	unimp
     a00:	4c02                	lw	s8,0(sp)
     a02:	0002                	c.slli64	zero
     a04:	0300                	addi	s0,sp,384
     a06:	1552                	slli	a0,a0,0x34
     a08:	0072                	c.slli	zero,0x1c
     a0a:	0000                	unimp
     a0c:	0801                	addi	a6,a6,0
     a0e:	0005                	c.nop	1
     a10:	0000                	unimp
     a12:	0100                	addi	s0,sp,128
     a14:	0410                	addi	a2,sp,512
     a16:	00dd                	addi	ra,ra,23
     a18:	0000                	unimp
     a1a:	0101                	addi	sp,sp,0
     a1c:	2a08                	fld	fa0,16(a2)
     a1e:	0000                	unimp
     a20:	0600                	addi	s0,sp,768
     a22:	02d5                	addi	t0,t0,21
     a24:	0000                	unimp
     a26:	4104                	lw	s1,0(a0)
     a28:	bd0d                	j	85a <__stack_align+0x84a>
     a2a:	0000                	unimp
     a2c:	0700                	addi	s0,sp,896
     a2e:	004a                	c.slli	zero,0x12
     a30:	0000                	unimp
     a32:	0800                	addi	s0,sp,16
     a34:	000002c3          	fmadd.s	ft5,ft0,ft0,ft0,rne
     a38:	0401                	addi	s0,s0,0
     a3a:	5c1c                	lw	a5,56(s0)
     a3c:	0025                	c.nop	9
     a3e:	0080                	addi	s0,sp,64
     a40:	0000                	unimp
     a42:	1600                	addi	s0,sp,800
     a44:	0000                	unimp
     a46:	0000                	unimp
     a48:	0000                	unimp
     a4a:	0100                	addi	s0,sp,128
     a4c:	339c                	fld	fa5,32(a5)
     a4e:	0001                	nop
     a50:	0900                	addi	s0,sp,144
     a52:	7065                	c.lui	zero,0xffff9
     a54:	04010063          	beqz	sp,a94 <__stack_align+0xa84>
     a58:	8a32                	mv	s4,a2
     a5a:	0000                	unimp
     a5c:	0200                	addi	s0,sp,256
     a5e:	03000003          	lb	zero,48(zero) # 30 <__stack_align+0x20>
     a62:	000002cf          	fnmadd.s	ft5,ft0,ft0,ft0,rne
     a66:	8a41                	andi	a2,a2,16
     a68:	0000                	unimp
     a6a:	2c00                	fld	fs0,24(s0)
     a6c:	03000003          	lb	zero,48(zero) # 30 <__stack_align+0x20>
     a70:	02f0                	addi	a2,sp,332
     a72:	0000                	unimp
     a74:	8a52                	mv	s4,s4
     a76:	0000                	unimp
     a78:	5600                	lw	s0,40(a2)
     a7a:	03000003          	lb	zero,48(zero) # 30 <__stack_align+0x20>
     a7e:	02e6                	slli	t0,t0,0x19
     a80:	0000                	unimp
     a82:	3362                	fld	ft6,56(sp)
     a84:	0001                	nop
     a86:	8000                	.2byte	0x8000
     a88:	0a000003          	lb	zero,160(zero) # a0 <__stack_align+0x90>
     a8c:	000002eb          	.4byte	0x2eb
     a90:	0701                	addi	a4,a4,0
     a92:	4a09                	li	s4,2
     a94:	0000                	unimp
     a96:	aa00                	fsd	fs0,16(a2)
     a98:	0b000003          	lb	zero,176(zero) # b0 <__stack_align+0xa0>
     a9c:	2572                	fld	fa0,280(sp)
     a9e:	8000                	.2byte	0x8000
     aa0:	0000                	unimp
     aa2:	0000                	unimp
     aa4:	000000ab          	.4byte	0xab
     aa8:	0c00                	addi	s0,sp,528
     aaa:	8a08                	.2byte	0x8a08
     aac:	0000                	unimp
     aae:	0000                	unimp
     ab0:	0165                	addi	sp,sp,25
     ab2:	0000                	unimp
     ab4:	0005                	c.nop	1
     ab6:	0801                	addi	a6,a6,0
     ab8:	00000553          	fadd.s	fa0,ft0,ft0,rne
     abc:	5208                	lw	a0,32(a2)
     abe:	0000                	unimp
     ac0:	1d00                	addi	s0,sp,688
     ac2:	0211                	addi	tp,tp,4 # 4 <__tbss_size>
     ac4:	0000                	unimp
     ac6:	0000                	unimp
     ac8:	0000                	unimp
     aca:	2572                	fld	fa0,280(sp)
     acc:	8000                	.2byte	0x8000
     ace:	0000                	unimp
     ad0:	0000                	unimp
     ad2:	0030                	addi	a2,sp,8
     ad4:	0000                	unimp
     ad6:	0000                	unimp
     ad8:	0000                	unimp
     ada:	09e6                	slli	s3,s3,0x19
     adc:	0000                	unimp
     ade:	0801                	addi	a6,a6,0
     ae0:	0505                	addi	a0,a0,1
     ae2:	0000                	unimp
     ae4:	0900                	addi	s0,sp,144
     ae6:	00000183          	lb	gp,0(zero) # 0 <__boot_hart>
     aea:	4117d603          	lhu	a2,1041(a5)
     aee:	0000                	unimp
     af0:	0100                	addi	s0,sp,128
     af2:	0708                	addi	a0,sp,896
     af4:	0034                	addi	a3,sp,8
     af6:	0000                	unimp
     af8:	040a                	slli	s0,s0,0x2
     afa:	6905                	lui	s2,0x1
     afc:	746e                	ld	s0,248(sp)
     afe:	0100                	addi	s0,sp,128
     b00:	0508                	addi	a0,sp,640
     b02:	0000                	unimp
     b04:	0000                	unimp
     b06:	1001                	c.nop	-32
     b08:	dd04                	sw	s1,56(a0)
     b0a:	0000                	unimp
     b0c:	0100                	addi	s0,sp,128
     b0e:	0704                	addi	s1,sp,896
     b10:	0039                	c.nop	14
     b12:	0000                	unimp
     b14:	0101                	addi	sp,sp,0
     b16:	2306                	fld	ft6,64(sp)
     b18:	0000                	unimp
     b1a:	0100                	addi	s0,sp,128
     b1c:	0801                	addi	a6,a6,0
     b1e:	0021                	c.nop	8
     b20:	0000                	unimp
     b22:	0201                	addi	tp,tp,0 # 0 <__boot_hart>
     b24:	e905                	bnez	a0,b54 <__stack_align+0xb44>
     b26:	0000                	unimp
     b28:	0100                	addi	s0,sp,128
     b2a:	0702                	c.slli64	a4
     b2c:	000e                	c.slli	zero,0x3
     b2e:	0000                	unimp
     b30:	8004080b          	.4byte	0x8004080b
     b34:	0000                	unimp
     b36:	0500                	addi	s0,sp,640
     b38:	008c                	addi	a1,sp,64
     b3a:	0000                	unimp
     b3c:	0101                	addi	sp,sp,0
     b3e:	2a08                	fld	fa0,16(a2)
     b40:	0000                	unimp
     b42:	0100                	addi	s0,sp,128
     b44:	0708                	addi	a0,sp,896
     b46:	0000002f          	.4byte	0x2f
     b4a:	4a06                	lw	s4,64(sp)
     b4c:	21000003          	lb	zero,528(zero) # 210 <__stack_align+0x200>
     b50:	0080                	addi	s0,sp,64
     b52:	0000                	unimp
     b54:	00b8                	addi	a4,sp,72
     b56:	0000                	unimp
     b58:	8002                	.2byte	0x8002
     b5a:	0000                	unimp
     b5c:	0200                	addi	s0,sp,256
     b5e:	0048                	addi	a0,sp,4
     b60:	0000                	unimp
     b62:	3502                	fld	fa0,32(sp)
     b64:	0000                	unimp
     b66:	0000                	unimp
     b68:	3506                	fld	fa0,96(sp)
     b6a:	1f000003          	lb	zero,496(zero) # 1f0 <__stack_align+0x1e0>
     b6e:	0080                	addi	s0,sp,64
     b70:	0000                	unimp
     b72:	00d6                	slli	ra,ra,0x15
     b74:	0000                	unimp
     b76:	8202                	jr	tp
     b78:	0000                	unimp
     b7a:	0200                	addi	s0,sp,256
     b7c:	000000db          	.4byte	0xdb
     b80:	3502                	fld	fa0,32(sp)
     b82:	0000                	unimp
     b84:	0000                	unimp
     b86:	e005                	bnez	s0,ba6 <__stack_align+0xb96>
     b88:	0000                	unimp
     b8a:	0400                	addi	s0,sp,512
     b8c:	00d6                	slli	ra,ra,0x15
     b8e:	0000                	unimp
     b90:	0d0c                	addi	a1,sp,656
     b92:	02f5                	addi	t0,t0,29
     b94:	0000                	unimp
     b96:	0301                	addi	t1,t1,0 # fffffffffffe3000 <__heap_end+0xffffffff7ffbf000>
     b98:	7206                	ld	tp,96(sp)
     b9a:	0025                	c.nop	9
     b9c:	0080                	addi	s0,sp,64
     b9e:	0000                	unimp
     ba0:	3000                	fld	fs0,32(s0)
     ba2:	0000                	unimp
     ba4:	0000                	unimp
     ba6:	0000                	unimp
     ba8:	0100                	addi	s0,sp,128
     baa:	619c                	ld	a5,0(a1)
     bac:	0001                	nop
     bae:	0e00                	addi	s0,sp,784
     bb0:	0000031b          	sext.w	t1,zero
     bb4:	0501                	addi	a0,a0,0
     bb6:	8714                	.2byte	0x8714
     bb8:	0000                	unimp
     bba:	0100                	addi	s0,sp,128
     bbc:	0354                	addi	a3,sp,388
     bbe:	033c                	addi	a5,sp,392
     bc0:	0000                	unimp
     bc2:	6106                	ld	sp,64(sp)
     bc4:	0001                	nop
     bc6:	0300                	addi	s0,sp,384
     bc8:	030d                	addi	t1,t1,3
     bca:	0000                	unimp
     bcc:	00016107          	.4byte	0x16107
     bd0:	0300                	addi	s0,sp,384
     bd2:	0300                	addi	s0,sp,384
     bd4:	0000                	unimp
     bd6:	6108                	ld	a0,0(a0)
     bd8:	0001                	nop
     bda:	0300                	addi	s0,sp,384
     bdc:	0329                	addi	t1,t1,10
     bde:	0000                	unimp
     be0:	6109                	addi	sp,sp,128
     be2:	0001                	nop
     be4:	0f00                	addi	s0,sp,912
     be6:	258c                	fld	fa1,8(a1)
     be8:	8000                	.2byte	0x8000
     bea:	0000                	unimp
     bec:	0000                	unimp
     bee:	00b8                	addi	a4,sp,72
     bf0:	0000                	unimp
     bf2:	014d                	addi	sp,sp,19
     bf4:	0000                	unimp
     bf6:	025a0107          	.4byte	0x25a0107
     bfa:	0078                	addi	a4,sp,12
     bfc:	1000                	addi	s0,sp,32
     bfe:	25a2                	fld	fa1,8(sp)
     c00:	8000                	.2byte	0x8000
     c02:	0000                	unimp
     c04:	0000                	unimp
     c06:	009a                	slli	ra,ra,0x6
     c08:	0000                	unimp
     c0a:	015b0107          	.4byte	0x15b0107
     c0e:	0030                	addi	a2,sp,8
     c10:	1100                	addi	s0,sp,160
     c12:	008c                	addi	a1,sp,64
     c14:	0000                	unimp
     c16:	0012                	c.slli	zero,0x4
     c18:	3c00                	fld	fs0,56(s0)
     c1a:	05000003          	lb	zero,80(zero) # 50 <__stack_align+0x40>
     c1e:	0100                	addi	s0,sp,128
     c20:	3608                	fld	fa0,40(a2)
     c22:	0006                	c.slli	zero,0x1
     c24:	1200                	addi	s0,sp,288
     c26:	0052                	c.slli	zero,0x14
     c28:	0000                	unimp
     c2a:	6f1d                	lui	t5,0x7
     c2c:	0002                	c.slli64	zero
     c2e:	0000                	unimp
     c30:	0000                	unimp
     c32:	a200                	fsd	fs0,0(a2)
     c34:	0025                	c.nop	9
     c36:	0080                	addi	s0,sp,64
     c38:	0000                	unimp
     c3a:	4a00                	lw	s0,16(a2)
     c3c:	0000                	unimp
     c3e:	0000                	unimp
     c40:	0000                	unimp
     c42:	c500                	sw	s0,8(a0)
     c44:	000a                	c.slli	zero,0x2
     c46:	0200                	addi	s0,sp,256
     c48:	0601                	addi	a2,a2,0
     c4a:	00000023          	sb	zero,0(zero) # 0 <__boot_hart>
     c4e:	0102                	c.slli64	sp
     c50:	2108                	fld	fa0,0(a0)
     c52:	0000                	unimp
     c54:	0200                	addi	s0,sp,256
     c56:	0502                	c.slli64	a0
     c58:	00e9                	addi	ra,ra,26
     c5a:	0000                	unimp
     c5c:	0202                	c.slli64	tp
     c5e:	00000e07          	.4byte	0xe07
     c62:	0100                	addi	s0,sp,128
     c64:	036c                	addi	a1,sp,396
     c66:	0000                	unimp
     c68:	4d04                	lw	s1,24(a0)
     c6a:	5618                	lw	a4,40(a2)
     c6c:	0000                	unimp
     c6e:	1300                	addi	s0,sp,416
     c70:	0504                	addi	s1,sp,640
     c72:	6e69                	lui	t3,0x1a
     c74:	0074                	addi	a3,sp,12
     c76:	0402                	c.slli64	s0
     c78:	00003907          	fld	fs2,0(zero) # 0 <__boot_hart>
     c7c:	0200                	addi	s0,sp,256
     c7e:	0508                	addi	a0,sp,640
     c80:	0005                	c.nop	1
     c82:	0000                	unimp
     c84:	5d01                	li	s10,-32
     c86:	0002                	c.slli64	zero
     c88:	0400                	addi	s0,sp,512
     c8a:	1969                	addi	s2,s2,-6 # ffa <__stack_align+0xfea>
     c8c:	00000077          	.4byte	0x77
     c90:	0802                	c.slli64	a6
     c92:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
     c96:	0100                	addi	s0,sp,128
     c98:	024a                	slli	tp,tp,0x12
     c9a:	0000                	unimp
     c9c:	e804                	sd	s1,16(s0)
     c9e:	771a                	ld	a4,416(sp)
     ca0:	0000                	unimp
     ca2:	0100                	addi	s0,sp,128
     ca4:	036e                	slli	t1,t1,0x1b
     ca6:	0000                	unimp
     ca8:	2c05                	addiw	s8,s8,1
     caa:	00004a13          	xori	s4,zero,0
     cae:	0100                	addi	s0,sp,128
     cb0:	025f 0000 3c05      	.byte	0x5f, 0x02, 0x00, 0x00, 0x05, 0x3c
     cb6:	6b14                	ld	a3,16(a4)
     cb8:	0000                	unimp
     cba:	0800                	addi	s0,sp,16
     cbc:	0096                	slli	ra,ra,0x5
     cbe:	0000                	unimp
     cc0:	4c01                	li	s8,0
     cc2:	0002                	c.slli64	zero
     cc4:	0500                	addi	s0,sp,640
     cc6:	1552                	slli	a0,a0,0x34
     cc8:	007e                	c.slli	zero,0x1f
     cca:	0000                	unimp
     ccc:	9401                	srai	s0,s0,0x20
     cce:	02000003          	lb	zero,32(zero) # 20 <__stack_align+0x10>
     cd2:	008a111b          	slliw	sp,s4,0x8
     cd6:	0000                	unimp
     cd8:	b314                	fsd	fa3,32(a4)
     cda:	0000                	unimp
     cdc:	1500                	addi	s0,sp,672
     cde:	0304                	addi	s1,sp,384
     ce0:	0906                	slli	s2,s2,0x1
     ce2:	000000db          	.4byte	0xdb
     ce6:	7b16                	ld	s6,352(sp)
     ce8:	03000003          	lb	zero,48(zero) # 30 <__stack_align+0x20>
     cec:	00b30e07          	.4byte	0xb30e07
     cf0:	0000                	unimp
     cf2:	0000                	unimp
     cf4:	5101                	li	sp,-32
     cf6:	03000003          	lb	zero,48(zero) # 30 <__stack_align+0x20>
     cfa:	0308                	addi	a0,sp,384
     cfc:	00c4                	addi	s1,sp,68
     cfe:	0000                	unimp
     d00:	6509                	lui	a0,0x2
     d02:	06000003          	lb	zero,96(zero) # 60 <__stack_align+0x50>
     d06:	00a2                	slli	ra,ra,0x8
     d08:	0000                	unimp
     d0a:	5c09                	li	s8,-30
     d0c:	07000003          	lb	zero,112(zero) # 70 <__stack_align+0x60>
     d10:	00a2                	slli	ra,ra,0x8
     d12:	0000                	unimp
     d14:	e70a                	sd	sp,392(sp)
     d16:	0000                	unimp
     d18:	0700                	addi	s0,sp,896
     d1a:	0309                	addi	t1,t1,2
     d1c:	2e40                	fld	fs0,152(a2)
     d1e:	8000                	.2byte	0x8000
     d20:	0000                	unimp
     d22:	0000                	unimp
     d24:	f10a                	sd	sp,160(sp)
     d26:	0000                	unimp
     d28:	0800                	addi	s0,sp,16
     d2a:	0309                	addi	t1,t1,2
     d2c:	2e48                	fld	fa0,152(a2)
     d2e:	8000                	.2byte	0x8000
     d30:	0000                	unimp
     d32:	0000                	unimp
     d34:	00037617          	auipc	a2,0x37
     d38:	0100                	addi	s0,sp,128
     d3a:	130a                	slli	t1,t1,0x22
     d3c:	000000db          	.4byte	0xdb
     d40:	0309                	addi	t1,t1,2
     d42:	2f98                	fld	fa4,24(a5)
     d44:	8000                	.2byte	0x8000
     d46:	0000                	unimp
     d48:	0000                	unimp
     d4a:	3d18                	fld	fa4,56(a0)
     d4c:	0002                	c.slli64	zero
     d4e:	0100                	addi	s0,sp,128
     d50:	060c                	addi	a1,sp,768
     d52:	0064                	addi	s1,sp,12
     d54:	0000                	unimp
     d56:	25a2                	fld	fa1,8(sp)
     d58:	8000                	.2byte	0x8000
     d5a:	0000                	unimp
     d5c:	0000                	unimp
     d5e:	004a                	c.slli	zero,0x12
     d60:	0000                	unimp
     d62:	0000                	unimp
     d64:	0000                	unimp
     d66:	9c01                	subw	s0,s0,s0
     d68:	0289                	addi	t0,t0,2
     d6a:	0000                	unimp
     d6c:	6105                	addi	sp,sp,32
     d6e:	0030                	addi	a2,sp,8
     d70:	961c                	.2byte	0x961c
     d72:	0000                	unimp
     d74:	ca00                	sw	s0,16(a2)
     d76:	19000003          	lb	zero,400(zero) # 190 <__stack_align+0x180>
     d7a:	3161                	addiw	sp,sp,-8
     d7c:	0100                	addi	s0,sp,128
     d7e:	290c                	fld	fa1,16(a0)
     d80:	0096                	slli	ra,ra,0x5
     d82:	0000                	unimp
     d84:	5b01                	li	s6,-32
     d86:	6105                	addi	sp,sp,32
     d88:	0032                	c.slli	zero,0xc
     d8a:	9636                	add	a2,a2,a3
     d8c:	0000                	unimp
     d8e:	f400                	sd	s0,40(s0)
     d90:	05000003          	lb	zero,80(zero) # 50 <__stack_align+0x40>
     d94:	006e                	c.slli	zero,0x1b
     d96:	7748                	ld	a0,168(a4)
     d98:	0000                	unimp
     d9a:	3200                	fld	fs0,32(a2)
     d9c:	0004                	.2byte	0x4
     d9e:	0b00                	addi	s0,sp,400
     da0:	7562                	ld	a0,56(sp)
     da2:	0066                	c.slli	zero,0x19
     da4:	170e                	slli	a4,a4,0x23
     da6:	0299                	addi	t0,t0,6
     da8:	0000                	unimp
     daa:	9102                	jalr	sp
     dac:	0b40                	addi	s0,sp,404
     dae:	0f006373          	csrrsi	t1,0xf0,0
     db2:	960e                	add	a2,a2,gp
     db4:	0000                	unimp
     db6:	0100                	addi	s0,sp,128
     db8:	0c5c                	addi	a5,sp,532
     dba:	02ba                	slli	t0,t0,0xe
     dbc:	0000                	unimp
     dbe:	25b8                	fld	fa4,72(a1)
     dc0:	8000                	.2byte	0x8000
     dc2:	0000                	unimp
     dc4:	0000                	unimp
     dc6:	000c                	.2byte	0xc
     dc8:	0000                	unimp
     dca:	0000                	unimp
     dcc:	0000                	unimp
     dce:	00021717          	auipc	a4,0x21
     dd2:	0300                	addi	s0,sp,384
     dd4:	02c5                	addi	t0,t0,17
     dd6:	0000                	unimp
     dd8:	045c                	addi	a5,sp,516
     dda:	0000                	unimp
     ddc:	eb1a                	sd	t1,400(sp)
     dde:	0002                	c.slli64	zero
     de0:	b800                	fsd	fs0,48(s0)
     de2:	0025                	c.nop	9
     de4:	0080                	addi	s0,sp,64
     de6:	0000                	unimp
     de8:	0c00                	addi	s0,sp,528
     dea:	0000                	unimp
     dec:	0300                	addi	s0,sp,384
     dee:	0e12                	slli	t3,t3,0x4
     df0:	01f9                	addi	gp,gp,30 # 8000371e <__global_pointer$+0x1e>
     df2:	0000                	unimp
     df4:	00030203          	lb	tp,0(t1)
     df8:	7900                	ld	s0,48(a0)
     dfa:	0004                	.2byte	0x4
     dfc:	0300                	addi	s0,sp,384
     dfe:	02f9                	addi	t0,t0,30
     e00:	0000                	unimp
     e02:	0000048f          	.4byte	0x48f
     e06:	00000c1b          	sext.w	s8,zero
     e0a:	1c00                	addi	s0,sp,560
     e0c:	0000030b          	.4byte	0x30b
     e10:	0000                	unimp
     e12:	160d                	addi	a2,a2,-29 # 37d17 <__heap_size+0x17d17>
     e14:	ba000003          	lb	zero,-1120(zero) # fffffffffffffba0 <__heap_end+0xffffffff7ffdbba0>
     e18:	0025                	c.nop	9
     e1a:	0080                	addi	s0,sp,64
     e1c:	0000                	unimp
     e1e:	0200                	addi	s0,sp,256
     e20:	0000                	unimp
     e22:	0000                	unimp
     e24:	0000                	unimp
     e26:	1000                	addi	s0,sp,32
     e28:	1d10                	addi	a2,sp,688
     e2a:	0324                	addi	s1,sp,392
     e2c:	0000                	unimp
     e2e:	0000                	unimp
     e30:	330e                	fld	ft6,224(sp)
     e32:	c4000003          	lb	zero,-960(zero) # fffffffffffffc40 <__heap_end+0xffffffff7ffdbc40>
     e36:	0025                	c.nop	9
     e38:	0080                	addi	s0,sp,64
     e3a:	0000                	unimp
     e3c:	0400                	addi	s0,sp,512
     e3e:	0000                	unimp
     e40:	0000                	unimp
     e42:	0000                	unimp
     e44:	1800                	addi	s0,sp,48
     e46:	9e0c                	.2byte	0x9e0c
     e48:	0002                	c.slli64	zero
     e4a:	de00                	sw	s0,56(a2)
     e4c:	0025                	c.nop	9
     e4e:	0080                	addi	s0,sp,64
     e50:	0000                	unimp
     e52:	0400                	addi	s0,sp,512
     e54:	0000                	unimp
     e56:	0000                	unimp
     e58:	0000                	unimp
     e5a:	1c00                	addi	s0,sp,560
     e5c:	0272                	slli	tp,tp,0x1c
     e5e:	0000                	unimp
     e60:	0002a903          	lw	s2,0(t0)
     e64:	ac00                	fsd	fs0,24(s0)
     e66:	0004                	.2byte	0x4
     e68:	0d00                	addi	s0,sp,656
     e6a:	02d1                	addi	t0,t0,20
     e6c:	0000                	unimp
     e6e:	25de                	fld	fa1,464(sp)
     e70:	8000                	.2byte	0x8000
     e72:	0000                	unimp
     e74:	0000                	unimp
     e76:	0004                	.2byte	0x4
     e78:	0000                	unimp
     e7a:	0000                	unimp
     e7c:	0000                	unimp
     e7e:	dc030517          	auipc	a0,0xdc030
     e82:	0002                	c.slli64	zero
     e84:	ac00                	fsd	fs0,24(s0)
     e86:	0004                	.2byte	0x4
     e88:	0000                	unimp
     e8a:	0e00                	addi	s0,sp,784
     e8c:	0339                	addi	t1,t1,14
     e8e:	0000                	unimp
     e90:	25e2                	fld	fa1,24(sp)
     e92:	8000                	.2byte	0x8000
     e94:	0000                	unimp
     e96:	0000                	unimp
     e98:	0004                	.2byte	0x4
     e9a:	0000                	unimp
     e9c:	0000                	unimp
     e9e:	0000                	unimp
     ea0:	001e                	c.slli	zero,0x7
     ea2:	a21e                	fsd	ft7,256(sp)
     ea4:	0000                	unimp
     ea6:	9900                	.2byte	0x9900
     ea8:	0002                	c.slli64	zero
     eaa:	1f00                	addi	s0,sp,944
     eac:	00000077          	.4byte	0x77
     eb0:	89080007          	.4byte	0x89080007
     eb4:	0002                	c.slli64	zero
     eb6:	0600                	addi	s0,sp,768
     eb8:	000003b3          	add	t2,zero,zero
     ebc:	02b51503          	lh	a0,43(a0) # ffffffffdc030ea9 <__heap_end+0xffffffff5c00cea9>
     ec0:	0000                	unimp
     ec2:	00037b0f          	.4byte	0x37b0f
     ec6:	1500                	addi	s0,sp,672
     ec8:	b52c                	fsd	fa1,104(a0)
     eca:	0002                	c.slli64	zero
     ecc:	0000                	unimp
     ece:	0000db07          	.4byte	0xdb07
     ed2:	0600                	addi	s0,sp,768
     ed4:	03a9                	addi	t2,t2,10
     ed6:	0000                	unimp
     ed8:	02d10c03          	lb	s8,45(sp)
     edc:	0000                	unimp
     ede:	00037b0f          	.4byte	0x37b0f
     ee2:	0c00                	addi	s0,sp,528
     ee4:	b52a                	fsd	fa0,168(sp)
     ee6:	0002                	c.slli64	zero
     ee8:	0000                	unimp
     eea:	bf06                	fsd	ft1,440(sp)
     eec:	02000003          	lb	zero,32(zero) # 20 <__stack_align+0x10>
     ef0:	e63c                	sd	a5,72(a2)
     ef2:	0002                	c.slli64	zero
     ef4:	0400                	addi	s0,sp,512
     ef6:	0070                	addi	a2,sp,12
     ef8:	333c                	fld	fa5,96(a4)
     efa:	02e6                	slli	t0,t0,0x19
     efc:	0000                	unimp
     efe:	0700                	addi	s0,sp,896
     f00:	000000b3          	add	ra,zero,zero
     f04:	8010                	.2byte	0x8010
     f06:	28000003          	lb	zero,640(zero) # 280 <__stack_align+0x270>
     f0a:	0064                	addi	s1,sp,12
     f0c:	0000                	unimp
     f0e:	0316                	slli	t1,t1,0x5
     f10:	0000                	unimp
     f12:	7004                	ld	s1,32(s0)
     f14:	2800                	fld	fs0,16(s0)
     f16:	e632                	sd	a2,264(sp)
     f18:	0002                	c.slli64	zero
     f1a:	0400                	addi	s0,sp,512
     f1c:	0076                	c.slli	zero,0x1d
     f1e:	3e28                	fld	fa0,120(a2)
     f20:	000000b3          	add	ra,zero,zero
     f24:	6e20                	ld	s0,88(a2)
     f26:	0200                	addi	s0,sp,256
     f28:	0a2a                	slli	s4,s4,0xa
     f2a:	0064                	addi	s1,sp,12
     f2c:	0000                	unimp
     f2e:	1000                	addi	s0,sp,32
     f30:	039d                	addi	t2,t2,7
     f32:	0000                	unimp
     f34:	641d                	lui	s0,0x7
     f36:	0000                	unimp
     f38:	2e00                	fld	fs0,24(a2)
     f3a:	04000003          	lb	zero,64(zero) # 40 <__stack_align+0x30>
     f3e:	0070                	addi	a2,sp,12
     f40:	301d                	.2byte	0x301d
     f42:	032e                	slli	t1,t1,0xb
     f44:	0000                	unimp
     f46:	0700                	addi	s0,sp,896
     f48:	000000bf 626d7711 	.8byte	0x626d7711000000bf
     f50:	1600                	addi	s0,sp,800
     f52:	7211                	lui	tp,0xfffe4
     f54:	626d                	lui	tp,0x1b
     f56:	1500                	addi	s0,sp,672
     f58:	e000                	sd	s0,0(s0)
     f5a:	0000                	unimp
     f5c:	0500                	addi	s0,sp,640
     f5e:	0100                	addi	s0,sp,128
     f60:	1e08                	addi	a0,sp,816
     f62:	0008                	.2byte	0x8
     f64:	0400                	addi	s0,sp,512
     f66:	0052                	c.slli	zero,0x14
     f68:	0000                	unimp
     f6a:	921d                	srli	a2,a2,0x27
     f6c:	0002                	c.slli64	zero
     f6e:	0000                	unimp
     f70:	0000                	unimp
     f72:	ec00                	sd	s0,24(s0)
     f74:	0025                	c.nop	9
     f76:	0080                	addi	s0,sp,64
     f78:	0000                	unimp
     f7a:	2200                	fld	fs0,0(a2)
     f7c:	0000                	unimp
     f7e:	0000                	unimp
     f80:	0000                	unimp
     f82:	a700                	fsd	fs0,8(a4)
     f84:	000c                	.2byte	0xc
     f86:	0100                	addi	s0,sp,128
     f88:	0508                	addi	a0,sp,640
     f8a:	0005                	c.nop	1
     f8c:	0000                	unimp
     f8e:	0801                	addi	a6,a6,0
     f90:	00003407          	fld	fs0,0(zero) # 0 <__boot_hart>
     f94:	0500                	addi	s0,sp,640
     f96:	0504                	addi	s1,sp,640
     f98:	6e69                	lui	t3,0x1a
     f9a:	0074                	addi	a3,sp,12
     f9c:	0801                	addi	a6,a6,0
     f9e:	0005                	c.nop	1
     fa0:	0000                	unimp
     fa2:	0100                	addi	s0,sp,128
     fa4:	0410                	addi	a2,sp,512
     fa6:	00dd                	addi	ra,ra,23
     fa8:	0000                	unimp
     faa:	0101                	addi	sp,sp,0
     fac:	2306                	fld	ft6,64(sp)
     fae:	0000                	unimp
     fb0:	0100                	addi	s0,sp,128
     fb2:	0801                	addi	a6,a6,0
     fb4:	0021                	c.nop	8
     fb6:	0000                	unimp
     fb8:	0201                	addi	tp,tp,0 # 1b000 <__stack_size+0x13000>
     fba:	e905                	bnez	a0,fea <__stack_align+0xfda>
     fbc:	0000                	unimp
     fbe:	0100                	addi	s0,sp,128
     fc0:	0702                	c.slli64	a4
     fc2:	000e                	c.slli	zero,0x3
     fc4:	0000                	unimp
     fc6:	0401                	addi	s0,s0,0 # 7000 <__stack_size_min+0x1000>
     fc8:	00003907          	fld	fs2,0(zero) # 0 <__boot_hart>
     fcc:	0200                	addi	s0,sp,256
     fce:	025d                	addi	tp,tp,23 # 17 <__stack_align+0x7>
     fd0:	0000                	unimp
     fd2:	6902                	ld	s2,0(sp)
     fd4:	3519                	addiw	a0,a0,-26
     fd6:	0000                	unimp
     fd8:	0200                	addi	s0,sp,256
     fda:	025f 0000 3c03      	.byte	0x5f, 0x02, 0x00, 0x00, 0x03, 0x3c
     fe0:	7414                	ld	a3,40(s0)
     fe2:	0000                	unimp
     fe4:	0600                	addi	s0,sp,768
     fe6:	0080                	addi	s0,sp,64
     fe8:	0000                	unimp
     fea:	0101                	addi	sp,sp,0
     fec:	2a08                	fld	fa0,16(a2)
     fee:	0000                	unimp
     ff0:	0300                	addi	s0,sp,384
     ff2:	0365                	addi	t1,t1,25
     ff4:	0000                	unimp
     ff6:	8c06                	mv	s8,ra
     ff8:	0000                	unimp
     ffa:	0300                	addi	s0,sp,384
     ffc:	035c                	addi	a5,sp,388
     ffe:	0000                	unimp
    1000:	00008c07          	.4byte	0x8c07
    1004:	0700                	addi	s0,sp,896
    1006:	02d5                	addi	t0,t0,21
    1008:	0000                	unimp
    100a:	0401                	addi	s0,s0,0
    100c:	ec21                	bnez	s0,1064 <__stack_align+0x1054>
    100e:	0025                	c.nop	9
    1010:	0080                	addi	s0,sp,64
    1012:	0000                	unimp
    1014:	2200                	fld	fs0,0(a2)
    1016:	0000                	unimp
    1018:	0000                	unimp
    101a:	0000                	unimp
    101c:	0100                	addi	s0,sp,128
    101e:	089c                	addi	a5,sp,80
    1020:	000002eb          	.4byte	0x2eb
    1024:	0401                	addi	s0,s0,0
    1026:	00003c2b          	.4byte	0x3c2b
    102a:	0100                	addi	s0,sp,128
    102c:	095a                	slli	s2,s2,0x16
    102e:	00646d63          	bltu	s0,t1,1048 <__stack_align+0x1038>
    1032:	0601                	addi	a2,a2,0
    1034:	800e                	c.mv	zero,gp
    1036:	0000                	unimp
    1038:	0100                	addi	s0,sp,128
    103a:	5f 00 00            	Address 0x000000000000103a is out of bounds.


Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	2401                	sext.w	s0,s0
   2:	0b00                	addi	s0,sp,400
   4:	030b3e0b          	.4byte	0x30b3e0b
   8:	000e                	c.slli	zero,0x3
   a:	0200                	addi	s0,sp,256
   c:	0111                	addi	sp,sp,4
   e:	0e25                	addi	t3,t3,9 # 1a009 <__stack_size+0x12009>
  10:	1f030b13          	addi	s6,t1,496
  14:	01111f1b          	slliw	t5,sp,0x11
  18:	0712                	slli	a4,a4,0x4
  1a:	1710                	addi	a2,sp,928
  1c:	0000                	unimp
  1e:	0b002403          	lw	s0,176(zero) # b0 <__stack_align+0xa0>
  22:	030b3e0b          	.4byte	0x30b3e0b
  26:	0008                	.2byte	0x8
  28:	0400                	addi	s0,sp,512
  2a:	002e                	c.slli	zero,0xb
  2c:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
  34:	0b39                	addi	s6,s6,14
  36:	13491927          	.4byte	0x13491927
  3a:	193c                	addi	a5,sp,184
  3c:	0000                	unimp
  3e:	0f05                	addi	t5,t5,1 # 7001 <__stack_size_min+0x1001>
  40:	0b00                	addi	s0,sp,400
  42:	0013490b          	.4byte	0x13490b
  46:	0600                	addi	s0,sp,768
  48:	012e                	slli	sp,sp,0xb
  4a:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
  52:	0b39                	addi	s6,s6,14
  54:	13491927          	.4byte	0x13491927
  58:	0111                	addi	sp,sp,4
  5a:	0712                	slli	a4,a4,0x4
  5c:	1840                	addi	s0,sp,52
  5e:	197a                	slli	s2,s2,0x3e
  60:	0000                	unimp
  62:	03000507          	.4byte	0x3000507
  66:	3a0e                	fld	fs4,224(sp)
  68:	390b3b0b          	.4byte	0x390b3b0b
  6c:	0213490b          	.4byte	0x213490b
  70:	08000017          	auipc	zero,0x8000
  74:	0048                	addi	a0,sp,4
  76:	017d                	addi	sp,sp,31
  78:	137f                	.2byte	0x137f
  7a:	0000                	unimp
  7c:	0100                	addi	s0,sp,128
  7e:	0016                	c.slli	zero,0x5
  80:	0b3a0e03          	lb	t3,179(s4)
  84:	0b390b3b          	.4byte	0xb390b3b
  88:	1349                	addi	t1,t1,-14
  8a:	0000                	unimp
  8c:	0d02                	c.slli64	s10
  8e:	0300                	addi	s0,sp,384
  90:	3a0e                	fld	fs4,224(sp)
  92:	390b3b0b          	.4byte	0x390b3b0b
  96:	3813490b          	.4byte	0x3813490b
  9a:	0300000b          	.4byte	0x300000b
  9e:	0024                	addi	s1,sp,8
  a0:	0b3e0b0b          	.4byte	0xb3e0b0b
  a4:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
  a8:	1304                	addi	s1,sp,416
  aa:	0301                	addi	t1,t1,0
  ac:	0b0e                	slli	s6,s6,0x3
  ae:	3b0b3a0b          	.4byte	0x3b0b3a0b
  b2:	0821390b          	.4byte	0x821390b
  b6:	1301                	addi	t1,t1,-32
  b8:	0000                	unimp
  ba:	0f05                	addi	t5,t5,1
  bc:	0b00                	addi	s0,sp,400
  be:	0821                	addi	a6,a6,8
  c0:	1349                	addi	t1,t1,-14
  c2:	0000                	unimp
  c4:	1106                	slli	sp,sp,0x21
  c6:	2501                	sext.w	a0,a0
  c8:	130e                	slli	t1,t1,0x23
  ca:	1b1f030b          	.4byte	0x1b1f030b
  ce:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
  d4:	07000017          	auipc	zero,0x7000
  d8:	0024                	addi	s1,sp,8
  da:	0b3e0b0b          	.4byte	0xb3e0b0b
  de:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
  e2:	0108                	addi	a0,sp,128
  e4:	4901                	li	s2,0
  e6:	00130113          	addi	sp,t1,1
  ea:	0900                	addi	s0,sp,144
  ec:	0021                	c.nop	8
  ee:	1349                	addi	t1,t1,-14
  f0:	00000b2f          	.4byte	0xb2f
  f4:	2e0a                	fld	ft8,128(sp)
  f6:	3f00                	fld	fs0,56(a4)
  f8:	0319                	addi	t1,t1,6
  fa:	3a0e                	fld	fs4,224(sp)
  fc:	390b3b0b          	.4byte	0x390b3b0b
 100:	4919270b          	.4byte	0x4919270b
 104:	00193c13          	seqz	s8,s2
 108:	0b00                	addi	s0,sp,400
 10a:	012e                	slli	sp,sp,0xb
 10c:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 114:	0b39                	addi	s6,s6,14
 116:	13491927          	.4byte	0x13491927
 11a:	0111                	addi	sp,sp,4
 11c:	0712                	slli	a4,a4,0x4
 11e:	1840                	addi	s0,sp,52
 120:	197a                	slli	s2,s2,0x3e
 122:	1301                	addi	t1,t1,-32
 124:	0000                	unimp
 126:	050c                	addi	a1,sp,640
 128:	0300                	addi	s0,sp,384
 12a:	3a0e                	fld	fs4,224(sp)
 12c:	390b3b0b          	.4byte	0x390b3b0b
 130:	0213490b          	.4byte	0x213490b
 134:	0d000017          	auipc	zero,0xd000
 138:	0005                	c.nop	1
 13a:	0b3a0803          	lb	a6,179(s4)
 13e:	0b390b3b          	.4byte	0xb390b3b
 142:	1349                	addi	t1,t1,-14
 144:	1702                	slli	a4,a4,0x20
 146:	0000                	unimp
 148:	480e                	lw	a6,192(sp)
 14a:	7d00                	ld	s0,56(a0)
 14c:	7f01                	lui	t5,0xfffe0
 14e:	00000013          	nop
 152:	2401                	sext.w	s0,s0
 154:	0b00                	addi	s0,sp,400
 156:	030b3e0b          	.4byte	0x30b3e0b
 15a:	000e                	c.slli	zero,0x3
 15c:	0200                	addi	s0,sp,256
 15e:	0111                	addi	sp,sp,4
 160:	0e25                	addi	t3,t3,9
 162:	1f030b13          	addi	s6,t1,496
 166:	01111f1b          	slliw	t5,sp,0x11
 16a:	0712                	slli	a4,a4,0x4
 16c:	1710                	addi	a2,sp,928
 16e:	0000                	unimp
 170:	0b002403          	lw	s0,176(zero) # b0 <__stack_align+0xa0>
 174:	030b3e0b          	.4byte	0x30b3e0b
 178:	0008                	.2byte	0x8
 17a:	0400                	addi	s0,sp,512
 17c:	012e                	slli	sp,sp,0xb
 17e:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 186:	0b39                	addi	s6,s6,14
 188:	13491927          	.4byte	0x13491927
 18c:	0111                	addi	sp,sp,4
 18e:	0712                	slli	a4,a4,0x4
 190:	1840                	addi	s0,sp,52
 192:	197a                	slli	s2,s2,0x3e
 194:	0000                	unimp
 196:	0505                	addi	a0,a0,1
 198:	0300                	addi	s0,sp,384
 19a:	3a0e                	fld	fs4,224(sp)
 19c:	390b3b0b          	.4byte	0x390b3b0b
 1a0:	0213490b          	.4byte	0x213490b
 1a4:	00000017          	auipc	zero,0x0
 1a8:	2401                	sext.w	s0,s0
 1aa:	0b00                	addi	s0,sp,400
 1ac:	030b3e0b          	.4byte	0x30b3e0b
 1b0:	000e                	c.slli	zero,0x3
 1b2:	0200                	addi	s0,sp,256
 1b4:	0016                	c.slli	zero,0x5
 1b6:	0b3a0e03          	lb	t3,179(s4)
 1ba:	0b390b3b          	.4byte	0xb390b3b
 1be:	1349                	addi	t1,t1,-14
 1c0:	0000                	unimp
 1c2:	03000503          	lb	a0,48(zero) # 30 <__stack_align+0x20>
 1c6:	3a08                	fld	fa0,48(a2)
 1c8:	0121                	addi	sp,sp,8
 1ca:	3905213b          	.4byte	0x3905213b
 1ce:	0213490b          	.4byte	0x213490b
 1d2:	04000017          	auipc	zero,0x4000
 1d6:	0111                	addi	sp,sp,4
 1d8:	0e25                	addi	t3,t3,9
 1da:	1f030b13          	addi	s6,t1,496
 1de:	01111f1b          	slliw	t5,sp,0x11
 1e2:	0712                	slli	a4,a4,0x4
 1e4:	1710                	addi	a2,sp,928
 1e6:	0000                	unimp
 1e8:	2405                	addiw	s0,s0,1
 1ea:	0b00                	addi	s0,sp,400
 1ec:	030b3e0b          	.4byte	0x30b3e0b
 1f0:	0008                	.2byte	0x8
 1f2:	0600                	addi	s0,sp,768
 1f4:	002e                	c.slli	zero,0xb
 1f6:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 1fe:	0b39                	addi	s6,s6,14
 200:	13491927          	.4byte	0x13491927
 204:	193c                	addi	a5,sp,184
 206:	0000                	unimp
 208:	0b000f07          	.4byte	0xb000f07
 20c:	0013490b          	.4byte	0x13490b
 210:	0800                	addi	s0,sp,16
 212:	012e                	slli	sp,sp,0xb
 214:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 21c:	0b39                	addi	s6,s6,14
 21e:	13491927          	.4byte	0x13491927
 222:	0111                	addi	sp,sp,4
 224:	0712                	slli	a4,a4,0x4
 226:	1840                	addi	s0,sp,52
 228:	197a                	slli	s2,s2,0x3e
 22a:	0000                	unimp
 22c:	0509                	addi	a0,a0,2
 22e:	0300                	addi	s0,sp,384
 230:	3a0e                	fld	fs4,224(sp)
 232:	390b3b0b          	.4byte	0x390b3b0b
 236:	0213490b          	.4byte	0x213490b
 23a:	0a000017          	auipc	zero,0xa000
 23e:	0048                	addi	a0,sp,4
 240:	017d                	addi	sp,sp,31
 242:	137f                	.2byte	0x137f
 244:	0000                	unimp
 246:	0100                	addi	s0,sp,128
 248:	0024                	addi	s1,sp,8
 24a:	0b3e0b0b          	.4byte	0xb3e0b0b
 24e:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 252:	1602                	slli	a2,a2,0x20
 254:	0300                	addi	s0,sp,384
 256:	3a0e                	fld	fs4,224(sp)
 258:	390b3b0b          	.4byte	0x390b3b0b
 25c:	0013490b          	.4byte	0x13490b
 260:	0300                	addi	s0,sp,384
 262:	0005                	c.nop	1
 264:	213a0803          	lb	a6,531(s4)
 268:	3b01                	addiw	s6,s6,-32
 26a:	0521                	addi	a0,a0,8
 26c:	0b39                	addi	s6,s6,14
 26e:	1349                	addi	t1,t1,-14
 270:	1702                	slli	a4,a4,0x20
 272:	0000                	unimp
 274:	1104                	addi	s1,sp,160
 276:	2501                	sext.w	a0,a0
 278:	130e                	slli	t1,t1,0x23
 27a:	1b1f030b          	.4byte	0x1b1f030b
 27e:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
 284:	05000017          	auipc	zero,0x5000
 288:	0024                	addi	s1,sp,8
 28a:	0b3e0b0b          	.4byte	0xb3e0b0b
 28e:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 292:	0f06                	slli	t5,t5,0x1
 294:	0b00                	addi	s0,sp,400
 296:	0700000b          	.4byte	0x700000b
 29a:	002e                	c.slli	zero,0xb
 29c:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 2a4:	0b39                	addi	s6,s6,14
 2a6:	13491927          	.4byte	0x13491927
 2aa:	193c                	addi	a5,sp,184
 2ac:	0000                	unimp
 2ae:	0f08                	addi	a0,sp,912
 2b0:	0b00                	addi	s0,sp,400
 2b2:	0013490b          	.4byte	0x13490b
 2b6:	0900                	addi	s0,sp,144
 2b8:	012e                	slli	sp,sp,0xb
 2ba:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 2c2:	0b39                	addi	s6,s6,14
 2c4:	13491927          	.4byte	0x13491927
 2c8:	0111                	addi	sp,sp,4
 2ca:	0712                	slli	a4,a4,0x4
 2cc:	1840                	addi	s0,sp,52
 2ce:	197a                	slli	s2,s2,0x3e
 2d0:	0000                	unimp
 2d2:	050a                	slli	a0,a0,0x2
 2d4:	0300                	addi	s0,sp,384
 2d6:	3a0e                	fld	fs4,224(sp)
 2d8:	390b3b0b          	.4byte	0x390b3b0b
 2dc:	0213490b          	.4byte	0x213490b
 2e0:	0b000017          	auipc	zero,0xb000
 2e4:	0048                	addi	a0,sp,4
 2e6:	017d                	addi	sp,sp,31
 2e8:	137f                	.2byte	0x137f
 2ea:	0000                	unimp
 2ec:	0100                	addi	s0,sp,128
 2ee:	0024                	addi	s1,sp,8
 2f0:	0b3e0b0b          	.4byte	0xb3e0b0b
 2f4:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 2f8:	0f02                	c.slli64	t5
 2fa:	0b00                	addi	s0,sp,400
 2fc:	0821                	addi	a6,a6,8
 2fe:	1349                	addi	t1,t1,-14
 300:	0000                	unimp
 302:	03003403          	ld	s0,48(zero) # 30 <__stack_align+0x20>
 306:	3a0e                	fld	fs4,224(sp)
 308:	0121                	addi	sp,sp,8
 30a:	0b390b3b          	.4byte	0xb390b3b
 30e:	1349                	addi	t1,t1,-14
 310:	193c193f 34040000 	.8byte	0x34040000193c193f
 318:	0300                	addi	s0,sp,384
 31a:	3a0e                	fld	fs4,224(sp)
 31c:	0121                	addi	sp,sp,8
 31e:	21390b3b          	.4byte	0x21390b3b
 322:	0213490b          	.4byte	0x213490b
 326:	05000017          	auipc	zero,0x5000
 32a:	0111                	addi	sp,sp,4
 32c:	0e25                	addi	t3,t3,9
 32e:	1f030b13          	addi	s6,t1,496
 332:	01111f1b          	slliw	t5,sp,0x11
 336:	0712                	slli	a4,a4,0x4
 338:	1710                	addi	a2,sp,928
 33a:	0000                	unimp
 33c:	1606                	slli	a2,a2,0x21
 33e:	0300                	addi	s0,sp,384
 340:	3a0e                	fld	fs4,224(sp)
 342:	390b3b0b          	.4byte	0x390b3b0b
 346:	0013490b          	.4byte	0x13490b
 34a:	0700                	addi	s0,sp,896
 34c:	0024                	addi	s1,sp,8
 34e:	0b3e0b0b          	.4byte	0xb3e0b0b
 352:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 356:	0f08                	addi	a0,sp,912
 358:	0b00                	addi	s0,sp,400
 35a:	0900000b          	.4byte	0x900000b
 35e:	0101                	addi	sp,sp,0
 360:	1349                	addi	t1,t1,-14
 362:	1301                	addi	t1,t1,-32
 364:	0000                	unimp
 366:	210a                	fld	ft2,128(sp)
 368:	0000                	unimp
 36a:	0b00                	addi	s0,sp,400
 36c:	0034                	addi	a3,sp,8
 36e:	0b3a0e03          	lb	t3,179(s4)
 372:	0b390b3b          	.4byte	0xb390b3b
 376:	1349                	addi	t1,t1,-14
 378:	1802                	slli	a6,a6,0x20
 37a:	0000                	unimp
 37c:	2e0c                	fld	fa1,24(a2)
 37e:	3f00                	fld	fs0,56(a4)
 380:	0319                	addi	t1,t1,6
 382:	3a0e                	fld	fs4,224(sp)
 384:	390b3b0b          	.4byte	0x390b3b0b
 388:	4919270b          	.4byte	0x4919270b
 38c:	00193c13          	seqz	s8,s2
 390:	0d00                	addi	s0,sp,656
 392:	012e                	slli	sp,sp,0xb
 394:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 39c:	0b39                	addi	s6,s6,14
 39e:	13491927          	.4byte	0x13491927
 3a2:	0111                	addi	sp,sp,4
 3a4:	0712                	slli	a4,a4,0x4
 3a6:	1840                	addi	s0,sp,52
 3a8:	197a                	slli	s2,s2,0x3e
 3aa:	0000                	unimp
 3ac:	050e                	slli	a0,a0,0x3
 3ae:	0300                	addi	s0,sp,384
 3b0:	3a0e                	fld	fs4,224(sp)
 3b2:	390b3b0b          	.4byte	0x390b3b0b
 3b6:	0213490b          	.4byte	0x213490b
 3ba:	0f000017          	auipc	zero,0xf000
 3be:	0048                	addi	a0,sp,4
 3c0:	017d                	addi	sp,sp,31
 3c2:	137f                	.2byte	0x137f
 3c4:	0000                	unimp
 3c6:	0100                	addi	s0,sp,128
 3c8:	0024                	addi	s1,sp,8
 3ca:	0b3e0b0b          	.4byte	0xb3e0b0b
 3ce:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 3d2:	1602                	slli	a2,a2,0x20
 3d4:	0300                	addi	s0,sp,384
 3d6:	3a0e                	fld	fs4,224(sp)
 3d8:	390b3b0b          	.4byte	0x390b3b0b
 3dc:	0013490b          	.4byte	0x13490b
 3e0:	0300                	addi	s0,sp,384
 3e2:	0005                	c.nop	1
 3e4:	1349                	addi	t1,t1,-14
 3e6:	0000                	unimp
 3e8:	0504                	addi	s1,sp,640
 3ea:	0300                	addi	s0,sp,384
 3ec:	3a08                	fld	fa0,48(a2)
 3ee:	0121                	addi	sp,sp,8
 3f0:	3906213b          	.4byte	0x3906213b
 3f4:	0213490b          	.4byte	0x213490b
 3f8:	05000017          	auipc	zero,0x5000
 3fc:	0049                	c.nop	18
 3fe:	1802                	slli	a6,a6,0x20
 400:	187e                	slli	a6,a6,0x3f
 402:	0000                	unimp
 404:	1106                	slli	sp,sp,0x21
 406:	2501                	sext.w	a0,a0
 408:	130e                	slli	t1,t1,0x23
 40a:	1b1f030b          	.4byte	0x1b1f030b
 40e:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
 414:	07000017          	auipc	zero,0x7000
 418:	0024                	addi	s1,sp,8
 41a:	0b3e0b0b          	.4byte	0xb3e0b0b
 41e:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 422:	2e08                	fld	fa0,24(a2)
 424:	3f01                	addiw	t5,t5,-32 # fffffffffffdffe0 <__heap_end+0xffffffff7ffbbfe0>
 426:	0319                	addi	t1,t1,6
 428:	3a0e                	fld	fs4,224(sp)
 42a:	390b3b0b          	.4byte	0x390b3b0b
 42e:	4919270b          	.4byte	0x4919270b
 432:	01193c13          	sltiu	s8,s2,17
 436:	09000013          	li	zero,144
 43a:	012e                	slli	sp,sp,0xb
 43c:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 444:	0b39                	addi	s6,s6,14
 446:	13491927          	.4byte	0x13491927
 44a:	0111                	addi	sp,sp,4
 44c:	0712                	slli	a4,a4,0x4
 44e:	1840                	addi	s0,sp,52
 450:	197a                	slli	s2,s2,0x3e
 452:	1301                	addi	t1,t1,-32
 454:	0000                	unimp
 456:	480a                	lw	a6,128(sp)
 458:	7d01                	lui	s10,0xfffe0
 45a:	8201                	c.srli64	a2
 45c:	1901                	addi	s2,s2,-32
 45e:	137f                	.2byte	0x137f
 460:	0000                	unimp
 462:	0b000f0b          	.4byte	0xb000f0b
 466:	0013490b          	.4byte	0x13490b
 46a:	0c00                	addi	s0,sp,528
 46c:	0026                	c.slli	zero,0x9
 46e:	0000                	unimp
 470:	0100                	addi	s0,sp,128
 472:	0011                	c.nop	4
 474:	1710                	addi	a2,sp,928
 476:	0111                	addi	sp,sp,4
 478:	0f12                	slli	t5,t5,0x4
 47a:	0e1b0e03          	lb	t3,225(s6)
 47e:	0e25                	addi	t3,t3,9
 480:	00000513          	li	a0,0
 484:	0100                	addi	s0,sp,128
 486:	0011                	c.nop	4
 488:	1710                	addi	a2,sp,928
 48a:	0111                	addi	sp,sp,4
 48c:	0f12                	slli	t5,t5,0x4
 48e:	0e1b0e03          	lb	t3,225(s6)
 492:	0e25                	addi	t3,t3,9
 494:	00000513          	li	a0,0
 498:	0100                	addi	s0,sp,128
 49a:	0024                	addi	s1,sp,8
 49c:	0b3e0b0b          	.4byte	0xb3e0b0b
 4a0:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 4a4:	1602                	slli	a2,a2,0x20
 4a6:	0300                	addi	s0,sp,384
 4a8:	3a0e                	fld	fs4,224(sp)
 4aa:	390b3b0b          	.4byte	0x390b3b0b
 4ae:	0013490b          	.4byte	0x13490b
 4b2:	0300                	addi	s0,sp,384
 4b4:	0005                	c.nop	1
 4b6:	213a0e03          	lb	t3,531(s4)
 4ba:	3b01                	addiw	s6,s6,-32
 4bc:	0421                	addi	s0,s0,8
 4be:	0b39                	addi	s6,s6,14
 4c0:	1349                	addi	t1,t1,-14
 4c2:	1702                	slli	a4,a4,0x20
 4c4:	0000                	unimp
 4c6:	1104                	addi	s1,sp,160
 4c8:	2501                	sext.w	a0,a0
 4ca:	130e                	slli	t1,t1,0x23
 4cc:	1b1f030b          	.4byte	0x1b1f030b
 4d0:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
 4d6:	05000017          	auipc	zero,0x5000
 4da:	0024                	addi	s1,sp,8
 4dc:	0b3e0b0b          	.4byte	0xb3e0b0b
 4e0:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 4e4:	2e06                	fld	ft8,64(sp)
 4e6:	3f01                	addiw	t5,t5,-32
 4e8:	0319                	addi	t1,t1,6
 4ea:	3a0e                	fld	fs4,224(sp)
 4ec:	390b3b0b          	.4byte	0x390b3b0b
 4f0:	8719270b          	.4byte	0x8719270b
 4f4:	1901                	addi	s2,s2,-32
 4f6:	193c                	addi	a5,sp,184
 4f8:	1301                	addi	t1,t1,-32
 4fa:	0000                	unimp
 4fc:	49000507          	.4byte	0x49000507
 500:	08000013          	li	zero,128
 504:	012e                	slli	sp,sp,0xb
 506:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 50e:	0b39                	addi	s6,s6,14
 510:	01111927          	.4byte	0x1111927
 514:	0712                	slli	a4,a4,0x4
 516:	1840                	addi	s0,sp,52
 518:	197a                	slli	s2,s2,0x3e
 51a:	1301                	addi	t1,t1,-32
 51c:	0000                	unimp
 51e:	0509                	addi	a0,a0,2
 520:	0300                	addi	s0,sp,384
 522:	3a08                	fld	fa0,48(a2)
 524:	390b3b0b          	.4byte	0x390b3b0b
 528:	0213490b          	.4byte	0x213490b
 52c:	0a000017          	auipc	zero,0xa000
 530:	0034                	addi	a3,sp,8
 532:	0b3a0e03          	lb	t3,179(s4)
 536:	0b390b3b          	.4byte	0xb390b3b
 53a:	1349                	addi	t1,t1,-14
 53c:	1702                	slli	a4,a4,0x20
 53e:	0000                	unimp
 540:	7d00480b          	.4byte	0x7d00480b
 544:	7f01                	lui	t5,0xfffe0
 546:	0c000013          	li	zero,192
 54a:	0b0b000f          	.4byte	0xb0b000f
 54e:	1349                	addi	t1,t1,-14
 550:	0000                	unimp
 552:	0100                	addi	s0,sp,128
 554:	0024                	addi	s1,sp,8
 556:	0b3e0b0b          	.4byte	0xb3e0b0b
 55a:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 55e:	0502                	c.slli64	a0
 560:	4900                	lw	s0,16(a0)
 562:	03000013          	li	zero,48
 566:	0034                	addi	a3,sp,8
 568:	213a0e03          	lb	t3,531(s4)
 56c:	3b01                	addiw	s6,s6,-32
 56e:	1121390b          	.4byte	0x1121390b
 572:	1349                	addi	t1,t1,-14
 574:	193c193f 37040000 	.8byte	0x37040000193c193f
 57c:	4900                	lw	s0,16(a0)
 57e:	05000013          	li	zero,80
 582:	210b000f          	.4byte	0x210b000f
 586:	4908                	lw	a0,16(a0)
 588:	06000013          	li	zero,96
 58c:	012e                	slli	sp,sp,0xb
 58e:	0e03193f 3b02213a 	.8byte	0x3b02213a0e03193f
 596:	0921390b          	.4byte	0x921390b
 59a:	13491927          	.4byte	0x13491927
 59e:	193c                	addi	a5,sp,184
 5a0:	1301                	addi	t1,t1,-32
 5a2:	0000                	unimp
 5a4:	02004907          	.4byte	0x2004907
 5a8:	7e18                	ld	a4,56(a2)
 5aa:	0018                	.2byte	0x18
 5ac:	0800                	addi	s0,sp,16
 5ae:	0111                	addi	sp,sp,4
 5b0:	0e25                	addi	t3,t3,9
 5b2:	1f030b13          	addi	s6,t1,496
 5b6:	01111f1b          	slliw	t5,sp,0x11
 5ba:	0712                	slli	a4,a4,0x4
 5bc:	1710                	addi	a2,sp,928
 5be:	0000                	unimp
 5c0:	1609                	addi	a2,a2,-30
 5c2:	0300                	addi	s0,sp,384
 5c4:	3a0e                	fld	fs4,224(sp)
 5c6:	390b3b0b          	.4byte	0x390b3b0b
 5ca:	0013490b          	.4byte	0x13490b
 5ce:	0a00                	addi	s0,sp,272
 5d0:	0024                	addi	s1,sp,8
 5d2:	0b3e0b0b          	.4byte	0xb3e0b0b
 5d6:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 5da:	0b000f0b          	.4byte	0xb000f0b
 5de:	0c00000b          	.4byte	0xc00000b
 5e2:	0026                	c.slli	zero,0x9
 5e4:	0000                	unimp
 5e6:	2e0d                	addiw	t3,t3,3
 5e8:	3f01                	addiw	t5,t5,-32 # fffffffffffdffe0 <__heap_end+0xffffffff7ffbbfe0>
 5ea:	0319                	addi	t1,t1,6
 5ec:	3a0e                	fld	fs4,224(sp)
 5ee:	390b3b0b          	.4byte	0x390b3b0b
 5f2:	1119270b          	.4byte	0x1119270b
 5f6:	1201                	addi	tp,tp,-32 # ffffffffffffffe0 <__heap_end+0xffffffff7ffdbfe0>
 5f8:	7a184007          	.4byte	0x7a184007
 5fc:	0119                	addi	sp,sp,6
 5fe:	0e000013          	li	zero,224
 602:	0034                	addi	a3,sp,8
 604:	0b3a0e03          	lb	t3,179(s4)
 608:	0b390b3b          	.4byte	0xb390b3b
 60c:	1349                	addi	t1,t1,-14
 60e:	1802                	slli	a6,a6,0x20
 610:	0000                	unimp
 612:	7d01480f          	.4byte	0x7d01480f
 616:	7f01                	lui	t5,0xfffe0
 618:	00130113          	addi	sp,t1,1
 61c:	1000                	addi	s0,sp,32
 61e:	0148                	addi	a0,sp,132
 620:	017d                	addi	sp,sp,31
 622:	0182                	c.slli64	gp
 624:	7f19                	lui	t5,0xfffe6
 626:	11000013          	li	zero,272
 62a:	0101                	addi	sp,sp,0
 62c:	1349                	addi	t1,t1,-14
 62e:	0000                	unimp
 630:	2112                	fld	ft2,256(sp)
 632:	0000                	unimp
 634:	0000                	unimp
 636:	1601                	addi	a2,a2,-32
 638:	0300                	addi	s0,sp,384
 63a:	3a0e                	fld	fs4,224(sp)
 63c:	390b3b0b          	.4byte	0x390b3b0b
 640:	0013490b          	.4byte	0x13490b
 644:	0200                	addi	s0,sp,256
 646:	0024                	addi	s1,sp,8
 648:	0b3e0b0b          	.4byte	0xb3e0b0b
 64c:	00000e03          	lb	t3,0(zero) # 0 <__boot_hart>
 650:	31000503          	lb	a0,784(zero) # 310 <__stack_align+0x300>
 654:	00170213          	addi	tp,a4,1 # 21dcf <__heap_size+0x1dcf>
 658:	0400                	addi	s0,sp,512
 65a:	0005                	c.nop	1
 65c:	213a0803          	lb	a6,531(s4)
 660:	3b02                	fld	fs6,32(sp)
 662:	490b390b          	.4byte	0x490b390b
 666:	05000013          	li	zero,80
 66a:	0005                	c.nop	1
 66c:	213a0803          	lb	a6,531(s4)
 670:	3b01                	addiw	s6,s6,-32
 672:	0c21                	addi	s8,s8,8
 674:	0b39                	addi	s6,s6,14
 676:	1349                	addi	t1,t1,-14
 678:	1702                	slli	a4,a4,0x20
 67a:	0000                	unimp
 67c:	2e06                	fld	ft8,64(sp)
 67e:	0301                	addi	t1,t1,0
 680:	3a0e                	fld	fs4,224(sp)
 682:	390b3b0b          	.4byte	0x390b3b0b
 686:	1421                	addi	s0,s0,-24
 688:	21201927          	.4byte	0x21201927
 68c:	00130103          	lb	sp,1(t1)
 690:	0700                	addi	s0,sp,896
 692:	210b000f          	.4byte	0x210b000f
 696:	4908                	lw	a0,16(a0)
 698:	08000013          	li	zero,128
 69c:	0035                	c.nop	13
 69e:	1349                	addi	t1,t1,-14
 6a0:	0000                	unimp
 6a2:	3409                	addiw	s0,s0,-30
 6a4:	0300                	addi	s0,sp,384
 6a6:	3a0e                	fld	fs4,224(sp)
 6a8:	0621                	addi	a2,a2,8
 6aa:	21390b3b          	.4byte	0x21390b3b
 6ae:	491a                	lw	s2,132(sp)
 6b0:	3c193f13          	sltiu	t5,s2,961
 6b4:	0019                	c.nop	6
 6b6:	0a00                	addi	s0,sp,272
 6b8:	0034                	addi	a3,sp,8
 6ba:	213a1347          	fmsub.s	ft6,fs4,fs3,ft4,rtz
 6be:	3b01                	addiw	s6,s6,-32
 6c0:	1321390b          	.4byte	0x1321390b
 6c4:	1802                	slli	a6,a6,0x20
 6c6:	0000                	unimp
 6c8:	0300340b          	.4byte	0x300340b
 6cc:	3a08                	fld	fa0,48(a2)
 6ce:	0121                	addi	sp,sp,8
 6d0:	0b390b3b          	.4byte	0xb390b3b
 6d4:	1349                	addi	t1,t1,-14
 6d6:	1802                	slli	a6,a6,0x20
 6d8:	0000                	unimp
 6da:	1d0c                	addi	a1,sp,688
 6dc:	3101                	addiw	sp,sp,-32
 6de:	12011113          	.4byte	0x12011113
 6e2:	01215807          	.4byte	0x1215807
 6e6:	0b59                	addi	s6,s6,22
 6e8:	01052157          	.4byte	0x1052157
 6ec:	0d000013          	li	zero,208
 6f0:	011d                	addi	sp,sp,7
 6f2:	1331                	addi	t1,t1,-20
 6f4:	0111                	addi	sp,sp,4
 6f6:	0712                	slli	a4,a4,0x4
 6f8:	2158                	fld	fa4,128(a0)
 6fa:	570b5903          	lhu	s2,1392(s6)
 6fe:	0e00000b          	.4byte	0xe00000b
 702:	001d                	c.nop	7
 704:	1331                	addi	t1,t1,-20
 706:	0111                	addi	sp,sp,4
 708:	0712                	slli	a4,a4,0x4
 70a:	2158                	fld	fa4,128(a0)
 70c:	5901                	li	s2,-32
 70e:	0521570b          	.4byte	0x521570b
 712:	0000                	unimp
 714:	0300050f          	.4byte	0x300050f
 718:	3a0e                	fld	fs4,224(sp)
 71a:	0321                	addi	t1,t1,8
 71c:	0b390b3b          	.4byte	0xb390b3b
 720:	1349                	addi	t1,t1,-14
 722:	0000                	unimp
 724:	2e10                	fld	fa2,24(a2)
 726:	0301                	addi	t1,t1,0
 728:	3a0e                	fld	fs4,224(sp)
 72a:	0221                	addi	tp,tp,8 # 8 <__tbss_size+0x4>
 72c:	21390b3b          	.4byte	0x21390b3b
 730:	2714                	fld	fa3,8(a4)
 732:	4919                	li	s2,6
 734:	03212013          	slti	zero,sp,50
 738:	1301                	addi	t1,t1,-32
 73a:	0000                	unimp
 73c:	2e11                	addiw	t3,t3,4
 73e:	0300                	addi	s0,sp,384
 740:	3a08                	fld	fa0,48(a2)
 742:	0221                	addi	tp,tp,8 # 8 <__tbss_size+0x4>
 744:	21390b3b          	.4byte	0x21390b3b
 748:	2714                	fld	fa3,8(a4)
 74a:	2019                	.2byte	0x2019
 74c:	0321                	addi	t1,t1,8
 74e:	0000                	unimp
 750:	1112                	slli	sp,sp,0x24
 752:	2501                	sext.w	a0,a0
 754:	130e                	slli	t1,t1,0x23
 756:	1b1f030b          	.4byte	0x1b1f030b
 75a:	111f 1201 1007      	.byte	0x1f, 0x11, 0x01, 0x12, 0x07, 0x10
 760:	13000017          	auipc	zero,0x13000
 764:	0024                	addi	s1,sp,8
 766:	0b3e0b0b          	.4byte	0xb3e0b0b
 76a:	00000803          	lb	a6,0(zero) # 0 <__boot_hart>
 76e:	2614                	fld	fa3,8(a2)
 770:	4900                	lw	s0,16(a0)
 772:	15000013          	li	zero,336
 776:	0b0b0113          	addi	sp,s6,176
 77a:	0b3a                	slli	s6,s6,0xe
 77c:	0b390b3b          	.4byte	0xb390b3b
 780:	1301                	addi	t1,t1,-32
 782:	0000                	unimp
 784:	0d16                	slli	s10,s10,0x5
 786:	0300                	addi	s0,sp,384
 788:	3a0e                	fld	fs4,224(sp)
 78a:	390b3b0b          	.4byte	0x390b3b0b
 78e:	3813490b          	.4byte	0x3813490b
 792:	1700000b          	.4byte	0x1700000b
 796:	0034                	addi	a3,sp,8
 798:	0b3a0e03          	lb	t3,179(s4)
 79c:	0b390b3b          	.4byte	0xb390b3b
 7a0:	1349                	addi	t1,t1,-14
 7a2:	1802                	slli	a6,a6,0x20
 7a4:	0000                	unimp
 7a6:	2e18                	fld	fa4,24(a2)
 7a8:	3f01                	addiw	t5,t5,-32 # fffffffffffe5fe0 <__heap_end+0xffffffff7ffc1fe0>
 7aa:	0319                	addi	t1,t1,6
 7ac:	3a0e                	fld	fs4,224(sp)
 7ae:	390b3b0b          	.4byte	0x390b3b0b
 7b2:	4919270b          	.4byte	0x4919270b
 7b6:	12011113          	.4byte	0x12011113
 7ba:	7a184007          	.4byte	0x7a184007
 7be:	0119                	addi	sp,sp,6
 7c0:	19000013          	li	zero,400
 7c4:	0005                	c.nop	1
 7c6:	0b3a0803          	lb	a6,179(s4)
 7ca:	0b390b3b          	.4byte	0xb390b3b
 7ce:	1349                	addi	t1,t1,-14
 7d0:	1802                	slli	a6,a6,0x20
 7d2:	0000                	unimp
 7d4:	1d1a                	slli	s10,s10,0x26
 7d6:	3101                	addiw	sp,sp,-32
 7d8:	55015213          	.4byte	0x55015213
 7dc:	590b5817          	auipc	a6,0x590b5
 7e0:	010b570b          	.4byte	0x10b570b
 7e4:	1b000013          	li	zero,432
 7e8:	1755010b          	.4byte	0x1755010b
 7ec:	0000                	unimp
 7ee:	341c                	fld	fa5,40(s0)
 7f0:	3100                	fld	fs0,32(a0)
 7f2:	1d000013          	li	zero,464
 7f6:	0005                	c.nop	1
 7f8:	1331                	addi	t1,t1,-20
 7fa:	0000                	unimp
 7fc:	011e                	slli	sp,sp,0x7
 7fe:	4901                	li	s2,0
 800:	00130113          	addi	sp,t1,1
 804:	1f00                	addi	s0,sp,944
 806:	0021                	c.nop	8
 808:	1349                	addi	t1,t1,-14
 80a:	00000b2f          	.4byte	0xb2f
 80e:	3420                	fld	fs0,104(s0)
 810:	0300                	addi	s0,sp,384
 812:	3a08                	fld	fa0,48(a2)
 814:	390b3b0b          	.4byte	0x390b3b0b
 818:	0013490b          	.4byte	0x13490b
 81c:	0000                	unimp
 81e:	2401                	sext.w	s0,s0
 820:	0b00                	addi	s0,sp,400
 822:	030b3e0b          	.4byte	0x30b3e0b
 826:	000e                	c.slli	zero,0x3
 828:	0200                	addi	s0,sp,256
 82a:	0016                	c.slli	zero,0x5
 82c:	0b3a0e03          	lb	t3,179(s4)
 830:	0b390b3b          	.4byte	0xb390b3b
 834:	1349                	addi	t1,t1,-14
 836:	0000                	unimp
 838:	03003403          	ld	s0,48(zero) # 30 <__stack_align+0x20>
 83c:	3a0e                	fld	fs4,224(sp)
 83e:	0421                	addi	s0,s0,8
 840:	21390b3b          	.4byte	0x21390b3b
 844:	491a                	lw	s2,132(sp)
 846:	3c193f13          	sltiu	t5,s2,961
 84a:	0019                	c.nop	6
 84c:	0400                	addi	s0,sp,512
 84e:	0111                	addi	sp,sp,4
 850:	0e25                	addi	t3,t3,9
 852:	1f030b13          	addi	s6,t1,496
 856:	01111f1b          	slliw	t5,sp,0x11
 85a:	0712                	slli	a4,a4,0x4
 85c:	1710                	addi	a2,sp,928
 85e:	0000                	unimp
 860:	2405                	addiw	s0,s0,1
 862:	0b00                	addi	s0,sp,400
 864:	030b3e0b          	.4byte	0x30b3e0b
 868:	0008                	.2byte	0x8
 86a:	0600                	addi	s0,sp,768
 86c:	0035                	c.nop	13
 86e:	1349                	addi	t1,t1,-14
 870:	0000                	unimp
 872:	3f012e07          	flw	ft8,1008(sp)
 876:	0319                	addi	t1,t1,6
 878:	3a0e                	fld	fs4,224(sp)
 87a:	390b3b0b          	.4byte	0x390b3b0b
 87e:	8719270b          	.4byte	0x8719270b
 882:	1901                	addi	s2,s2,-32
 884:	0111                	addi	sp,sp,4
 886:	0712                	slli	a4,a4,0x4
 888:	1840                	addi	s0,sp,52
 88a:	197a                	slli	s2,s2,0x3e
 88c:	0000                	unimp
 88e:	0508                	addi	a0,sp,640
 890:	0300                	addi	s0,sp,384
 892:	3a0e                	fld	fs4,224(sp)
 894:	390b3b0b          	.4byte	0x390b3b0b
 898:	0213490b          	.4byte	0x213490b
 89c:	0018                	.2byte	0x18
 89e:	0900                	addi	s0,sp,144
 8a0:	0034                	addi	a3,sp,8
 8a2:	0b3a0803          	lb	a6,179(s4)
 8a6:	0b390b3b          	.4byte	0xb390b3b
 8aa:	1349                	addi	t1,t1,-14
 8ac:	1802                	slli	a6,a6,0x20
 8ae:	0000                	unimp
	...

Disassembly of section .debug_loclists:

0000000000000000 <.debug_loclists>:
   0:	0032                	c.slli	zero,0xc
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0008                	.2byte	0x8
   8:	0000                	unimp
   a:	0000                	unimp
   c:	0024c007          	.4byte	0x24c007
  10:	0080                	addi	s0,sp,64
  12:	0000                	unimp
  14:	c700                	sw	s0,8(a4)
  16:	0024                	addi	s1,sp,8
  18:	0080                	addi	s0,sp,64
  1a:	0000                	unimp
  1c:	0100                	addi	s0,sp,128
  1e:	075a                	slli	a4,a4,0x16
  20:	800024c7          	fmsub.s	fs1,ft0,ft0,fa6,rdn
  24:	0000                	unimp
  26:	0000                	unimp
  28:	24d4                	fld	fa3,136(s1)
  2a:	8000                	.2byte	0x8000
  2c:	0000                	unimp
  2e:	0000                	unimp
  30:	a304                	fsd	fs1,0(a4)
  32:	5a01                	li	s4,-32
  34:	009f 005c 0000      	.byte	0x9f, 0x00, 0x5c, 0x00, 0x00, 0x00
  3a:	0005                	c.nop	1
  3c:	0008                	.2byte	0x8
  3e:	0000                	unimp
  40:	0000                	unimp
  42:	0024d407          	.4byte	0x24d407
  46:	0080                	addi	s0,sp,64
  48:	0000                	unimp
  4a:	db00                	sw	s0,48(a4)
  4c:	0024                	addi	s1,sp,8
  4e:	0080                	addi	s0,sp,64
  50:	0000                	unimp
  52:	0100                	addi	s0,sp,128
  54:	075a                	slli	a4,a4,0x16
  56:	800024db          	.4byte	0x800024db
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	24e8                	fld	fa0,200(s1)
  60:	8000                	.2byte	0x8000
  62:	0000                	unimp
  64:	0000                	unimp
  66:	a304                	fsd	fs1,0(a4)
  68:	5a01                	li	s4,-32
  6a:	009f d407 0024      	.byte	0x9f, 0x00, 0x07, 0xd4, 0x24, 0x00
  70:	0080                	addi	s0,sp,64
  72:	0000                	unimp
  74:	db00                	sw	s0,48(a4)
  76:	0024                	addi	s1,sp,8
  78:	0080                	addi	s0,sp,64
  7a:	0000                	unimp
  7c:	0100                	addi	s0,sp,128
  7e:	24db075b          	.4byte	0x24db075b
  82:	8000                	.2byte	0x8000
  84:	0000                	unimp
  86:	0000                	unimp
  88:	24e8                	fld	fa0,200(s1)
  8a:	8000                	.2byte	0x8000
  8c:	0000                	unimp
  8e:	0000                	unimp
  90:	a304                	fsd	fs1,0(a4)
  92:	5b01                	li	s6,-32
  94:	009f 0032 0000      	.byte	0x9f, 0x00, 0x32, 0x00, 0x00, 0x00
  9a:	0005                	c.nop	1
  9c:	0008                	.2byte	0x8
  9e:	0000                	unimp
  a0:	0000                	unimp
  a2:	0024e807          	.4byte	0x24e807
  a6:	0080                	addi	s0,sp,64
  a8:	0000                	unimp
  aa:	ea00                	sd	s0,16(a2)
  ac:	0024                	addi	s1,sp,8
  ae:	0080                	addi	s0,sp,64
  b0:	0000                	unimp
  b2:	0100                	addi	s0,sp,128
  b4:	075a                	slli	a4,a4,0x16
  b6:	24ea                	fld	fs1,152(sp)
  b8:	8000                	.2byte	0x8000
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	24f0                	fld	fa2,200(s1)
  c0:	8000                	.2byte	0x8000
  c2:	0000                	unimp
  c4:	0000                	unimp
  c6:	a304                	fsd	fs1,0(a4)
  c8:	5a01                	li	s4,-32
  ca:	009f 0086 0000      	.byte	0x9f, 0x00, 0x86, 0x00, 0x00, 0x00
  d0:	0005                	c.nop	1
  d2:	0008                	.2byte	0x8
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	0024f007          	.4byte	0x24f007
  dc:	0080                	addi	s0,sp,64
  de:	0000                	unimp
  e0:	f700                	sd	s0,40(a4)
  e2:	0024                	addi	s1,sp,8
  e4:	0080                	addi	s0,sp,64
  e6:	0000                	unimp
  e8:	0100                	addi	s0,sp,128
  ea:	075a                	slli	a4,a4,0x16
  ec:	800024f7          	.4byte	0x800024f7
  f0:	0000                	unimp
  f2:	0000                	unimp
  f4:	2504                	fld	fs1,8(a0)
  f6:	8000                	.2byte	0x8000
  f8:	0000                	unimp
  fa:	0000                	unimp
  fc:	a304                	fsd	fs1,0(a4)
  fe:	5a01                	li	s4,-32
 100:	009f f007 0024      	.byte	0x9f, 0x00, 0x07, 0xf0, 0x24, 0x00
 106:	0080                	addi	s0,sp,64
 108:	0000                	unimp
 10a:	f700                	sd	s0,40(a4)
 10c:	0024                	addi	s1,sp,8
 10e:	0080                	addi	s0,sp,64
 110:	0000                	unimp
 112:	0100                	addi	s0,sp,128
 114:	24f7075b          	.4byte	0x24f7075b
 118:	8000                	.2byte	0x8000
 11a:	0000                	unimp
 11c:	0000                	unimp
 11e:	2504                	fld	fs1,8(a0)
 120:	8000                	.2byte	0x8000
 122:	0000                	unimp
 124:	0000                	unimp
 126:	a304                	fsd	fs1,0(a4)
 128:	5b01                	li	s6,-32
 12a:	009f f007 0024      	.byte	0x9f, 0x00, 0x07, 0xf0, 0x24, 0x00
 130:	0080                	addi	s0,sp,64
 132:	0000                	unimp
 134:	f700                	sd	s0,40(a4)
 136:	0024                	addi	s1,sp,8
 138:	0080                	addi	s0,sp,64
 13a:	0000                	unimp
 13c:	0100                	addi	s0,sp,128
 13e:	075c                	addi	a5,sp,900
 140:	800024f7          	.4byte	0x800024f7
 144:	0000                	unimp
 146:	0000                	unimp
 148:	2504                	fld	fs1,8(a0)
 14a:	8000                	.2byte	0x8000
 14c:	0000                	unimp
 14e:	0000                	unimp
 150:	a304                	fsd	fs1,0(a4)
 152:	5c01                	li	s8,-32
 154:	009f 0086 0000      	.byte	0x9f, 0x00, 0x86, 0x00, 0x00, 0x00
 15a:	0005                	c.nop	1
 15c:	0008                	.2byte	0x8
 15e:	0000                	unimp
 160:	0000                	unimp
 162:	00250407          	.4byte	0x250407
 166:	0080                	addi	s0,sp,64
 168:	0000                	unimp
 16a:	0b00                	addi	s0,sp,400
 16c:	0025                	c.nop	9
 16e:	0080                	addi	s0,sp,64
 170:	0000                	unimp
 172:	0100                	addi	s0,sp,128
 174:	075a                	slli	a4,a4,0x16
 176:	8000250b          	.4byte	0x8000250b
 17a:	0000                	unimp
 17c:	0000                	unimp
 17e:	251a                	fld	fa0,384(sp)
 180:	8000                	.2byte	0x8000
 182:	0000                	unimp
 184:	0000                	unimp
 186:	a304                	fsd	fs1,0(a4)
 188:	5a01                	li	s4,-32
 18a:	009f 0407 0025      	.byte	0x9f, 0x00, 0x07, 0x04, 0x25, 0x00
 190:	0080                	addi	s0,sp,64
 192:	0000                	unimp
 194:	0b00                	addi	s0,sp,400
 196:	0025                	c.nop	9
 198:	0080                	addi	s0,sp,64
 19a:	0000                	unimp
 19c:	0100                	addi	s0,sp,128
 19e:	250b075b          	.4byte	0x250b075b
 1a2:	8000                	.2byte	0x8000
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	251a                	fld	fa0,384(sp)
 1aa:	8000                	.2byte	0x8000
 1ac:	0000                	unimp
 1ae:	0000                	unimp
 1b0:	a304                	fsd	fs1,0(a4)
 1b2:	5b01                	li	s6,-32
 1b4:	009f 0407 0025      	.byte	0x9f, 0x00, 0x07, 0x04, 0x25, 0x00
 1ba:	0080                	addi	s0,sp,64
 1bc:	0000                	unimp
 1be:	0b00                	addi	s0,sp,400
 1c0:	0025                	c.nop	9
 1c2:	0080                	addi	s0,sp,64
 1c4:	0000                	unimp
 1c6:	0100                	addi	s0,sp,128
 1c8:	075c                	addi	a5,sp,900
 1ca:	8000250b          	.4byte	0x8000250b
 1ce:	0000                	unimp
 1d0:	0000                	unimp
 1d2:	251a                	fld	fa0,384(sp)
 1d4:	8000                	.2byte	0x8000
 1d6:	0000                	unimp
 1d8:	0000                	unimp
 1da:	a304                	fsd	fs1,0(a4)
 1dc:	5c01                	li	s8,-32
 1de:	009f 0088 0000      	.byte	0x9f, 0x00, 0x88, 0x00, 0x00, 0x00
 1e4:	0005                	c.nop	1
 1e6:	0008                	.2byte	0x8
 1e8:	0000                	unimp
 1ea:	0000                	unimp
 1ec:	00251a07          	.4byte	0x251a07
 1f0:	0080                	addi	s0,sp,64
 1f2:	0000                	unimp
 1f4:	2a00                	fld	fs0,16(a2)
 1f6:	0025                	c.nop	9
 1f8:	0080                	addi	s0,sp,64
 1fa:	0000                	unimp
 1fc:	0100                	addi	s0,sp,128
 1fe:	075a                	slli	a4,a4,0x16
 200:	252a                	fld	fa0,136(sp)
 202:	8000                	.2byte	0x8000
 204:	0000                	unimp
 206:	0000                	unimp
 208:	2556                	fld	fa0,336(sp)
 20a:	8000                	.2byte	0x8000
 20c:	0000                	unimp
 20e:	0000                	unimp
 210:	a304                	fsd	fs1,0(a4)
 212:	5a01                	li	s4,-32
 214:	009f 2a07 0025      	.byte	0x9f, 0x00, 0x07, 0x2a, 0x25, 0x00
 21a:	0080                	addi	s0,sp,64
 21c:	0000                	unimp
 21e:	3e00                	fld	fs0,56(a2)
 220:	0025                	c.nop	9
 222:	0080                	addi	s0,sp,64
 224:	0000                	unimp
 226:	0100                	addi	s0,sp,128
 228:	075a                	slli	a4,a4,0x16
 22a:	253e                	fld	fa0,456(sp)
 22c:	8000                	.2byte	0x8000
 22e:	0000                	unimp
 230:	0000                	unimp
 232:	2540                	fld	fs0,136(a0)
 234:	8000                	.2byte	0x8000
 236:	0000                	unimp
 238:	0000                	unimp
 23a:	0309                	addi	t1,t1,2
 23c:	2f08                	fld	fa0,24(a4)
 23e:	8000                	.2byte	0x8000
 240:	0000                	unimp
 242:	0000                	unimp
 244:	00254007          	.4byte	0x254007
 248:	0080                	addi	s0,sp,64
 24a:	0000                	unimp
 24c:	4700                	lw	s0,8(a4)
 24e:	0025                	c.nop	9
 250:	0080                	addi	s0,sp,64
 252:	0000                	unimp
 254:	0100                	addi	s0,sp,128
 256:	005a                	c.slli	zero,0x16
 258:	00252407          	flw	fs0,2(a0)
 25c:	0080                	addi	s0,sp,64
 25e:	0000                	unimp
 260:	4700                	lw	s0,8(a4)
 262:	0025                	c.nop	9
 264:	0080                	addi	s0,sp,64
 266:	0000                	unimp
 268:	0100                	addi	s0,sp,128
 26a:	005f 0086 0000      	.byte	0x5f, 0x00, 0x86, 0x00, 0x00, 0x00
 270:	0005                	c.nop	1
 272:	0008                	.2byte	0x8
 274:	0000                	unimp
 276:	0000                	unimp
 278:	00255607          	.4byte	0x255607
 27c:	0080                	addi	s0,sp,64
 27e:	0000                	unimp
 280:	5b00                	lw	s0,48(a4)
 282:	0025                	c.nop	9
 284:	0080                	addi	s0,sp,64
 286:	0000                	unimp
 288:	0100                	addi	s0,sp,128
 28a:	075a                	slli	a4,a4,0x16
 28c:	8000255b          	.4byte	0x8000255b
 290:	0000                	unimp
 292:	0000                	unimp
 294:	255c                	fld	fa5,136(a0)
 296:	8000                	.2byte	0x8000
 298:	0000                	unimp
 29a:	0000                	unimp
 29c:	a304                	fsd	fs1,0(a4)
 29e:	5a01                	li	s4,-32
 2a0:	009f 5607 0025      	.byte	0x9f, 0x00, 0x07, 0x56, 0x25, 0x00
 2a6:	0080                	addi	s0,sp,64
 2a8:	0000                	unimp
 2aa:	5b00                	lw	s0,48(a4)
 2ac:	0025                	c.nop	9
 2ae:	0080                	addi	s0,sp,64
 2b0:	0000                	unimp
 2b2:	0100                	addi	s0,sp,128
 2b4:	255b075b          	.4byte	0x255b075b
 2b8:	8000                	.2byte	0x8000
 2ba:	0000                	unimp
 2bc:	0000                	unimp
 2be:	255c                	fld	fa5,136(a0)
 2c0:	8000                	.2byte	0x8000
 2c2:	0000                	unimp
 2c4:	0000                	unimp
 2c6:	a304                	fsd	fs1,0(a4)
 2c8:	5b01                	li	s6,-32
 2ca:	009f 5607 0025      	.byte	0x9f, 0x00, 0x07, 0x56, 0x25, 0x00
 2d0:	0080                	addi	s0,sp,64
 2d2:	0000                	unimp
 2d4:	5b00                	lw	s0,48(a4)
 2d6:	0025                	c.nop	9
 2d8:	0080                	addi	s0,sp,64
 2da:	0000                	unimp
 2dc:	0100                	addi	s0,sp,128
 2de:	075c                	addi	a5,sp,900
 2e0:	8000255b          	.4byte	0x8000255b
 2e4:	0000                	unimp
 2e6:	0000                	unimp
 2e8:	255c                	fld	fa5,136(a0)
 2ea:	8000                	.2byte	0x8000
 2ec:	0000                	unimp
 2ee:	0000                	unimp
 2f0:	a304                	fsd	fs1,0(a4)
 2f2:	5c01                	li	s8,-32
 2f4:	009f 00c4 0000      	.byte	0x9f, 0x00, 0xc4, 0x00, 0x00, 0x00
 2fa:	0005                	c.nop	1
 2fc:	0008                	.2byte	0x8
 2fe:	0000                	unimp
 300:	0000                	unimp
 302:	00255c07          	.4byte	0x255c07
 306:	0080                	addi	s0,sp,64
 308:	0000                	unimp
 30a:	6200                	ld	s0,0(a2)
 30c:	0025                	c.nop	9
 30e:	0080                	addi	s0,sp,64
 310:	0000                	unimp
 312:	0100                	addi	s0,sp,128
 314:	075a                	slli	a4,a4,0x16
 316:	2562                	fld	fa0,24(sp)
 318:	8000                	.2byte	0x8000
 31a:	0000                	unimp
 31c:	0000                	unimp
 31e:	2572                	fld	fa0,280(sp)
 320:	8000                	.2byte	0x8000
 322:	0000                	unimp
 324:	0000                	unimp
 326:	a304                	fsd	fs1,0(a4)
 328:	5a01                	li	s4,-32
 32a:	009f 5c07 0025      	.byte	0x9f, 0x00, 0x07, 0x5c, 0x25, 0x00
 330:	0080                	addi	s0,sp,64
 332:	0000                	unimp
 334:	7100                	ld	s0,32(a0)
 336:	0025                	c.nop	9
 338:	0080                	addi	s0,sp,64
 33a:	0000                	unimp
 33c:	0100                	addi	s0,sp,128
 33e:	2571075b          	.4byte	0x2571075b
 342:	8000                	.2byte	0x8000
 344:	0000                	unimp
 346:	0000                	unimp
 348:	2572                	fld	fa0,280(sp)
 34a:	8000                	.2byte	0x8000
 34c:	0000                	unimp
 34e:	0000                	unimp
 350:	a304                	fsd	fs1,0(a4)
 352:	5b01                	li	s6,-32
 354:	009f 5c07 0025      	.byte	0x9f, 0x00, 0x07, 0x5c, 0x25, 0x00
 35a:	0080                	addi	s0,sp,64
 35c:	0000                	unimp
 35e:	7100                	ld	s0,32(a0)
 360:	0025                	c.nop	9
 362:	0080                	addi	s0,sp,64
 364:	0000                	unimp
 366:	0100                	addi	s0,sp,128
 368:	075c                	addi	a5,sp,900
 36a:	2571                	addiw	a0,a0,28
 36c:	8000                	.2byte	0x8000
 36e:	0000                	unimp
 370:	0000                	unimp
 372:	2572                	fld	fa0,280(sp)
 374:	8000                	.2byte	0x8000
 376:	0000                	unimp
 378:	0000                	unimp
 37a:	a304                	fsd	fs1,0(a4)
 37c:	5c01                	li	s8,-32
 37e:	009f 5c07 0025      	.byte	0x9f, 0x00, 0x07, 0x5c, 0x25, 0x00
 384:	0080                	addi	s0,sp,64
 386:	0000                	unimp
 388:	7100                	ld	s0,32(a0)
 38a:	0025                	c.nop	9
 38c:	0080                	addi	s0,sp,64
 38e:	0000                	unimp
 390:	0100                	addi	s0,sp,128
 392:	075d                	addi	a4,a4,23
 394:	2571                	addiw	a0,a0,28
 396:	8000                	.2byte	0x8000
 398:	0000                	unimp
 39a:	0000                	unimp
 39c:	2572                	fld	fa0,280(sp)
 39e:	8000                	.2byte	0x8000
 3a0:	0000                	unimp
 3a2:	0000                	unimp
 3a4:	a304                	fsd	fs1,0(a4)
 3a6:	5d01                	li	s10,-32
 3a8:	009f 6607 0025      	.byte	0x9f, 0x00, 0x07, 0x66, 0x25, 0x00
 3ae:	0080                	addi	s0,sp,64
 3b0:	0000                	unimp
 3b2:	7100                	ld	s0,32(a0)
 3b4:	0025                	c.nop	9
 3b6:	0080                	addi	s0,sp,64
 3b8:	0000                	unimp
 3ba:	0100                	addi	s0,sp,128
 3bc:	005a                	c.slli	zero,0x16
 3be:	00000107          	.4byte	0x107
 3c2:	0005                	c.nop	1
 3c4:	0008                	.2byte	0x8
 3c6:	0000                	unimp
 3c8:	0000                	unimp
 3ca:	0025a207          	flw	ft4,2(a1)
 3ce:	0080                	addi	s0,sp,64
 3d0:	0000                	unimp
 3d2:	e800                	sd	s0,16(s0)
 3d4:	0025                	c.nop	9
 3d6:	0080                	addi	s0,sp,64
 3d8:	0000                	unimp
 3da:	0100                	addi	s0,sp,128
 3dc:	075a                	slli	a4,a4,0x16
 3de:	25e8                	fld	fa0,200(a1)
 3e0:	8000                	.2byte	0x8000
 3e2:	0000                	unimp
 3e4:	0000                	unimp
 3e6:	25ec                	fld	fa1,200(a1)
 3e8:	8000                	.2byte	0x8000
 3ea:	0000                	unimp
 3ec:	0000                	unimp
 3ee:	a304                	fsd	fs1,0(a4)
 3f0:	5a01                	li	s4,-32
 3f2:	009f a207 0025      	.byte	0x9f, 0x00, 0x07, 0xa2, 0x25, 0x00
 3f8:	0080                	addi	s0,sp,64
 3fa:	0000                	unimp
 3fc:	b200                	fsd	fs0,32(a2)
 3fe:	0025                	c.nop	9
 400:	0080                	addi	s0,sp,64
 402:	0000                	unimp
 404:	0100                	addi	s0,sp,128
 406:	075c                	addi	a5,sp,900
 408:	25b2                	fld	fa1,264(sp)
 40a:	8000                	.2byte	0x8000
 40c:	0000                	unimp
 40e:	0000                	unimp
 410:	25d2                	fld	fa1,272(sp)
 412:	8000                	.2byte	0x8000
 414:	0000                	unimp
 416:	0000                	unimp
 418:	9102                	jalr	sp
 41a:	0758                	addi	a4,sp,900
 41c:	25d2                	fld	fa1,272(sp)
 41e:	8000                	.2byte	0x8000
 420:	0000                	unimp
 422:	0000                	unimp
 424:	25ec                	fld	fa1,200(a1)
 426:	8000                	.2byte	0x8000
 428:	0000                	unimp
 42a:	0000                	unimp
 42c:	a304                	fsd	fs1,0(a4)
 42e:	5c01                	li	s8,-32
 430:	009f a207 0025      	.byte	0x9f, 0x00, 0x07, 0xa2, 0x25, 0x00
 436:	0080                	addi	s0,sp,64
 438:	0000                	unimp
 43a:	ba00                	fsd	fs0,48(a2)
 43c:	0025                	c.nop	9
 43e:	0080                	addi	s0,sp,64
 440:	0000                	unimp
 442:	0100                	addi	s0,sp,128
 444:	075d                	addi	a4,a4,23
 446:	25ba                	fld	fa1,392(sp)
 448:	8000                	.2byte	0x8000
 44a:	0000                	unimp
 44c:	0000                	unimp
 44e:	25ec                	fld	fa1,200(a1)
 450:	8000                	.2byte	0x8000
 452:	0000                	unimp
 454:	0000                	unimp
 456:	a304                	fsd	fs1,0(a4)
 458:	5d01                	li	s10,-32
 45a:	009f b407 0025      	.byte	0x9f, 0x00, 0x07, 0xb4, 0x25, 0x00
 460:	0080                	addi	s0,sp,64
 462:	0000                	unimp
 464:	c400                	sw	s0,8(s0)
 466:	0025                	c.nop	9
 468:	0080                	addi	s0,sp,64
 46a:	0000                	unimp
 46c:	0a00                	addi	s0,sp,272
 46e:	002f9803          	lh	a6,2(t6)
 472:	0080                	addi	s0,sp,64
 474:	0000                	unimp
 476:	9f00                	.2byte	0x9f00
 478:	0700                	addi	s0,sp,896
 47a:	25be                	fld	fa1,456(sp)
 47c:	8000                	.2byte	0x8000
 47e:	0000                	unimp
 480:	0000                	unimp
 482:	25c2                	fld	fa1,16(sp)
 484:	8000                	.2byte	0x8000
 486:	0000                	unimp
 488:	0000                	unimp
 48a:	9fff0903          	lb	s2,-1537(t5)
 48e:	0700                	addi	s0,sp,896
 490:	25be                	fld	fa1,456(sp)
 492:	8000                	.2byte	0x8000
 494:	0000                	unimp
 496:	0000                	unimp
 498:	25c2                	fld	fa1,16(sp)
 49a:	8000                	.2byte	0x8000
 49c:	0000                	unimp
 49e:	0000                	unimp
 4a0:	030a                	slli	t1,t1,0x2
 4a2:	2f98                	fld	fa4,24(a5)
 4a4:	8000                	.2byte	0x8000
 4a6:	0000                	unimp
 4a8:	0000                	unimp
 4aa:	009f de07 0025      	.byte	0x9f, 0x00, 0x07, 0xde, 0x25, 0x00
 4b0:	0080                	addi	s0,sp,64
 4b2:	0000                	unimp
 4b4:	e200                	sd	s0,0(a2)
 4b6:	0025                	c.nop	9
 4b8:	0080                	addi	s0,sp,64
 4ba:	0000                	unimp
 4bc:	0a00                	addi	s0,sp,272
 4be:	002f9803          	lh	a6,2(t6)
 4c2:	0080                	addi	s0,sp,64
 4c4:	0000                	unimp
 4c6:	9f00                	.2byte	0x9f00
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0008                	.2byte	0x8
   c:	0000                	unimp
   e:	0000                	unimp
  10:	24c0                	fld	fs0,136(s1)
  12:	8000                	.2byte	0x8000
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0014                	.2byte	0x14
	...
  2e:	0000                	unimp
  30:	002c                	addi	a1,sp,8
  32:	0000                	unimp
  34:	0002                	c.slli64	zero
  36:	00d1                	addi	ra,ra,20
  38:	0000                	unimp
  3a:	0008                	.2byte	0x8
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	24d4                	fld	fa3,136(s1)
  42:	8000                	.2byte	0x8000
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0014                	.2byte	0x14
	...
  5e:	0000                	unimp
  60:	002c                	addi	a1,sp,8
  62:	0000                	unimp
  64:	0002                	c.slli64	zero
  66:	000003af          	.4byte	0x3af
  6a:	0008                	.2byte	0x8
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	24e8                	fld	fa0,200(s1)
  72:	8000                	.2byte	0x8000
  74:	0000                	unimp
  76:	0000                	unimp
  78:	0008                	.2byte	0x8
	...
  8e:	0000                	unimp
  90:	002c                	addi	a1,sp,8
  92:	0000                	unimp
  94:	0002                	c.slli64	zero
  96:	045a                	slli	s0,s0,0x16
  98:	0000                	unimp
  9a:	0008                	.2byte	0x8
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	24f0                	fld	fa2,200(s1)
  a2:	8000                	.2byte	0x8000
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	0014                	.2byte	0x14
	...
  be:	0000                	unimp
  c0:	002c                	addi	a1,sp,8
  c2:	0000                	unimp
  c4:	0002                	c.slli64	zero
  c6:	0000056b          	.4byte	0x56b
  ca:	0008                	.2byte	0x8
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	2504                	fld	fs1,8(a0)
  d2:	8000                	.2byte	0x8000
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	0016                	c.slli	zero,0x5
	...
  ee:	0000                	unimp
  f0:	002c                	addi	a1,sp,8
  f2:	0000                	unimp
  f4:	0002                	c.slli64	zero
  f6:	067e                	slli	a2,a2,0x1f
  f8:	0000                	unimp
  fa:	0008                	.2byte	0x8
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	251a                	fld	fa0,384(sp)
 102:	8000                	.2byte	0x8000
 104:	0000                	unimp
 106:	0000                	unimp
 108:	003c                	addi	a5,sp,8
	...
 11e:	0000                	unimp
 120:	002c                	addi	a1,sp,8
 122:	0000                	unimp
 124:	0002                	c.slli64	zero
 126:	07b4                	addi	a3,sp,968
 128:	0000                	unimp
 12a:	0008                	.2byte	0x8
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	2556                	fld	fa0,336(sp)
 132:	8000                	.2byte	0x8000
 134:	0000                	unimp
 136:	0000                	unimp
 138:	0006                	c.slli	zero,0x1
	...
 14e:	0000                	unimp
 150:	002c                	addi	a1,sp,8
 152:	0000                	unimp
 154:	0002                	c.slli64	zero
 156:	0925                	addi	s2,s2,9
 158:	0000                	unimp
 15a:	0008                	.2byte	0x8
 15c:	0000                	unimp
 15e:	0000                	unimp
 160:	0000                	unimp
 162:	8000                	.2byte	0x8000
 164:	0000                	unimp
 166:	0000                	unimp
 168:	01ea                	slli	gp,gp,0x1a
	...
 17e:	0000                	unimp
 180:	002c                	addi	a1,sp,8
 182:	0000                	unimp
 184:	0002                	c.slli64	zero
 186:	094e                	slli	s2,s2,0x13
 188:	0000                	unimp
 18a:	0008                	.2byte	0x8
 18c:	0000                	unimp
 18e:	0000                	unimp
 190:	01ea                	slli	gp,gp,0x1a
 192:	8000                	.2byte	0x8000
 194:	0000                	unimp
 196:	0000                	unimp
 198:	0042                	c.slli	zero,0x10
	...
 1ae:	0000                	unimp
 1b0:	002c                	addi	a1,sp,8
 1b2:	0000                	unimp
 1b4:	0002                	c.slli64	zero
 1b6:	0976                	slli	s2,s2,0x1d
 1b8:	0000                	unimp
 1ba:	0008                	.2byte	0x8
 1bc:	0000                	unimp
 1be:	0000                	unimp
 1c0:	255c                	fld	fa5,136(a0)
 1c2:	8000                	.2byte	0x8000
 1c4:	0000                	unimp
 1c6:	0000                	unimp
 1c8:	0016                	c.slli	zero,0x5
	...
 1de:	0000                	unimp
 1e0:	002c                	addi	a1,sp,8
 1e2:	0000                	unimp
 1e4:	0002                	c.slli64	zero
 1e6:	0ab0                	addi	a2,sp,344
 1e8:	0000                	unimp
 1ea:	0008                	.2byte	0x8
 1ec:	0000                	unimp
 1ee:	0000                	unimp
 1f0:	2572                	fld	fa0,280(sp)
 1f2:	8000                	.2byte	0x8000
 1f4:	0000                	unimp
 1f6:	0000                	unimp
 1f8:	0030                	addi	a2,sp,8
	...
 20e:	0000                	unimp
 210:	002c                	addi	a1,sp,8
 212:	0000                	unimp
 214:	0002                	c.slli64	zero
 216:	0c19                	addi	s8,s8,6
 218:	0000                	unimp
 21a:	0008                	.2byte	0x8
 21c:	0000                	unimp
 21e:	0000                	unimp
 220:	25a2                	fld	fa1,8(sp)
 222:	8000                	.2byte	0x8000
 224:	0000                	unimp
 226:	0000                	unimp
 228:	004a                	c.slli	zero,0x12
	...
 23e:	0000                	unimp
 240:	002c                	addi	a1,sp,8
 242:	0000                	unimp
 244:	0002                	c.slli64	zero
 246:	0f59                	addi	t5,t5,22
 248:	0000                	unimp
 24a:	0008                	.2byte	0x8
 24c:	0000                	unimp
 24e:	0000                	unimp
 250:	25ec                	fld	fa1,200(a1)
 252:	8000                	.2byte	0x8000
 254:	0000                	unimp
 256:	0000                	unimp
 258:	0022                	c.slli	zero,0x8
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	008e                	slli	ra,ra,0x3
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0008                	.2byte	0x8
   8:	00000037          	lui	zero,0x0
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffffffffffff1e <__heap_end+0xffffffff7ffdbf1e>
  10:	0d0e                	slli	s10,s10,0x3
  12:	0100                	addi	s0,sp,128
  14:	0101                	addi	sp,sp,0
  16:	0001                	nop
  18:	0000                	unimp
  1a:	0001                	nop
  1c:	0100                	addi	s0,sp,128
  1e:	0101                	addi	sp,sp,0
  20:	031f 0000 0000      	.byte	0x1f, 0x03, 0x00, 0x00, 0x00, 0x00
  26:	003d                	c.nop	15
  28:	0000                	unimp
  2a:	0044                	addi	s1,sp,4
  2c:	0000                	unimp
  2e:	0102                	c.slli64	sp
  30:	021f 030f 0035      	.byte	0x1f, 0x02, 0x0f, 0x03, 0x35, 0x00
  36:	0000                	unimp
  38:	3501                	addiw	a0,a0,-32
  3a:	0000                	unimp
  3c:	0100                	addi	s0,sp,128
  3e:	0000008f          	.4byte	0x8f
  42:	0502                	c.slli64	a0
  44:	0001                	nop
  46:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
  48:	24c0                	fld	fs0,136(s1)
  4a:	8000                	.2byte	0x8000
  4c:	0000                	unimp
  4e:	0000                	unimp
  50:	0516                	slli	a0,a0,0x5
  52:	0305                	addi	t1,t1,1
  54:	0901                	addi	s2,s2,0
  56:	0000                	unimp
  58:	0501                	addi	a0,a0,0
  5a:	0601                	addi	a2,a2,0
  5c:	00097f03          	.4byte	0x97f03
  60:	0100                	addi	s0,sp,128
  62:	0505                	addi	a0,a0,1
  64:	04090103          	lb	sp,64(s2)
  68:	0100                	addi	s0,sp,128
  6a:	0105                	addi	sp,sp,1
  6c:	04090203          	lb	tp,64(s2)
  70:	0100                	addi	s0,sp,128
  72:	0b05                	addi	s6,s6,1
  74:	02097e03          	.4byte	0x2097e03
  78:	0100                	addi	s0,sp,128
  7a:	0505                	addi	a0,a0,1
  7c:	0306                	slli	t1,t1,0x1
  7e:	0901                	addi	s2,s2,0
  80:	0004                	.2byte	0x4
  82:	0501                	addi	a0,a0,0
  84:	0601                	addi	a2,a2,0
  86:	00090103          	lb	sp,0(s2)
  8a:	0100                	addi	s0,sp,128
  8c:	0609                	addi	a2,a2,2
  8e:	0000                	unimp
  90:	0101                	addi	sp,sp,0
  92:	000000ab          	.4byte	0xab
  96:	0005                	c.nop	1
  98:	0008                	.2byte	0x8
  9a:	0054                	addi	a3,sp,4
  9c:	0000                	unimp
  9e:	0101                	addi	sp,sp,0
  a0:	fb01                	bnez	a4,ffffffffffffffb0 <__heap_end+0xffffffff7ffdbfb0>
  a2:	0d0e                	slli	s10,s10,0x3
  a4:	0100                	addi	s0,sp,128
  a6:	0101                	addi	sp,sp,0
  a8:	0001                	nop
  aa:	0000                	unimp
  ac:	0001                	nop
  ae:	0100                	addi	s0,sp,128
  b0:	0101                	addi	sp,sp,0
  b2:	041f 0000 0000      	.byte	0x1f, 0x04, 0x00, 0x00, 0x00, 0x00
  b8:	003d                	c.nop	15
  ba:	0000                	unimp
  bc:	00a6                	slli	ra,ra,0x9
  be:	0000                	unimp
  c0:	0044                	addi	s1,sp,4
  c2:	0000                	unimp
  c4:	0102                	c.slli64	sp
  c6:	021f 080f 009e      	.byte	0x1f, 0x02, 0x0f, 0x08, 0x9e, 0x00
  cc:	0000                	unimp
  ce:	9e01                	subw	a2,a2,s0
  d0:	0000                	unimp
  d2:	0100                	addi	s0,sp,128
  d4:	00f5                	addi	ra,ra,29
  d6:	0000                	unimp
  d8:	fd02                	sd	zero,184(sp)
  da:	0000                	unimp
  dc:	0300                	addi	s0,sp,384
  de:	00fe                	slli	ra,ra,0x1f
  e0:	0000                	unimp
  e2:	00010603          	lb	a2,0(sp)
  e6:	0300                	addi	s0,sp,384
  e8:	0112                	slli	sp,sp,0x4
  ea:	0000                	unimp
  ec:	00008f03          	lb	t5,0(ra)
  f0:	0300                	addi	s0,sp,384
  f2:	0105                	addi	sp,sp,1
  f4:	0900                	addi	s0,sp,144
  f6:	d402                	sw	zero,40(sp)
  f8:	0024                	addi	s1,sp,8
  fa:	0080                	addi	s0,sp,64
  fc:	0000                	unimp
  fe:	1700                	addi	s0,sp,928
 100:	0505                	addi	a0,a0,1
 102:	00090103          	lb	sp,0(s2)
 106:	0100                	addi	s0,sp,128
 108:	0105                	addi	sp,sp,1
 10a:	0306                	slli	t1,t1,0x1
 10c:	097f                	.2byte	0x97f
 10e:	0000                	unimp
 110:	0501                	addi	a0,a0,0
 112:	0305                	addi	t1,t1,1
 114:	0901                	addi	s2,s2,0
 116:	0004                	.2byte	0x4
 118:	0501                	addi	a0,a0,0
 11a:	0301                	addi	t1,t1,0
 11c:	0902                	c.slli64	s2
 11e:	0004                	.2byte	0x4
 120:	0501                	addi	a0,a0,0
 122:	097e030b          	.4byte	0x97e030b
 126:	0002                	c.slli64	zero
 128:	0501                	addi	a0,a0,0
 12a:	0605                	addi	a2,a2,1
 12c:	04090103          	lb	sp,64(s2)
 130:	0100                	addi	s0,sp,128
 132:	0105                	addi	sp,sp,1
 134:	0306                	slli	t1,t1,0x1
 136:	0901                	addi	s2,s2,0
 138:	0000                	unimp
 13a:	0901                	addi	s2,s2,0
 13c:	0006                	c.slli	zero,0x1
 13e:	0100                	addi	s0,sp,128
 140:	6301                	.2byte	0x6301
 142:	0000                	unimp
 144:	0500                	addi	s0,sp,640
 146:	0800                	addi	s0,sp,16
 148:	2e00                	fld	fs0,24(a2)
 14a:	0000                	unimp
 14c:	0100                	addi	s0,sp,128
 14e:	0101                	addi	sp,sp,0
 150:	000d0efb          	.4byte	0xd0efb
 154:	0101                	addi	sp,sp,0
 156:	0101                	addi	sp,sp,0
 158:	0000                	unimp
 15a:	0100                	addi	s0,sp,128
 15c:	0000                	unimp
 15e:	0101                	addi	sp,sp,0
 160:	1f01                	addi	t5,t5,-32
 162:	0002                	c.slli64	zero
 164:	0000                	unimp
 166:	3d00                	fld	fs0,56(a0)
 168:	0000                	unimp
 16a:	0200                	addi	s0,sp,256
 16c:	1f01                	addi	t5,t5,-32
 16e:	0f02                	c.slli64	t5
 170:	2002                	fld	ft0,0(sp)
 172:	0001                	nop
 174:	0100                	addi	s0,sp,128
 176:	0120                	addi	s0,sp,136
 178:	0000                	unimp
 17a:	0501                	addi	a0,a0,0
 17c:	0001                	nop
 17e:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 180:	24e8                	fld	fa0,200(s1)
 182:	8000                	.2byte	0x8000
 184:	0000                	unimp
 186:	0000                	unimp
 188:	0516                	slli	a0,a0,0x5
 18a:	0305                	addi	t1,t1,1
 18c:	0901                	addi	s2,s2,0
 18e:	0000                	unimp
 190:	0501                	addi	a0,a0,0
 192:	00030623          	sb	zero,12(t1)
 196:	0009                	c.nop	2
 198:	0100                	addi	s0,sp,128
 19a:	0105                	addi	sp,sp,1
 19c:	02090103          	lb	sp,32(s2)
 1a0:	0100                	addi	s0,sp,128
 1a2:	0609                	addi	a2,a2,2
 1a4:	0000                	unimp
 1a6:	0101                	addi	sp,sp,0
 1a8:	0098                	addi	a4,sp,64
 1aa:	0000                	unimp
 1ac:	0005                	c.nop	1
 1ae:	0008                	.2byte	0x8
 1b0:	0041                	c.nop	16
 1b2:	0000                	unimp
 1b4:	0101                	addi	sp,sp,0
 1b6:	fb01                	bnez	a4,c6 <__stack_align+0xb6>
 1b8:	0d0e                	slli	s10,s10,0x3
 1ba:	0100                	addi	s0,sp,128
 1bc:	0101                	addi	sp,sp,0
 1be:	0001                	nop
 1c0:	0000                	unimp
 1c2:	0001                	nop
 1c4:	0100                	addi	s0,sp,128
 1c6:	0101                	addi	sp,sp,0
 1c8:	031f 0000 0000      	.byte	0x1f, 0x03, 0x00, 0x00, 0x00, 0x00
 1ce:	003d                	c.nop	15
 1d0:	0000                	unimp
 1d2:	0044                	addi	s1,sp,4
 1d4:	0000                	unimp
 1d6:	0102                	c.slli64	sp
 1d8:	021f 050f 0130      	.byte	0x1f, 0x02, 0x0f, 0x05, 0x30, 0x01
 1de:	0000                	unimp
 1e0:	3001                	.2byte	0x3001
 1e2:	0001                	nop
 1e4:	0100                	addi	s0,sp,128
 1e6:	00fd                	addi	ra,ra,31
 1e8:	0000                	unimp
 1ea:	fe02                	sd	zero,312(sp)
 1ec:	0000                	unimp
 1ee:	0200                	addi	s0,sp,256
 1f0:	0000008f          	.4byte	0x8f
 1f4:	0502                	c.slli64	a0
 1f6:	0001                	nop
 1f8:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 1fa:	24f0                	fld	fa2,200(s1)
 1fc:	8000                	.2byte	0x8000
 1fe:	0000                	unimp
 200:	0000                	unimp
 202:	03050517          	auipc	a0,0x3050
 206:	0901                	addi	s2,s2,0
 208:	0000                	unimp
 20a:	0501                	addi	a0,a0,0 # 3050202 <__heap_size+0x3030202>
 20c:	0601                	addi	a2,a2,0
 20e:	00097f03          	.4byte	0x97f03
 212:	0100                	addi	s0,sp,128
 214:	0505                	addi	a0,a0,1
 216:	04090103          	lb	sp,64(s2)
 21a:	0100                	addi	s0,sp,128
 21c:	0105                	addi	sp,sp,1
 21e:	04090203          	lb	tp,64(s2)
 222:	0100                	addi	s0,sp,128
 224:	0b05                	addi	s6,s6,1
 226:	02097e03          	.4byte	0x2097e03
 22a:	0100                	addi	s0,sp,128
 22c:	0505                	addi	a0,a0,1
 22e:	0306                	slli	t1,t1,0x1
 230:	0901                	addi	s2,s2,0
 232:	0004                	.2byte	0x4
 234:	0501                	addi	a0,a0,0
 236:	0601                	addi	a2,a2,0
 238:	00090103          	lb	sp,0(s2)
 23c:	0100                	addi	s0,sp,128
 23e:	0609                	addi	a2,a2,2
 240:	0000                	unimp
 242:	0101                	addi	sp,sp,0
 244:	00a1                	addi	ra,ra,8
 246:	0000                	unimp
 248:	0005                	c.nop	1
 24a:	0008                	.2byte	0x8
 24c:	004a                	c.slli	zero,0x12
 24e:	0000                	unimp
 250:	0101                	addi	sp,sp,0
 252:	fb01                	bnez	a4,162 <__stack_align+0x152>
 254:	0d0e                	slli	s10,s10,0x3
 256:	0100                	addi	s0,sp,128
 258:	0101                	addi	sp,sp,0
 25a:	0001                	nop
 25c:	0000                	unimp
 25e:	0001                	nop
 260:	0100                	addi	s0,sp,128
 262:	0101                	addi	sp,sp,0
 264:	041f 0000 0000      	.byte	0x1f, 0x04, 0x00, 0x00, 0x00, 0x00
 26a:	003d                	c.nop	15
 26c:	0000                	unimp
 26e:	0146                	slli	sp,sp,0x11
 270:	0000                	unimp
 272:	0044                	addi	s1,sp,4
 274:	0000                	unimp
 276:	0102                	c.slli64	sp
 278:	021f 060f 013f      	.byte	0x1f, 0x02, 0x0f, 0x06, 0x3f, 0x01
 27e:	0000                	unimp
 280:	3f01                	addiw	t5,t5,-32
 282:	0001                	nop
 284:	0100                	addi	s0,sp,128
 286:	019c                	addi	a5,sp,192
 288:	0000                	unimp
 28a:	fd02                	sd	zero,184(sp)
 28c:	0000                	unimp
 28e:	0300                	addi	s0,sp,384
 290:	00fe                	slli	ra,ra,0x1f
 292:	0000                	unimp
 294:	00008f03          	lb	t5,0(ra)
 298:	0300                	addi	s0,sp,384
 29a:	0105                	addi	sp,sp,1
 29c:	0900                	addi	s0,sp,144
 29e:	0402                	c.slli64	s0
 2a0:	0025                	c.nop	9
 2a2:	0080                	addi	s0,sp,64
 2a4:	0000                	unimp
 2a6:	1700                	addi	s0,sp,928
 2a8:	0505                	addi	a0,a0,1
 2aa:	00090103          	lb	sp,0(s2)
 2ae:	0100                	addi	s0,sp,128
 2b0:	0105                	addi	sp,sp,1
 2b2:	0306                	slli	t1,t1,0x1
 2b4:	097f                	.2byte	0x97f
 2b6:	0000                	unimp
 2b8:	0501                	addi	a0,a0,0
 2ba:	0305                	addi	t1,t1,1
 2bc:	0901                	addi	s2,s2,0
 2be:	0004                	.2byte	0x4
 2c0:	0501                	addi	a0,a0,0
 2c2:	0301                	addi	t1,t1,0
 2c4:	0902                	c.slli64	s2
 2c6:	0004                	.2byte	0x4
 2c8:	0501                	addi	a0,a0,0
 2ca:	097e030b          	.4byte	0x97e030b
 2ce:	0002                	c.slli64	zero
 2d0:	0501                	addi	a0,a0,0
 2d2:	0605                	addi	a2,a2,1
 2d4:	06090103          	lb	sp,96(s2)
 2d8:	0100                	addi	s0,sp,128
 2da:	0105                	addi	sp,sp,1
 2dc:	0306                	slli	t1,t1,0x1
 2de:	0901                	addi	s2,s2,0
 2e0:	0000                	unimp
 2e2:	0901                	addi	s2,s2,0
 2e4:	0006                	c.slli	zero,0x1
 2e6:	0100                	addi	s0,sp,128
 2e8:	1f01                	addi	t5,t5,-32
 2ea:	0001                	nop
 2ec:	0500                	addi	s0,sp,640
 2ee:	0800                	addi	s0,sp,16
 2f0:	4000                	lw	s0,0(s0)
 2f2:	0000                	unimp
 2f4:	0100                	addi	s0,sp,128
 2f6:	0101                	addi	sp,sp,0
 2f8:	000d0efb          	.4byte	0xd0efb
 2fc:	0101                	addi	sp,sp,0
 2fe:	0101                	addi	sp,sp,0
 300:	0000                	unimp
 302:	0100                	addi	s0,sp,128
 304:	0000                	unimp
 306:	0101                	addi	sp,sp,0
 308:	1f01                	addi	t5,t5,-32
 30a:	0004                	.2byte	0x4
 30c:	0000                	unimp
 30e:	3d00                	fld	fs0,56(a0)
 310:	0000                	unimp
 312:	4600                	lw	s0,8(a2)
 314:	0001                	nop
 316:	4400                	lw	s0,8(s0)
 318:	0000                	unimp
 31a:	0200                	addi	s0,sp,256
 31c:	1f01                	addi	t5,t5,-32
 31e:	0f02                	c.slli64	t5
 320:	ac04                	fsd	fs1,24(s0)
 322:	0001                	nop
 324:	0100                	addi	s0,sp,128
 326:	01ac                	addi	a1,sp,200
 328:	0000                	unimp
 32a:	9c01                	subw	s0,s0,s0
 32c:	0001                	nop
 32e:	0200                	addi	s0,sp,256
 330:	0000008f          	.4byte	0x8f
 334:	00010503          	lb	a0,0(sp)
 338:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 33a:	251a                	fld	fa0,384(sp)
 33c:	8000                	.2byte	0x8000
 33e:	0000                	unimp
 340:	0000                	unimp
 342:	05010903          	lb	s2,80(sp)
 346:	0305                	addi	t1,t1,1
 348:	0901                	addi	s2,s2,0
 34a:	0000                	unimp
 34c:	0301                	addi	t1,t1,0
 34e:	0901                	addi	s2,s2,0
 350:	0000                	unimp
 352:	0301                	addi	t1,t1,0
 354:	0901                	addi	s2,s2,0
 356:	0000                	unimp
 358:	0301                	addi	t1,t1,0
 35a:	0902                	c.slli64	s2
 35c:	0000                	unimp
 35e:	0501                	addi	a0,a0,0
 360:	060c                	addi	a1,sp,768
 362:	00090003          	lb	zero,0(s2)
 366:	0100                	addi	s0,sp,128
 368:	0505                	addi	a0,a0,1
 36a:	0306                	slli	t1,t1,0x1
 36c:	0901                	addi	s2,s2,0
 36e:	000a                	c.slli	zero,0x2
 370:	0501                	addi	a0,a0,0
 372:	0608                	addi	a0,sp,768
 374:	00090103          	lb	sp,0(s2)
 378:	0100                	addi	s0,sp,128
 37a:	0c05                	addi	s8,s8,1
 37c:	04097f03          	.4byte	0x4097f03
 380:	0100                	addi	s0,sp,128
 382:	0505                	addi	a0,a0,1
 384:	0306                	slli	t1,t1,0x1
 386:	0901                	addi	s2,s2,0
 388:	0002                	c.slli64	zero
 38a:	0501                	addi	a0,a0,0
 38c:	0608                	addi	a0,sp,768
 38e:	00090003          	lb	zero,0(s2)
 392:	0100                	addi	s0,sp,128
 394:	0200                	addi	s0,sp,256
 396:	0104                	addi	s1,sp,128
 398:	04090003          	lb	zero,64(s2)
 39c:	0100                	addi	s0,sp,128
 39e:	0505                	addi	a0,a0,1
 3a0:	0306                	slli	t1,t1,0x1
 3a2:	0905                	addi	s2,s2,1
 3a4:	000c                	.2byte	0xc
 3a6:	0501                	addi	a0,a0,0
 3a8:	060c                	addi	a1,sp,768
 3aa:	00090003          	lb	zero,0(s2)
 3ae:	0100                	addi	s0,sp,128
 3b0:	0505                	addi	a0,a0,1
 3b2:	0306                	slli	t1,t1,0x1
 3b4:	0901                	addi	s2,s2,0
 3b6:	0002                	c.slli64	zero
 3b8:	0501                	addi	a0,a0,0
 3ba:	0601                	addi	a2,a2,0
 3bc:	00090103          	lb	sp,0(s2)
 3c0:	0100                	addi	s0,sp,128
 3c2:	0905                	addi	s2,s2,1
 3c4:	0306                	slli	t1,t1,0x1
 3c6:	097a                	slli	s2,s2,0x1e
 3c8:	0004                	.2byte	0x4
 3ca:	0501                	addi	a0,a0,0
 3cc:	0601                	addi	a2,a2,0
 3ce:	00097803          	.4byte	0x97803
 3d2:	0100                	addi	s0,sp,128
 3d4:	0905                	addi	s2,s2,1
 3d6:	04090803          	lb	a6,64(s2)
 3da:	0100                	addi	s0,sp,128
 3dc:	0105                	addi	sp,sp,1
 3de:	04090603          	lb	a2,64(s2)
 3e2:	0100                	addi	s0,sp,128
 3e4:	0f05                	addi	t5,t5,1
 3e6:	02097a03          	.4byte	0x2097a03
 3ea:	0100                	addi	s0,sp,128
 3ec:	0905                	addi	s2,s2,1
 3ee:	0306                	slli	t1,t1,0x1
 3f0:	0901                	addi	s2,s2,0
 3f2:	0004                	.2byte	0x4
 3f4:	0501                	addi	a0,a0,0
 3f6:	0610                	addi	a2,sp,768
 3f8:	00090003          	lb	zero,0(s2)
 3fc:	0100                	addi	s0,sp,128
 3fe:	0105                	addi	sp,sp,1
 400:	02090503          	lb	a0,32(s2)
 404:	0100                	addi	s0,sp,128
 406:	0609                	addi	a2,a2,2
 408:	0000                	unimp
 40a:	0101                	addi	sp,sp,0
 40c:	0089                	addi	ra,ra,2
 40e:	0000                	unimp
 410:	0005                	c.nop	1
 412:	0008                	.2byte	0x8
 414:	005c                	addi	a5,sp,4
 416:	0000                	unimp
 418:	0101                	addi	sp,sp,0
 41a:	fb01                	bnez	a4,32a <__stack_align+0x31a>
 41c:	0d0e                	slli	s10,s10,0x3
 41e:	0100                	addi	s0,sp,128
 420:	0101                	addi	sp,sp,0
 422:	0001                	nop
 424:	0000                	unimp
 426:	0001                	nop
 428:	0100                	addi	s0,sp,128
 42a:	0101                	addi	sp,sp,0
 42c:	061f 0000 0000      	.byte	0x1f, 0x06, 0x00, 0x00, 0x00, 0x00
 432:	003d                	c.nop	15
 434:	0000                	unimp
 436:	0146                	slli	sp,sp,0x11
 438:	0000                	unimp
 43a:	00a6                	slli	ra,ra,0x9
 43c:	0000                	unimp
 43e:	0044                	addi	s1,sp,4
 440:	0000                	unimp
 442:	01c2                	slli	gp,gp,0x10
 444:	0000                	unimp
 446:	0102                	c.slli64	sp
 448:	021f 080f 01ba      	.byte	0x1f, 0x02, 0x0f, 0x08, 0xba, 0x01
 44e:	0000                	unimp
 450:	ba01                	j	fffffffffffffd60 <__heap_end+0xffffffff7ffdbd60>
 452:	0001                	nop
 454:	0100                	addi	s0,sp,128
 456:	019c                	addi	a5,sp,192
 458:	0000                	unimp
 45a:	f502                	sd	zero,168(sp)
 45c:	0000                	unimp
 45e:	0300                	addi	s0,sp,384
 460:	00fd                	addi	ra,ra,31
 462:	0000                	unimp
 464:	cd04                	sw	s1,24(a0)
 466:	0001                	nop
 468:	0400                	addi	s0,sp,512
 46a:	00fe                	slli	ra,ra,0x1f
 46c:	0000                	unimp
 46e:	d704                	sw	s1,40(a4)
 470:	0001                	nop
 472:	0500                	addi	s0,sp,640
 474:	0105                	addi	sp,sp,1
 476:	0900                	addi	s0,sp,144
 478:	5602                	lw	a2,32(sp)
 47a:	0025                	c.nop	9
 47c:	0080                	addi	s0,sp,64
 47e:	0000                	unimp
 480:	1800                	addi	s0,sp,48
 482:	0505                	addi	a0,a0,1
 484:	00090103          	lb	sp,0(s2)
 488:	0100                	addi	s0,sp,128
 48a:	0c05                	addi	s8,s8,1
 48c:	0306                	slli	t1,t1,0x1
 48e:	0900                	addi	s0,sp,144
 490:	0000                	unimp
 492:	0901                	addi	s2,s2,0
 494:	0006                	c.slli	zero,0x1
 496:	0100                	addi	s0,sp,128
 498:	2e01                	sext.w	t3,t3
 49a:	0004                	.2byte	0x4
 49c:	0500                	addi	s0,sp,640
 49e:	0800                	addi	s0,sp,16
 4a0:	2e00                	fld	fs0,24(a2)
 4a2:	0000                	unimp
 4a4:	0100                	addi	s0,sp,128
 4a6:	0101                	addi	sp,sp,0
 4a8:	000d0efb          	.4byte	0xd0efb
 4ac:	0101                	addi	sp,sp,0
 4ae:	0101                	addi	sp,sp,0
 4b0:	0000                	unimp
 4b2:	0100                	addi	s0,sp,128
 4b4:	0000                	unimp
 4b6:	0101                	addi	sp,sp,0
 4b8:	1f01                	addi	t5,t5,-32
 4ba:	0002                	c.slli64	zero
 4bc:	0000                	unimp
 4be:	de00                	sw	s0,56(a2)
 4c0:	0001                	nop
 4c2:	0200                	addi	s0,sp,256
 4c4:	1f01                	addi	t5,t5,-32
 4c6:	0f02                	c.slli64	t5
 4c8:	e602                	sd	zero,264(sp)
 4ca:	0001                	nop
 4cc:	0100                	addi	s0,sp,128
 4ce:	01e6                	slli	gp,gp,0x19
 4d0:	0000                	unimp
 4d2:	0001                	nop
 4d4:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 4d6:	0000                	unimp
 4d8:	8000                	.2byte	0x8000
 4da:	0000                	unimp
 4dc:	0000                	unimp
 4de:	03010903          	lb	s2,48(sp)
 4e2:	0901                	addi	s2,s2,0
 4e4:	0002                	c.slli64	zero
 4e6:	0301                	addi	t1,t1,0
 4e8:	0901                	addi	s2,s2,0
 4ea:	0002                	c.slli64	zero
 4ec:	0301                	addi	t1,t1,0
 4ee:	0901                	addi	s2,s2,0
 4f0:	0002                	c.slli64	zero
 4f2:	0301                	addi	t1,t1,0
 4f4:	0901                	addi	s2,s2,0
 4f6:	0002                	c.slli64	zero
 4f8:	0301                	addi	t1,t1,0
 4fa:	0901                	addi	s2,s2,0
 4fc:	0002                	c.slli64	zero
 4fe:	0301                	addi	t1,t1,0
 500:	0901                	addi	s2,s2,0
 502:	0002                	c.slli64	zero
 504:	0301                	addi	t1,t1,0
 506:	0901                	addi	s2,s2,0
 508:	0002                	c.slli64	zero
 50a:	0301                	addi	t1,t1,0
 50c:	0901                	addi	s2,s2,0
 50e:	0002                	c.slli64	zero
 510:	0301                	addi	t1,t1,0
 512:	0901                	addi	s2,s2,0
 514:	0002                	c.slli64	zero
 516:	0301                	addi	t1,t1,0
 518:	0901                	addi	s2,s2,0
 51a:	0002                	c.slli64	zero
 51c:	0301                	addi	t1,t1,0
 51e:	0901                	addi	s2,s2,0
 520:	0002                	c.slli64	zero
 522:	0301                	addi	t1,t1,0
 524:	0901                	addi	s2,s2,0
 526:	0002                	c.slli64	zero
 528:	0301                	addi	t1,t1,0
 52a:	0901                	addi	s2,s2,0
 52c:	0002                	c.slli64	zero
 52e:	0301                	addi	t1,t1,0
 530:	0901                	addi	s2,s2,0
 532:	0002                	c.slli64	zero
 534:	0301                	addi	t1,t1,0
 536:	0901                	addi	s2,s2,0
 538:	0002                	c.slli64	zero
 53a:	0301                	addi	t1,t1,0
 53c:	0901                	addi	s2,s2,0
 53e:	0002                	c.slli64	zero
 540:	0301                	addi	t1,t1,0
 542:	0901                	addi	s2,s2,0
 544:	0002                	c.slli64	zero
 546:	0301                	addi	t1,t1,0
 548:	0901                	addi	s2,s2,0
 54a:	0002                	c.slli64	zero
 54c:	0301                	addi	t1,t1,0
 54e:	0901                	addi	s2,s2,0
 550:	0002                	c.slli64	zero
 552:	0301                	addi	t1,t1,0
 554:	0901                	addi	s2,s2,0
 556:	0002                	c.slli64	zero
 558:	0301                	addi	t1,t1,0
 55a:	0901                	addi	s2,s2,0
 55c:	0002                	c.slli64	zero
 55e:	0301                	addi	t1,t1,0
 560:	0901                	addi	s2,s2,0
 562:	0002                	c.slli64	zero
 564:	0301                	addi	t1,t1,0
 566:	0901                	addi	s2,s2,0
 568:	0002                	c.slli64	zero
 56a:	0301                	addi	t1,t1,0
 56c:	0901                	addi	s2,s2,0
 56e:	0002                	c.slli64	zero
 570:	0301                	addi	t1,t1,0
 572:	0901                	addi	s2,s2,0
 574:	0002                	c.slli64	zero
 576:	0301                	addi	t1,t1,0
 578:	0901                	addi	s2,s2,0
 57a:	0002                	c.slli64	zero
 57c:	0301                	addi	t1,t1,0
 57e:	0901                	addi	s2,s2,0
 580:	0002                	c.slli64	zero
 582:	0301                	addi	t1,t1,0
 584:	0901                	addi	s2,s2,0
 586:	0002                	c.slli64	zero
 588:	0301                	addi	t1,t1,0
 58a:	0901                	addi	s2,s2,0
 58c:	0002                	c.slli64	zero
 58e:	0301                	addi	t1,t1,0
 590:	0901                	addi	s2,s2,0
 592:	0002                	c.slli64	zero
 594:	0301                	addi	t1,t1,0
 596:	0902                	c.slli64	s2
 598:	0002                	c.slli64	zero
 59a:	0301                	addi	t1,t1,0
 59c:	0901                	addi	s2,s2,0
 59e:	0002                	c.slli64	zero
 5a0:	0301                	addi	t1,t1,0
 5a2:	0904                	addi	s1,sp,144
 5a4:	0004                	.2byte	0x4
 5a6:	0301                	addi	t1,t1,0
 5a8:	0901                	addi	s2,s2,0
 5aa:	0008                	.2byte	0x8
 5ac:	0301                	addi	t1,t1,0
 5ae:	0902                	c.slli64	s2
 5b0:	0004                	.2byte	0x4
 5b2:	0301                	addi	t1,t1,0
 5b4:	0901                	addi	s2,s2,0
 5b6:	0004                	.2byte	0x4
 5b8:	0301                	addi	t1,t1,0
 5ba:	0901                	addi	s2,s2,0
 5bc:	0004                	.2byte	0x4
 5be:	0301                	addi	t1,t1,0
 5c0:	0901                	addi	s2,s2,0
 5c2:	0004                	.2byte	0x4
 5c4:	0301                	addi	t1,t1,0
 5c6:	0901                	addi	s2,s2,0
 5c8:	0004                	.2byte	0x4
 5ca:	0301                	addi	t1,t1,0
 5cc:	0901                	addi	s2,s2,0
 5ce:	0004                	.2byte	0x4
 5d0:	0301                	addi	t1,t1,0
 5d2:	0901                	addi	s2,s2,0
 5d4:	0004                	.2byte	0x4
 5d6:	0301                	addi	t1,t1,0
 5d8:	0901                	addi	s2,s2,0
 5da:	0004                	.2byte	0x4
 5dc:	0301                	addi	t1,t1,0
 5de:	0901                	addi	s2,s2,0
 5e0:	0004                	.2byte	0x4
 5e2:	0301                	addi	t1,t1,0
 5e4:	0901                	addi	s2,s2,0
 5e6:	0004                	.2byte	0x4
 5e8:	0301                	addi	t1,t1,0
 5ea:	0901                	addi	s2,s2,0
 5ec:	0004                	.2byte	0x4
 5ee:	0301                	addi	t1,t1,0
 5f0:	0901                	addi	s2,s2,0
 5f2:	0004                	.2byte	0x4
 5f4:	0301                	addi	t1,t1,0
 5f6:	0901                	addi	s2,s2,0
 5f8:	0004                	.2byte	0x4
 5fa:	0301                	addi	t1,t1,0
 5fc:	0901                	addi	s2,s2,0
 5fe:	0004                	.2byte	0x4
 600:	0301                	addi	t1,t1,0
 602:	0901                	addi	s2,s2,0
 604:	0004                	.2byte	0x4
 606:	0301                	addi	t1,t1,0
 608:	0901                	addi	s2,s2,0
 60a:	0004                	.2byte	0x4
 60c:	0301                	addi	t1,t1,0
 60e:	0901                	addi	s2,s2,0
 610:	0004                	.2byte	0x4
 612:	0301                	addi	t1,t1,0
 614:	0901                	addi	s2,s2,0
 616:	0004                	.2byte	0x4
 618:	0301                	addi	t1,t1,0
 61a:	0901                	addi	s2,s2,0
 61c:	0004                	.2byte	0x4
 61e:	0301                	addi	t1,t1,0
 620:	0901                	addi	s2,s2,0
 622:	0004                	.2byte	0x4
 624:	0301                	addi	t1,t1,0
 626:	0901                	addi	s2,s2,0
 628:	0004                	.2byte	0x4
 62a:	0301                	addi	t1,t1,0
 62c:	0901                	addi	s2,s2,0
 62e:	0004                	.2byte	0x4
 630:	0301                	addi	t1,t1,0
 632:	0901                	addi	s2,s2,0
 634:	0004                	.2byte	0x4
 636:	0301                	addi	t1,t1,0
 638:	0901                	addi	s2,s2,0
 63a:	0004                	.2byte	0x4
 63c:	0301                	addi	t1,t1,0
 63e:	0901                	addi	s2,s2,0
 640:	0004                	.2byte	0x4
 642:	0301                	addi	t1,t1,0
 644:	0901                	addi	s2,s2,0
 646:	0004                	.2byte	0x4
 648:	0301                	addi	t1,t1,0
 64a:	0901                	addi	s2,s2,0
 64c:	0004                	.2byte	0x4
 64e:	0301                	addi	t1,t1,0
 650:	0901                	addi	s2,s2,0
 652:	0004                	.2byte	0x4
 654:	0301                	addi	t1,t1,0
 656:	0901                	addi	s2,s2,0
 658:	0004                	.2byte	0x4
 65a:	0301                	addi	t1,t1,0
 65c:	0901                	addi	s2,s2,0
 65e:	0004                	.2byte	0x4
 660:	0301                	addi	t1,t1,0
 662:	0901                	addi	s2,s2,0
 664:	0004                	.2byte	0x4
 666:	0301                	addi	t1,t1,0
 668:	0901                	addi	s2,s2,0
 66a:	0004                	.2byte	0x4
 66c:	0301                	addi	t1,t1,0
 66e:	0901                	addi	s2,s2,0
 670:	0004                	.2byte	0x4
 672:	0301                	addi	t1,t1,0
 674:	0908                	addi	a0,sp,144
 676:	0004                	.2byte	0x4
 678:	0301                	addi	t1,t1,0
 67a:	0904                	addi	s1,sp,144
 67c:	0008                	.2byte	0x8
 67e:	0301                	addi	t1,t1,0
 680:	0901                	addi	s2,s2,0
 682:	0004                	.2byte	0x4
 684:	0301                	addi	t1,t1,0
 686:	0901                	addi	s2,s2,0
 688:	0000                	unimp
 68a:	0301                	addi	t1,t1,0
 68c:	0901                	addi	s2,s2,0
 68e:	0004                	.2byte	0x4
 690:	0301                	addi	t1,t1,0
 692:	0901                	addi	s2,s2,0
 694:	0008                	.2byte	0x8
 696:	0301                	addi	t1,t1,0
 698:	0901                	addi	s2,s2,0
 69a:	0004                	.2byte	0x4
 69c:	0301                	addi	t1,t1,0
 69e:	00020903          	lb	s2,0(tp) # 0 <__boot_hart>
 6a2:	0301                	addi	t1,t1,0
 6a4:	0901                	addi	s2,s2,0
 6a6:	0002                	c.slli64	zero
 6a8:	0301                	addi	t1,t1,0
 6aa:	0901                	addi	s2,s2,0
 6ac:	0004                	.2byte	0x4
 6ae:	0301                	addi	t1,t1,0
 6b0:	00040903          	lb	s2,0(s0)
 6b4:	0301                	addi	t1,t1,0
 6b6:	0901                	addi	s2,s2,0
 6b8:	0008                	.2byte	0x8
 6ba:	0301                	addi	t1,t1,0
 6bc:	00040903          	lb	s2,0(s0)
 6c0:	0301                	addi	t1,t1,0
 6c2:	00040903          	lb	s2,0(s0)
 6c6:	0301                	addi	t1,t1,0
 6c8:	0901                	addi	s2,s2,0
 6ca:	0004                	.2byte	0x4
 6cc:	0301                	addi	t1,t1,0
 6ce:	00080903          	lb	s2,0(a6) # 590b57dc <__heap_size+0x590957dc>
 6d2:	0301                	addi	t1,t1,0
 6d4:	0901                	addi	s2,s2,0
 6d6:	0004                	.2byte	0x4
 6d8:	0301                	addi	t1,t1,0
 6da:	0901                	addi	s2,s2,0
 6dc:	0004                	.2byte	0x4
 6de:	0301                	addi	t1,t1,0
 6e0:	0902                	c.slli64	s2
 6e2:	0004                	.2byte	0x4
 6e4:	0301                	addi	t1,t1,0
 6e6:	0901                	addi	s2,s2,0
 6e8:	0004                	.2byte	0x4
 6ea:	0301                	addi	t1,t1,0
 6ec:	0901                	addi	s2,s2,0
 6ee:	0002                	c.slli64	zero
 6f0:	0301                	addi	t1,t1,0
 6f2:	0904                	addi	s1,sp,144
 6f4:	0004                	.2byte	0x4
 6f6:	0301                	addi	t1,t1,0
 6f8:	0901                	addi	s2,s2,0
 6fa:	0008                	.2byte	0x8
 6fc:	0301                	addi	t1,t1,0
 6fe:	0901                	addi	s2,s2,0
 700:	0004                	.2byte	0x4
 702:	0301                	addi	t1,t1,0
 704:	00040903          	lb	s2,0(s0)
 708:	0301                	addi	t1,t1,0
 70a:	00020907          	.4byte	0x20907
 70e:	0301                	addi	t1,t1,0
 710:	0901                	addi	s2,s2,0
 712:	0004                	.2byte	0x4
 714:	0301                	addi	t1,t1,0
 716:	00020903          	lb	s2,0(tp) # 0 <__boot_hart>
 71a:	0301                	addi	t1,t1,0
 71c:	0901                	addi	s2,s2,0
 71e:	0002                	c.slli64	zero
 720:	0301                	addi	t1,t1,0
 722:	0901                	addi	s2,s2,0
 724:	0004                	.2byte	0x4
 726:	0301                	addi	t1,t1,0
 728:	0901                	addi	s2,s2,0
 72a:	0002                	c.slli64	zero
 72c:	0301                	addi	t1,t1,0
 72e:	0901                	addi	s2,s2,0
 730:	0002                	c.slli64	zero
 732:	0301                	addi	t1,t1,0
 734:	0901                	addi	s2,s2,0
 736:	0002                	c.slli64	zero
 738:	0301                	addi	t1,t1,0
 73a:	0901                	addi	s2,s2,0
 73c:	0002                	c.slli64	zero
 73e:	0301                	addi	t1,t1,0
 740:	0901                	addi	s2,s2,0
 742:	0002                	c.slli64	zero
 744:	0301                	addi	t1,t1,0
 746:	0901                	addi	s2,s2,0
 748:	0002                	c.slli64	zero
 74a:	0301                	addi	t1,t1,0
 74c:	0901                	addi	s2,s2,0
 74e:	0002                	c.slli64	zero
 750:	0301                	addi	t1,t1,0
 752:	0901                	addi	s2,s2,0
 754:	0002                	c.slli64	zero
 756:	0301                	addi	t1,t1,0
 758:	0901                	addi	s2,s2,0
 75a:	0002                	c.slli64	zero
 75c:	0301                	addi	t1,t1,0
 75e:	0901                	addi	s2,s2,0
 760:	0002                	c.slli64	zero
 762:	0301                	addi	t1,t1,0
 764:	0901                	addi	s2,s2,0
 766:	0002                	c.slli64	zero
 768:	0301                	addi	t1,t1,0
 76a:	0901                	addi	s2,s2,0
 76c:	0002                	c.slli64	zero
 76e:	0301                	addi	t1,t1,0
 770:	0901                	addi	s2,s2,0
 772:	0002                	c.slli64	zero
 774:	0301                	addi	t1,t1,0
 776:	0901                	addi	s2,s2,0
 778:	0002                	c.slli64	zero
 77a:	0301                	addi	t1,t1,0
 77c:	0901                	addi	s2,s2,0
 77e:	0002                	c.slli64	zero
 780:	0301                	addi	t1,t1,0
 782:	0901                	addi	s2,s2,0
 784:	0002                	c.slli64	zero
 786:	0301                	addi	t1,t1,0
 788:	0901                	addi	s2,s2,0
 78a:	0002                	c.slli64	zero
 78c:	0301                	addi	t1,t1,0
 78e:	0901                	addi	s2,s2,0
 790:	0002                	c.slli64	zero
 792:	0301                	addi	t1,t1,0
 794:	0901                	addi	s2,s2,0
 796:	0002                	c.slli64	zero
 798:	0301                	addi	t1,t1,0
 79a:	0901                	addi	s2,s2,0
 79c:	0002                	c.slli64	zero
 79e:	0301                	addi	t1,t1,0
 7a0:	0901                	addi	s2,s2,0
 7a2:	0002                	c.slli64	zero
 7a4:	0301                	addi	t1,t1,0
 7a6:	0901                	addi	s2,s2,0
 7a8:	0002                	c.slli64	zero
 7aa:	0301                	addi	t1,t1,0
 7ac:	0901                	addi	s2,s2,0
 7ae:	0002                	c.slli64	zero
 7b0:	0301                	addi	t1,t1,0
 7b2:	0901                	addi	s2,s2,0
 7b4:	0002                	c.slli64	zero
 7b6:	0301                	addi	t1,t1,0
 7b8:	0901                	addi	s2,s2,0
 7ba:	0002                	c.slli64	zero
 7bc:	0301                	addi	t1,t1,0
 7be:	0901                	addi	s2,s2,0
 7c0:	0002                	c.slli64	zero
 7c2:	0301                	addi	t1,t1,0
 7c4:	0901                	addi	s2,s2,0
 7c6:	0002                	c.slli64	zero
 7c8:	0301                	addi	t1,t1,0
 7ca:	0901                	addi	s2,s2,0
 7cc:	0002                	c.slli64	zero
 7ce:	0301                	addi	t1,t1,0
 7d0:	0901                	addi	s2,s2,0
 7d2:	0002                	c.slli64	zero
 7d4:	0301                	addi	t1,t1,0
 7d6:	00020903          	lb	s2,0(tp) # 0 <__boot_hart>
 7da:	0301                	addi	t1,t1,0
 7dc:	0901                	addi	s2,s2,0
 7de:	0004                	.2byte	0x4
 7e0:	0301                	addi	t1,t1,0
 7e2:	0901                	addi	s2,s2,0
 7e4:	0004                	.2byte	0x4
 7e6:	0301                	addi	t1,t1,0
 7e8:	0901                	addi	s2,s2,0
 7ea:	0004                	.2byte	0x4
 7ec:	0301                	addi	t1,t1,0
 7ee:	0901                	addi	s2,s2,0
 7f0:	0002                	c.slli64	zero
 7f2:	0301                	addi	t1,t1,0
 7f4:	0901                	addi	s2,s2,0
 7f6:	0004                	.2byte	0x4
 7f8:	0301                	addi	t1,t1,0
 7fa:	00040903          	lb	s2,0(s0)
 7fe:	0301                	addi	t1,t1,0
 800:	0901                	addi	s2,s2,0
 802:	0006                	c.slli	zero,0x1
 804:	0301                	addi	t1,t1,0
 806:	0902                	c.slli64	s2
 808:	0004                	.2byte	0x4
 80a:	0301                	addi	t1,t1,0
 80c:	0901                	addi	s2,s2,0
 80e:	0002                	c.slli64	zero
 810:	0301                	addi	t1,t1,0
 812:	0901                	addi	s2,s2,0
 814:	0002                	c.slli64	zero
 816:	0301                	addi	t1,t1,0
 818:	0901                	addi	s2,s2,0
 81a:	0002                	c.slli64	zero
 81c:	0301                	addi	t1,t1,0
 81e:	0901                	addi	s2,s2,0
 820:	0002                	c.slli64	zero
 822:	0301                	addi	t1,t1,0
 824:	0901                	addi	s2,s2,0
 826:	0002                	c.slli64	zero
 828:	0301                	addi	t1,t1,0
 82a:	0901                	addi	s2,s2,0
 82c:	0002                	c.slli64	zero
 82e:	0301                	addi	t1,t1,0
 830:	0901                	addi	s2,s2,0
 832:	0002                	c.slli64	zero
 834:	0301                	addi	t1,t1,0
 836:	0901                	addi	s2,s2,0
 838:	0002                	c.slli64	zero
 83a:	0301                	addi	t1,t1,0
 83c:	0901                	addi	s2,s2,0
 83e:	0002                	c.slli64	zero
 840:	0301                	addi	t1,t1,0
 842:	0901                	addi	s2,s2,0
 844:	0002                	c.slli64	zero
 846:	0301                	addi	t1,t1,0
 848:	0901                	addi	s2,s2,0
 84a:	0002                	c.slli64	zero
 84c:	0301                	addi	t1,t1,0
 84e:	0901                	addi	s2,s2,0
 850:	0002                	c.slli64	zero
 852:	0301                	addi	t1,t1,0
 854:	0901                	addi	s2,s2,0
 856:	0002                	c.slli64	zero
 858:	0301                	addi	t1,t1,0
 85a:	0901                	addi	s2,s2,0
 85c:	0002                	c.slli64	zero
 85e:	0301                	addi	t1,t1,0
 860:	0901                	addi	s2,s2,0
 862:	0002                	c.slli64	zero
 864:	0301                	addi	t1,t1,0
 866:	0901                	addi	s2,s2,0
 868:	0002                	c.slli64	zero
 86a:	0301                	addi	t1,t1,0
 86c:	0901                	addi	s2,s2,0
 86e:	0002                	c.slli64	zero
 870:	0301                	addi	t1,t1,0
 872:	0901                	addi	s2,s2,0
 874:	0002                	c.slli64	zero
 876:	0301                	addi	t1,t1,0
 878:	0901                	addi	s2,s2,0
 87a:	0002                	c.slli64	zero
 87c:	0301                	addi	t1,t1,0
 87e:	0901                	addi	s2,s2,0
 880:	0002                	c.slli64	zero
 882:	0301                	addi	t1,t1,0
 884:	0901                	addi	s2,s2,0
 886:	0002                	c.slli64	zero
 888:	0301                	addi	t1,t1,0
 88a:	0901                	addi	s2,s2,0
 88c:	0002                	c.slli64	zero
 88e:	0301                	addi	t1,t1,0
 890:	0901                	addi	s2,s2,0
 892:	0002                	c.slli64	zero
 894:	0301                	addi	t1,t1,0
 896:	0901                	addi	s2,s2,0
 898:	0002                	c.slli64	zero
 89a:	0301                	addi	t1,t1,0
 89c:	0901                	addi	s2,s2,0
 89e:	0002                	c.slli64	zero
 8a0:	0301                	addi	t1,t1,0
 8a2:	0901                	addi	s2,s2,0
 8a4:	0002                	c.slli64	zero
 8a6:	0301                	addi	t1,t1,0
 8a8:	0901                	addi	s2,s2,0
 8aa:	0002                	c.slli64	zero
 8ac:	0301                	addi	t1,t1,0
 8ae:	0901                	addi	s2,s2,0
 8b0:	0002                	c.slli64	zero
 8b2:	0301                	addi	t1,t1,0
 8b4:	0901                	addi	s2,s2,0
 8b6:	0002                	c.slli64	zero
 8b8:	0301                	addi	t1,t1,0
 8ba:	0902                	c.slli64	s2
 8bc:	0002                	c.slli64	zero
 8be:	0301                	addi	t1,t1,0
 8c0:	0902                	c.slli64	s2
 8c2:	0002                	c.slli64	zero
 8c4:	0901                	addi	s2,s2,0
 8c6:	0004                	.2byte	0x4
 8c8:	0100                	addi	s0,sp,128
 8ca:	5c01                	li	s8,-32
 8cc:	0000                	unimp
 8ce:	0500                	addi	s0,sp,640
 8d0:	0800                	addi	s0,sp,16
 8d2:	2e00                	fld	fs0,24(a2)
 8d4:	0000                	unimp
 8d6:	0100                	addi	s0,sp,128
 8d8:	0101                	addi	sp,sp,0
 8da:	000d0efb          	.4byte	0xd0efb
 8de:	0101                	addi	sp,sp,0
 8e0:	0101                	addi	sp,sp,0
 8e2:	0000                	unimp
 8e4:	0100                	addi	s0,sp,128
 8e6:	0000                	unimp
 8e8:	0101                	addi	sp,sp,0
 8ea:	1f01                	addi	t5,t5,-32
 8ec:	0002                	c.slli64	zero
 8ee:	0000                	unimp
 8f0:	de00                	sw	s0,56(a2)
 8f2:	0001                	nop
 8f4:	0200                	addi	s0,sp,256
 8f6:	1f01                	addi	t5,t5,-32
 8f8:	0f02                	c.slli64	t5
 8fa:	ed02                	sd	zero,152(sp)
 8fc:	0001                	nop
 8fe:	0100                	addi	s0,sp,128
 900:	01ed                	addi	gp,gp,27 # 8000371b <__global_pointer$+0x1b>
 902:	0000                	unimp
 904:	0001                	nop
 906:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 908:	01ea                	slli	gp,gp,0x1a
 90a:	8000                	.2byte	0x8000
 90c:	0000                	unimp
 90e:	0000                	unimp
 910:	03011003          	lh	zero,48(sp)
 914:	0901                	addi	s2,s2,0
 916:	000a                	c.slli	zero,0x2
 918:	0301                	addi	t1,t1,0
 91a:	0906                	slli	s2,s2,0x1
 91c:	0016                	c.slli	zero,0x5
 91e:	0301                	addi	t1,t1,0
 920:	0901                	addi	s2,s2,0
 922:	000c                	.2byte	0xc
 924:	0901                	addi	s2,s2,0
 926:	0016                	c.slli	zero,0x5
 928:	0100                	addi	s0,sp,128
 92a:	b701                	j	82a <__stack_align+0x81a>
 92c:	0000                	unimp
 92e:	0500                	addi	s0,sp,640
 930:	0800                	addi	s0,sp,16
 932:	4900                	lw	s0,16(a0)
 934:	0000                	unimp
 936:	0100                	addi	s0,sp,128
 938:	0101                	addi	sp,sp,0
 93a:	000d0efb          	.4byte	0xd0efb
 93e:	0101                	addi	sp,sp,0
 940:	0101                	addi	sp,sp,0
 942:	0000                	unimp
 944:	0100                	addi	s0,sp,128
 946:	0000                	unimp
 948:	0101                	addi	sp,sp,0
 94a:	1f01                	addi	t5,t5,-32
 94c:	0005                	c.nop	1
 94e:	0000                	unimp
 950:	de00                	sw	s0,56(a2)
 952:	0001                	nop
 954:	a600                	fsd	fs0,8(a2)
 956:	0000                	unimp
 958:	4400                	lw	s0,8(s0)
 95a:	0000                	unimp
 95c:	c200                	sw	s0,0(a2)
 95e:	0001                	nop
 960:	0200                	addi	s0,sp,256
 962:	1f01                	addi	t5,t5,-32
 964:	0f02                	c.slli64	t5
 966:	ff05                	bnez	a4,89e <__stack_align+0x88e>
 968:	0001                	nop
 96a:	0100                	addi	s0,sp,128
 96c:	01ff                	.2byte	0x1ff
 96e:	0000                	unimp
 970:	f501                	bnez	a0,878 <__stack_align+0x868>
 972:	0000                	unimp
 974:	0200                	addi	s0,sp,256
 976:	01cd                	addi	gp,gp,19 # 80003713 <__global_pointer$+0x13>
 978:	0000                	unimp
 97a:	00020703          	lb	a4,0(tp) # 0 <__boot_hart>
 97e:	0400                	addi	s0,sp,512
 980:	0105                	addi	sp,sp,1
 982:	0900                	addi	s0,sp,144
 984:	5c02                	lw	s8,32(sp)
 986:	0025                	c.nop	9
 988:	0080                	addi	s0,sp,64
 98a:	0000                	unimp
 98c:	1600                	addi	s0,sp,800
 98e:	0505                	addi	a0,a0,1
 990:	00090203          	lb	tp,0(s2)
 994:	0100                	addi	s0,sp,128
 996:	0105                	addi	sp,sp,1
 998:	0306                	slli	t1,t1,0x1
 99a:	097e                	slli	s2,s2,0x1f
 99c:	0000                	unimp
 99e:	0501                	addi	a0,a0,0
 9a0:	0309                	addi	t1,t1,2
 9a2:	0902                	c.slli64	s2
 9a4:	0002                	c.slli64	zero
 9a6:	0501                	addi	a0,a0,0
 9a8:	0301                	addi	t1,t1,0
 9aa:	097e                	slli	s2,s2,0x1f
 9ac:	0004                	.2byte	0x4
 9ae:	0501                	addi	a0,a0,0
 9b0:	0309                	addi	t1,t1,2
 9b2:	0902                	c.slli64	s2
 9b4:	0002                	c.slli64	zero
 9b6:	0501                	addi	a0,a0,0
 9b8:	0605                	addi	a2,a2,1
 9ba:	02090203          	lb	tp,32(s2)
 9be:	0100                	addi	s0,sp,128
 9c0:	2a05                	addiw	s4,s4,1
 9c2:	0306                	slli	t1,t1,0x1
 9c4:	0900                	addi	s0,sp,144
 9c6:	0000                	unimp
 9c8:	0001                	nop
 9ca:	0402                	c.slli64	s0
 9cc:	0301                	addi	t1,t1,0
 9ce:	0900                	addi	s0,sp,144
 9d0:	0004                	.2byte	0x4
 9d2:	0501                	addi	a0,a0,0
 9d4:	0005                	c.nop	1
 9d6:	0402                	c.slli64	s0
 9d8:	0604                	addi	s1,sp,768
 9da:	04090103          	lb	sp,64(s2)
 9de:	0100                	addi	s0,sp,128
 9e0:	0409                	addi	s0,s0,2
 9e2:	0000                	unimp
 9e4:	0101                	addi	sp,sp,0
 9e6:	000000db          	.4byte	0xdb
 9ea:	0005                	c.nop	1
 9ec:	0008                	.2byte	0x8
 9ee:	0040                	addi	s0,sp,4
 9f0:	0000                	unimp
 9f2:	0101                	addi	sp,sp,0
 9f4:	fb01                	bnez	a4,904 <__stack_align+0x8f4>
 9f6:	0d0e                	slli	s10,s10,0x3
 9f8:	0100                	addi	s0,sp,128
 9fa:	0101                	addi	sp,sp,0
 9fc:	0001                	nop
 9fe:	0000                	unimp
 a00:	0001                	nop
 a02:	0100                	addi	s0,sp,128
 a04:	0101                	addi	sp,sp,0
 a06:	041f 0000 0000      	.byte	0x1f, 0x04, 0x00, 0x00, 0x00, 0x00
 a0c:	01de                	slli	gp,gp,0x17
 a0e:	0000                	unimp
 a10:	021f 0000 0146      	.byte	0x1f, 0x02, 0x00, 0x00, 0x46, 0x01
 a16:	0000                	unimp
 a18:	0102                	c.slli64	sp
 a1a:	021f 040f 0219      	.byte	0x1f, 0x02, 0x0f, 0x04, 0x19, 0x02
 a20:	0000                	unimp
 a22:	1901                	addi	s2,s2,-32
 a24:	0002                	c.slli64	zero
 a26:	0100                	addi	s0,sp,128
 a28:	0266                	slli	tp,tp,0x19
 a2a:	0000                	unimp
 a2c:	9c02                	jalr	s8
 a2e:	0001                	nop
 a30:	0300                	addi	s0,sp,384
 a32:	0105                	addi	sp,sp,1
 a34:	0900                	addi	s0,sp,144
 a36:	7202                	ld	tp,32(sp)
 a38:	0025                	c.nop	9
 a3a:	0080                	addi	s0,sp,64
 a3c:	0000                	unimp
 a3e:	1500                	addi	s0,sp,672
 a40:	0505                	addi	a0,a0,1
 a42:	00090103          	lb	sp,0(s2)
 a46:	0100                	addi	s0,sp,128
 a48:	00090103          	lb	sp,0(s2)
 a4c:	0100                	addi	s0,sp,128
 a4e:	00090103          	lb	sp,0(s2)
 a52:	0100                	addi	s0,sp,128
 a54:	00090103          	lb	sp,0(s2)
 a58:	0100                	addi	s0,sp,128
 a5a:	00090103          	lb	sp,0(s2)
 a5e:	0100                	addi	s0,sp,128
 a60:	00090203          	lb	tp,0(s2)
 a64:	0100                	addi	s0,sp,128
 a66:	0105                	addi	sp,sp,1
 a68:	0306                	slli	t1,t1,0x1
 a6a:	0979                	addi	s2,s2,30
 a6c:	0000                	unimp
 a6e:	0501                	addi	a0,a0,0
 a70:	0305                	addi	t1,t1,1
 a72:	00020907          	.4byte	0x20907
 a76:	0501                	addi	a0,a0,0
 a78:	0301                	addi	t1,t1,0
 a7a:	0979                	addi	s2,s2,30
 a7c:	000e                	c.slli	zero,0x3
 a7e:	0501                	addi	a0,a0,0
 a80:	0305                	addi	t1,t1,1
 a82:	00040907          	.4byte	0x40907
 a86:	0601                	addi	a2,a2,0
 a88:	06090103          	lb	sp,96(s2)
 a8c:	0100                	addi	s0,sp,128
 a8e:	0105                	addi	sp,sp,1
 a90:	0306                	slli	t1,t1,0x1
 a92:	0901                	addi	s2,s2,0
 a94:	0006                	c.slli	zero,0x1
 a96:	0501                	addi	a0,a0,0
 a98:	0305                	addi	t1,t1,1
 a9a:	097f                	.2byte	0x97f
 a9c:	0004                	.2byte	0x4
 a9e:	0501                	addi	a0,a0,0
 aa0:	0301                	addi	t1,t1,0
 aa2:	0901                	addi	s2,s2,0
 aa4:	0004                	.2byte	0x4
 aa6:	0501                	addi	a0,a0,0
 aa8:	0305                	addi	t1,t1,1
 aaa:	097f                	.2byte	0x97f
 aac:	0000                	unimp
 aae:	0501                	addi	a0,a0,0
 ab0:	0301                	addi	t1,t1,0
 ab2:	0901                	addi	s2,s2,0
 ab4:	0002                	c.slli64	zero
 ab6:	0501                	addi	a0,a0,0
 ab8:	0305                	addi	t1,t1,1
 aba:	097f                	.2byte	0x97f
 abc:	0002                	c.slli64	zero
 abe:	0901                	addi	s2,s2,0
 ac0:	0004                	.2byte	0x4
 ac2:	0100                	addi	s0,sp,128
 ac4:	de01                	beqz	a2,9dc <__stack_align+0x9cc>
 ac6:	0001                	nop
 ac8:	0500                	addi	s0,sp,640
 aca:	0800                	addi	s0,sp,16
 acc:	5300                	lw	s0,32(a4)
 ace:	0000                	unimp
 ad0:	0100                	addi	s0,sp,128
 ad2:	0101                	addi	sp,sp,0
 ad4:	000d0efb          	.4byte	0xd0efb
 ad8:	0101                	addi	sp,sp,0
 ada:	0101                	addi	sp,sp,0
 adc:	0000                	unimp
 ade:	0100                	addi	s0,sp,128
 ae0:	0000                	unimp
 ae2:	0101                	addi	sp,sp,0
 ae4:	1f01                	addi	t5,t5,-32
 ae6:	0005                	c.nop	1
 ae8:	0000                	unimp
 aea:	de00                	sw	s0,56(a2)
 aec:	0001                	nop
 aee:	c200                	sw	s0,0(a2)
 af0:	0001                	nop
 af2:	a600                	fsd	fs0,8(a2)
 af4:	0000                	unimp
 af6:	4400                	lw	s0,8(s0)
 af8:	0000                	unimp
 afa:	0200                	addi	s0,sp,256
 afc:	1f01                	addi	t5,t5,-32
 afe:	0f02                	c.slli64	t5
 b00:	00027707          	.4byte	0x27707
 b04:	0100                	addi	s0,sp,128
 b06:	00000277          	.4byte	0x277
 b0a:	7e01                	lui	t3,0xfffe0
 b0c:	0002                	c.slli64	zero
 b0e:	0200                	addi	s0,sp,256
 b10:	00000287          	.4byte	0x287
 b14:	f502                	sd	zero,168(sp)
 b16:	0000                	unimp
 b18:	0300                	addi	s0,sp,384
 b1a:	01cd                	addi	gp,gp,19 # 80003713 <__global_pointer$+0x13>
 b1c:	0000                	unimp
 b1e:	d704                	sw	s1,40(a4)
 b20:	0001                	nop
 b22:	0200                	addi	s0,sp,256
 b24:	0105                	addi	sp,sp,1
 b26:	0900                	addi	s0,sp,144
 b28:	a202                	fsd	ft0,256(sp)
 b2a:	0025                	c.nop	9
 b2c:	0080                	addi	s0,sp,64
 b2e:	0000                	unimp
 b30:	0300                	addi	s0,sp,384
 b32:	010c                	addi	a1,sp,128
 b34:	0505                	addi	a0,a0,1
 b36:	00090103          	lb	sp,0(s2)
 b3a:	0100                	addi	s0,sp,128
 b3c:	00090103          	lb	sp,0(s2)
 b40:	0100                	addi	s0,sp,128
 b42:	00090203          	lb	tp,0(s2)
 b46:	0100                	addi	s0,sp,128
 b48:	0105                	addi	sp,sp,1
 b4a:	0306                	slli	t1,t1,0x1
 b4c:	097c                	addi	a5,sp,156
 b4e:	0000                	unimp
 b50:	0501                	addi	a0,a0,0
 b52:	030c                	addi	a1,sp,384
 b54:	0904                	addi	s1,sp,144
 b56:	0002                	c.slli64	zero
 b58:	0501                	addi	a0,a0,0
 b5a:	0605                	addi	a2,a2,1
 b5c:	02090103          	lb	sp,32(s2)
 b60:	0100                	addi	s0,sp,128
 b62:	0c05                	addi	s8,s8,1
 b64:	0306                	slli	t1,t1,0x1
 b66:	0900                	addi	s0,sp,144
 b68:	0000                	unimp
 b6a:	0501                	addi	a0,a0,0
 b6c:	0605                	addi	a2,a2,1
 b6e:	02090103          	lb	sp,32(s2)
 b72:	0100                	addi	s0,sp,128
 b74:	0c05                	addi	s8,s8,1
 b76:	0306                	slli	t1,t1,0x1
 b78:	0900                	addi	s0,sp,144
 b7a:	0000                	unimp
 b7c:	0501                	addi	a0,a0,0
 b7e:	0605                	addi	a2,a2,1
 b80:	02090103          	lb	sp,32(s2)
 b84:	0100                	addi	s0,sp,128
 b86:	0805                	addi	a6,a6,1
 b88:	0306                	slli	t1,t1,0x1
 b8a:	0902                	c.slli64	s2
 b8c:	0000                	unimp
 b8e:	0501                	addi	a0,a0,0
 b90:	030c                	addi	a1,sp,384
 b92:	097e                	slli	s2,s2,0x1f
 b94:	0002                	c.slli64	zero
 b96:	0501                	addi	a0,a0,0
 b98:	0605                	addi	a2,a2,1
 b9a:	02090203          	lb	tp,32(s2)
 b9e:	0100                	addi	s0,sp,128
 ba0:	0805                	addi	a6,a6,1
 ba2:	0306                	slli	t1,t1,0x1
 ba4:	0900                	addi	s0,sp,144
 ba6:	0000                	unimp
 ba8:	0501                	addi	a0,a0,0
 baa:	0605                	addi	a2,a2,1
 bac:	06090103          	lb	sp,96(s2)
 bb0:	0100                	addi	s0,sp,128
 bb2:	0204                	addi	s1,sp,256
 bb4:	0306                	slli	t1,t1,0x1
 bb6:	0915                	addi	s2,s2,5
 bb8:	0004                	.2byte	0x4
 bba:	0401                	addi	s0,s0,0
 bbc:	06100503          	lb	a0,97(zero) # 61 <__stack_align+0x51>
 bc0:	02096403          	lwu	s0,32(s2)
 bc4:	0100                	addi	s0,sp,128
 bc6:	0204                	addi	s1,sp,256
 bc8:	0505                	addi	a0,a0,1
 bca:	00091003          	lh	zero,0(s2)
 bce:	0100                	addi	s0,sp,128
 bd0:	0c05                	addi	s8,s8,1
 bd2:	0306                	slli	t1,t1,0x1
 bd4:	0900                	addi	s0,sp,144
 bd6:	0000                	unimp
 bd8:	0401                	addi	s0,s0,0
 bda:	03100503          	lb	a0,49(zero) # 31 <__stack_align+0x21>
 bde:	0970                	addi	a2,sp,156
 be0:	0002                	c.slli64	zero
 be2:	0501                	addi	a0,a0,0
 be4:	060e                	slli	a2,a2,0x3
 be6:	02090203          	lb	tp,32(s2)
 bea:	0100                	addi	s0,sp,128
 bec:	0204                	addi	s1,sp,256
 bee:	0505                	addi	a0,a0,1
 bf0:	00091803          	lh	a6,0(s2)
 bf4:	0100                	addi	s0,sp,128
 bf6:	00090203          	lb	tp,0(s2)
 bfa:	0100                	addi	s0,sp,128
 bfc:	04090d03          	lb	s10,64(s2)
 c00:	0100                	addi	s0,sp,128
 c02:	0304                	addi	s1,sp,384
 c04:	0e05                	addi	t3,t3,1 # fffffffffffe0001 <__heap_end+0xffffffff7ffbc001>
 c06:	0306                	slli	t1,t1,0x1
 c08:	0959                	addi	s2,s2,22
 c0a:	0000                	unimp
 c0c:	0401                	addi	s0,s0,0
 c0e:	0501                	addi	a0,a0,0
 c10:	0605                	addi	a2,a2,1
 c12:	02090603          	lb	a2,32(s2)
 c16:	0100                	addi	s0,sp,128
 c18:	0204                	addi	s1,sp,256
 c1a:	2005                	.2byte	0x2005
 c1c:	00097e03          	.4byte	0x97e03
 c20:	0100                	addi	s0,sp,128
 c22:	0104                	addi	s1,sp,128
 c24:	0505                	addi	a0,a0,1
 c26:	04090303          	lb	t1,64(s2)
 c2a:	0100                	addi	s0,sp,128
 c2c:	0c05                	addi	s8,s8,1
 c2e:	0306                	slli	t1,t1,0x1
 c30:	0900                	addi	s0,sp,144
 c32:	0000                	unimp
 c34:	0501                	addi	a0,a0,0
 c36:	0605                	addi	a2,a2,1
 c38:	0a090103          	lb	sp,160(s2)
 c3c:	0100                	addi	s0,sp,128
 c3e:	1505                	addi	a0,a0,-31
 c40:	0200                	addi	s0,sp,256
 c42:	0104                	addi	s1,sp,128
 c44:	00090003          	lb	zero,0(s2)
 c48:	0100                	addi	s0,sp,128
 c4a:	0505                	addi	a0,a0,1
 c4c:	04090103          	lb	sp,64(s2)
 c50:	0100                	addi	s0,sp,128
 c52:	0e05                	addi	t3,t3,1
 c54:	0306                	slli	t1,t1,0x1
 c56:	0900                	addi	s0,sp,144
 c58:	0000                	unimp
 c5a:	0501                	addi	a0,a0,0
 c5c:	0605                	addi	a2,a2,1
 c5e:	08090103          	lb	sp,128(s2)
 c62:	0100                	addi	s0,sp,128
 c64:	0304                	addi	s1,sp,384
 c66:	00097b03          	.4byte	0x97b03
 c6a:	0100                	addi	s0,sp,128
 c6c:	0204                	addi	s1,sp,256
 c6e:	00092803          	lw	a6,0(s2)
 c72:	0100                	addi	s0,sp,128
 c74:	0104                	addi	s1,sp,128
 c76:	04095f03          	lhu	t5,64(s2)
 c7a:	0100                	addi	s0,sp,128
 c7c:	0204                	addi	s1,sp,256
 c7e:	2005                	.2byte	0x2005
 c80:	00097703          	.4byte	0x97703
 c84:	0100                	addi	s0,sp,128
 c86:	0104                	addi	s1,sp,128
 c88:	0505                	addi	a0,a0,1
 c8a:	04090a03          	lb	s4,64(s2)
 c8e:	0100                	addi	s0,sp,128
 c90:	0f05                	addi	t5,t5,1
 c92:	0306                	slli	t1,t1,0x1
 c94:	0900                	addi	s0,sp,144
 c96:	0000                	unimp
 c98:	0501                	addi	a0,a0,0
 c9a:	0301                	addi	t1,t1,0
 c9c:	0901                	addi	s2,s2,0
 c9e:	0002                	c.slli64	zero
 ca0:	0901                	addi	s2,s2,0
 ca2:	0004                	.2byte	0x4
 ca4:	0100                	addi	s0,sp,128
 ca6:	cb01                	beqz	a4,cb6 <__stack_align+0xca6>
 ca8:	0000                	unimp
 caa:	0500                	addi	s0,sp,640
 cac:	0800                	addi	s0,sp,16
 cae:	4900                	lw	s0,16(a0)
 cb0:	0000                	unimp
 cb2:	0100                	addi	s0,sp,128
 cb4:	0101                	addi	sp,sp,0
 cb6:	000d0efb          	.4byte	0xd0efb
 cba:	0101                	addi	sp,sp,0
 cbc:	0101                	addi	sp,sp,0
 cbe:	0000                	unimp
 cc0:	0100                	addi	s0,sp,128
 cc2:	0000                	unimp
 cc4:	0101                	addi	sp,sp,0
 cc6:	1f01                	addi	t5,t5,-32
 cc8:	0005                	c.nop	1
 cca:	0000                	unimp
 ccc:	3d00                	fld	fs0,56(a0)
 cce:	0000                	unimp
 cd0:	a600                	fsd	fs0,8(a2)
 cd2:	0000                	unimp
 cd4:	4400                	lw	s0,8(s0)
 cd6:	0000                	unimp
 cd8:	c200                	sw	s0,0(a2)
 cda:	0001                	nop
 cdc:	0200                	addi	s0,sp,256
 cde:	1f01                	addi	t5,t5,-32
 ce0:	0f02                	c.slli64	t5
 ce2:	9905                	andi	a0,a0,-31
 ce4:	0002                	c.slli64	zero
 ce6:	0100                	addi	s0,sp,128
 ce8:	0299                	addi	t0,t0,6
 cea:	0000                	unimp
 cec:	f501                	bnez	a0,bf4 <__stack_align+0xbe4>
 cee:	0000                	unimp
 cf0:	0200                	addi	s0,sp,256
 cf2:	01cd                	addi	gp,gp,19 # 80003713 <__global_pointer$+0x13>
 cf4:	0000                	unimp
 cf6:	0001d703          	lhu	a4,0(gp) # 80003700 <__global_pointer$>
 cfa:	0400                	addi	s0,sp,512
 cfc:	0105                	addi	sp,sp,1
 cfe:	0900                	addi	s0,sp,144
 d00:	ec02                	sd	zero,24(sp)
 d02:	0025                	c.nop	9
 d04:	0080                	addi	s0,sp,64
 d06:	0000                	unimp
 d08:	1600                	addi	s0,sp,800
 d0a:	0505                	addi	a0,a0,1
 d0c:	00090103          	lb	sp,0(s2)
 d10:	0100                	addi	s0,sp,128
 d12:	1405                	addi	s0,s0,-31
 d14:	0306                	slli	t1,t1,0x1
 d16:	0900                	addi	s0,sp,144
 d18:	0000                	unimp
 d1a:	0501                	addi	a0,a0,0
 d1c:	030e                	slli	t1,t1,0x3
 d1e:	0900                	addi	s0,sp,144
 d20:	000a                	c.slli	zero,0x2
 d22:	0501                	addi	a0,a0,0
 d24:	0005                	c.nop	1
 d26:	0402                	c.slli64	s0
 d28:	0601                	addi	a2,a2,0
 d2a:	0c090103          	lb	sp,192(s2)
 d2e:	0100                	addi	s0,sp,128
 d30:	0905                	addi	s2,s2,1
 d32:	0200                	addi	s0,sp,256
 d34:	0104                	addi	s1,sp,128
 d36:	00090103          	lb	sp,0(s2)
 d3a:	0100                	addi	s0,sp,128
 d3c:	1205                	addi	tp,tp,-31 # ffffffffffffffe1 <__heap_end+0xffffffff7ffdbfe1>
 d3e:	0200                	addi	s0,sp,256
 d40:	0104                	addi	s1,sp,128
 d42:	0306                	slli	t1,t1,0x1
 d44:	0900                	addi	s0,sp,144
 d46:	0000                	unimp
 d48:	0501                	addi	a0,a0,0
 d4a:	0009                	c.nop	2
 d4c:	0402                	c.slli64	s0
 d4e:	0601                	addi	a2,a2,0
 d50:	08090103          	lb	sp,128(s2)
 d54:	0100                	addi	s0,sp,128
 d56:	1005                	c.nop	-31
 d58:	0200                	addi	s0,sp,256
 d5a:	0104                	addi	s1,sp,128
 d5c:	0306                	slli	t1,t1,0x1
 d5e:	0900                	addi	s0,sp,144
 d60:	0000                	unimp
 d62:	0501                	addi	a0,a0,0
 d64:	0005                	c.nop	1
 d66:	0402                	c.slli64	s0
 d68:	0601                	addi	a2,a2,0
 d6a:	02097e03          	.4byte	0x2097e03
 d6e:	0100                	addi	s0,sp,128
 d70:	0209                	addi	tp,tp,2 # 2 <__boot_hart+0x2>
 d72:	0000                	unimp
 d74:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6f6c                	ld	a1,216(a4)
   2:	676e                	ld	a4,216(sp)
   4:	6c20                	ld	s0,88(s0)
   6:	20676e6f          	jal	t3,7620c <__heap_size+0x5620c>
   a:	6e69                	lui	t3,0x1a
   c:	0074                	addi	a3,sp,12
   e:	726f6873          	csrrsi	a6,mhpmevent6h,30
  12:	2074                	fld	fa3,192(s0)
  14:	6e75                	lui	t3,0x1d
  16:	6e676973          	csrrsi	s2,0x6e6,14
  1a:	6465                	lui	s0,0x19
  1c:	6920                	ld	s0,80(a0)
  1e:	746e                	ld	s0,248(sp)
  20:	7500                	ld	s0,40(a0)
  22:	736e                	ld	t1,248(sp)
  24:	6769                	lui	a4,0x1a
  26:	656e                	ld	a0,216(sp)
  28:	2064                	fld	fs1,192(s0)
  2a:	72616863          	bltu	sp,t1,75a <__stack_align+0x74a>
  2e:	6c00                	ld	s0,24(s0)
  30:	20676e6f          	jal	t3,76236 <__heap_size+0x56236>
  34:	6f6c                	ld	a1,216(a4)
  36:	676e                	ld	a4,216(sp)
  38:	7520                	ld	s0,104(a0)
  3a:	736e                	ld	t1,248(sp)
  3c:	6769                	lui	a4,0x1a
  3e:	656e                	ld	a0,216(sp)
  40:	2064                	fld	fs1,192(s0)
  42:	6e69                	lui	t3,0x1a
  44:	0074                	addi	a3,sp,12
  46:	635f 6f6c 6573      	.byte	0x5f, 0x63, 0x6c, 0x6f, 0x73, 0x65
  4c:	6600                	ld	s0,8(a2)
  4e:	6c69                	lui	s8,0x1a
  50:	0065                	c.nop	25
  52:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  56:	20313143          	fmadd.s	ft2,ft2,ft3,ft4,rup
  5a:	3231                	addiw	tp,tp,-20 # ffffffffffffffec <__heap_end+0xffffffff7ffdbfec>
  5c:	322e                	fld	ft4,232(sp)
  5e:	302e                	fld	ft0,232(sp)
  60:	2d20                	fld	fs0,88(a0)
  62:	636d                	lui	t1,0x1b
  64:	6f6d                	lui	t5,0x1b
  66:	6564                	ld	s1,200(a0)
  68:	3d6c                	fld	fa1,248(a0)
  6a:	656d                	lui	a0,0x1b
  6c:	6164                	ld	s1,192(a0)
  6e:	796e                	ld	s2,248(sp)
  70:	2d20                	fld	fs0,88(a0)
  72:	746d                	lui	s0,0xffffb
  74:	6e75                	lui	t3,0x1d
  76:	3d65                	addiw	s10,s10,-7 # fffffffffffdfff9 <__heap_end+0xffffffff7ffbbff9>
  78:	6f72                	ld	t5,280(sp)
  7a:	74656b63          	bltu	a0,t1,7d0 <__stack_align+0x7c0>
  7e:	2d20                	fld	fs0,88(a0)
  80:	616d                	addi	sp,sp,240
  82:	6962                	ld	s2,24(sp)
  84:	6c3d                	lui	s8,0xf
  86:	3670                	fld	fa2,232(a2)
  88:	6434                	ld	a3,72(s0)
  8a:	2d20                	fld	fs0,88(a0)
  8c:	696d                	lui	s2,0x1b
  8e:	732d6173          	csrrsi	sp,mhpmevent18h,26
  92:	6570                	ld	a2,200(a0)
  94:	2e323d63          	.4byte	0x2e323d63
  98:	2032                	fld	ft0,264(sp)
  9a:	6d2d                	lui	s10,0xb
  9c:	7261                	lui	tp,0xffff8
  9e:	723d6863          	bltu	s10,gp,7ce <__stack_align+0x7be>
  a2:	3676                	fld	fa2,376(sp)
  a4:	6934                	ld	a3,80(a0)
  a6:	616d                	addi	sp,sp,240
  a8:	6466                	ld	s0,88(sp)
  aa:	672d2063          	.4byte	0x672d2063
  ae:	2d20                	fld	fs0,88(a0)
  b0:	2d20324f          	.4byte	0x2d20324f
  b4:	3d647473          	csrrci	s0,0x3d6,8
  b8:	20313163          	.4byte	0x20313163
  bc:	662d                	lui	a2,0xb
  be:	6f6e                	ld	t5,216(sp)
  c0:	632d                	lui	t1,0xb
  c2:	6f6d6d6f          	jal	s10,d67b8 <__heap_size+0xb67b8>
  c6:	206e                	fld	ft0,216(sp)
  c8:	662d                	lui	a2,0xb
  ca:	6f6e                	ld	t5,216(sp)
  cc:	622d                	lui	tp,0xb
  ce:	6975                	lui	s2,0x1d
  d0:	746c                	ld	a1,232(s0)
  d2:	6e69                	lui	t3,0x1a
  d4:	5f00                	lw	s0,56(a4)
  d6:	655f 7272 6f6e      	.byte	0x5f, 0x65, 0x72, 0x72, 0x6e, 0x6f
  dc:	6c00                	ld	s0,24(s0)
  de:	20676e6f          	jal	t3,762e4 <__heap_size+0x562e4>
  e2:	6f64                	ld	s1,216(a4)
  e4:	6275                	lui	tp,0x1d
  e6:	656c                	ld	a1,200(a0)
  e8:	7300                	ld	s0,32(a4)
  ea:	6f68                	ld	a0,216(a4)
  ec:	7472                	ld	s0,312(sp)
  ee:	6920                	ld	s0,80(a0)
  f0:	746e                	ld	s0,248(sp)
  f2:	5f00                	lw	s0,56(a4)
  f4:	755f 6469 745f      	.byte	0x5f, 0x75, 0x69, 0x64, 0x5f, 0x74
  fa:	7300                	ld	s0,32(a4)
  fc:	5f74                	lw	a3,124(a4)
  fe:	6c6e                	ld	s8,216(sp)
 100:	6e69                	lui	t3,0x1a
 102:	7674006b          	.4byte	0x7674006b
 106:	6e5f 6573 0063      	.byte	0x5f, 0x6e, 0x73, 0x65, 0x63, 0x00
 10c:	735f7473          	csrrci	s0,mhpmevent21h,30
 110:	7a69                	lui	s4,0xffffa
 112:	0065                	c.nop	25
 114:	6d5f7473          	csrrci	s0,0x6d5,30
 118:	6974                	ld	a3,208(a0)
 11a:	006d                	c.nop	27
 11c:	695f7473          	csrrci	s0,0x695,30
 120:	6f6e                	ld	t5,216(sp)
 122:	7300                	ld	s0,32(a4)
 124:	5f74                	lw	a3,124(a4)
 126:	6c62                	ld	s8,24(sp)
 128:	7a69736b          	.4byte	0x7a69736b
 12c:	0065                	c.nop	25
 12e:	735f7473          	csrrci	s0,mhpmevent21h,30
 132:	6170                	ld	a2,192(a0)
 134:	6572                	ld	a0,280(sp)
 136:	0034                	addi	a3,sp,8
 138:	5f5f 6564 5f76      	.byte	0x5f, 0x5f, 0x64, 0x65, 0x76, 0x5f
 13e:	0074                	addi	a3,sp,12
 140:	625f7473          	csrrci	s0,0x625,30
 144:	6f6c                	ld	a1,216(a4)
 146:	00736b63          	bltu	t1,t2,15c <__stack_align+0x14c>
 14a:	6d5f7473          	csrrci	s0,0x6d5,30
 14e:	0065646f          	jal	s0,56154 <__heap_size+0x36154>
 152:	615f7473          	csrrci	s0,htimedeltah,30
 156:	6974                	ld	a3,208(a0)
 158:	006d                	c.nop	27
 15a:	6974                	ld	a3,208(a0)
 15c:	656d                	lui	a0,0x1b
 15e:	745f 5f00 6e5f      	.byte	0x5f, 0x74, 0x00, 0x5f, 0x5f, 0x6e
 164:	696c                	ld	a1,208(a0)
 166:	6b6e                	ld	s6,216(sp)
 168:	745f 5f00 755f      	.byte	0x5f, 0x74, 0x00, 0x5f, 0x5f, 0x75
 16e:	6e69                	lui	t3,0x1a
 170:	3374                	fld	fa3,224(a4)
 172:	5f32                	lw	t5,44(sp)
 174:	0074                	addi	a3,sp,12
 176:	725f7473          	csrrci	s0,mhpmevent5h,30
 17a:	6564                	ld	s1,200(a0)
 17c:	0076                	c.slli	zero,0x1d
 17e:	5f5f 6c62 736b      	.byte	0x5f, 0x5f, 0x62, 0x6c, 0x6b, 0x73
 184:	7a69                	lui	s4,0xffffa
 186:	5f65                	li	t5,-7
 188:	0074                	addi	a3,sp,12
 18a:	5f5f 6c62 636b      	.byte	0x5f, 0x5f, 0x62, 0x6c, 0x6b, 0x63
 190:	746e                	ld	s0,248(sp)
 192:	745f 7300 5f74      	.byte	0x5f, 0x74, 0x00, 0x73, 0x74, 0x5f
 198:	6d697463          	bgeu	s2,s6,860 <__stack_align+0x850>
 19c:	7300                	ld	s0,32(a4)
 19e:	5f74                	lw	a3,124(a4)
 1a0:	6975                	lui	s2,0x1d
 1a2:	0064                	addi	s1,sp,12
 1a4:	5f5f 6967 5f64      	.byte	0x5f, 0x5f, 0x67, 0x69, 0x64, 0x5f
 1aa:	0074                	addi	a3,sp,12
 1ac:	5f5f 666f 5f66      	.byte	0x5f, 0x5f, 0x6f, 0x66, 0x66, 0x5f
 1b2:	0074                	addi	a3,sp,12
 1b4:	7674                	ld	a3,232(a2)
 1b6:	735f 6365 7400      	.byte	0x5f, 0x73, 0x65, 0x63, 0x00, 0x74
 1bc:	6d69                	lui	s10,0x1a
 1be:	7365                	lui	t1,0xffff9
 1c0:	6570                	ld	a2,200(a0)
 1c2:	665f0063          	beq	t5,t0,822 <__stack_align+0x812>
 1c6:	74617473          	csrrci	s0,0x746,2
 1ca:	5f00                	lw	s0,56(a4)
 1cc:	6d5f 646f 5f65      	.byte	0x5f, 0x6d, 0x6f, 0x64, 0x65, 0x5f
 1d2:	0074                	addi	a3,sp,12
 1d4:	5f5f 6e69 5f6f      	.byte	0x5f, 0x5f, 0x69, 0x6e, 0x6f, 0x5f
 1da:	0074                	addi	a3,sp,12
 1dc:	645f7473          	csrrci	s0,hvip,30
 1e0:	7665                	lui	a2,0xffff9
 1e2:	7300                	ld	s0,32(a4)
 1e4:	5f74                	lw	a3,124(a4)
 1e6:	00646967          	.4byte	0x646967
 1ea:	695f 6173 7474      	.byte	0x5f, 0x69, 0x73, 0x61, 0x74, 0x74
 1f0:	0079                	c.nop	30
 1f2:	6c5f 6573 6b65      	.byte	0x5f, 0x6c, 0x73, 0x65, 0x65, 0x6b
 1f8:	5f00                	lw	s0,56(a4)
 1fa:	6572                	ld	a0,280(sp)
 1fc:	6461                	lui	s0,0x18
 1fe:	5f00                	lw	s0,56(a4)
 200:	7a697373          	csrrci	t1,0x7a6,18
 204:	5f65                	li	t5,-7
 206:	0074                	addi	a3,sp,12
 208:	7470                	ld	a2,232(s0)
 20a:	6472                	ld	s0,280(sp)
 20c:	6669                	lui	a2,0x1a
 20e:	5f66                	lw	t5,120(sp)
 210:	0074                	addi	a3,sp,12
 212:	5f5f 6568 7061      	.byte	0x5f, 0x5f, 0x68, 0x65, 0x61, 0x70
 218:	655f 646e 6300      	.byte	0x5f, 0x65, 0x6e, 0x64, 0x00, 0x63
 21e:	7275                	lui	tp,0xffffd
 220:	7262                	ld	tp,56(sp)
 222:	735f006b          	.4byte	0x735f006b
 226:	7262                	ld	tp,56(sp)
 228:	6e69006b          	.4byte	0x6e69006b
 22c:	6f007263          	bgeu	zero,a6,910 <__stack_align+0x900>
 230:	646c                	ld	a1,200(s0)
 232:	7262                	ld	tp,56(sp)
 234:	656e006b          	.4byte	0x656e006b
 238:	6b726277          	.4byte	0x6b726277
 23c:	6800                	ld	s0,16(s0)
 23e:	6974                	ld	a3,208(a0)
 240:	5f66                	lw	t5,120(sp)
 242:	63737973          	csrrci	s2,0x637,6
 246:	6c61                	lui	s8,0x18
 248:	006c                	addi	a1,sp,12
 24a:	5f5f 6975 746e      	.byte	0x5f, 0x5f, 0x75, 0x69, 0x6e, 0x74
 250:	7470                	ld	a2,232(s0)
 252:	5f72                	lw	t5,60(sp)
 254:	0074                	addi	a3,sp,12
 256:	775f 6972 6574      	.byte	0x5f, 0x77, 0x72, 0x69, 0x74, 0x65
 25c:	5f00                	lw	s0,56(a4)
 25e:	755f 6e69 3674      	.byte	0x5f, 0x75, 0x69, 0x6e, 0x74, 0x36
 264:	5f34                	lw	a3,120(a4)
 266:	0074                	addi	a3,sp,12
 268:	2e2e                	fld	ft8,200(sp)
 26a:	73696d2f          	.4byte	0x73696d2f
 26e:	72632f63          	.4byte	0x72632f63
 272:	3074                	fld	fa3,224(s0)
 274:	532e                	lw	t1,232(sp)
 276:	2f00                	fld	fs0,24(a4)
 278:	6f68                	ld	a0,216(a4)
 27a:	656d                	lui	a0,0x1b
 27c:	6578612f          	.4byte	0x6578612f
 280:	2f6c                	fld	fa1,216(a4)
 282:	70696863          	bltu	s2,t1,992 <__stack_align+0x982>
 286:	6179                	addi	sp,sp,464
 288:	6472                	ld	s0,280(sp)
 28a:	6f6f742f          	.4byte	0x6f6f742f
 28e:	636c                	ld	a1,192(a4)
 290:	6168                	ld	a0,192(a0)
 292:	6e69                	lui	t3,0x1a
 294:	696c2f73          	csrrs	t5,0x696,s8
 298:	6762                	ld	a4,24(sp)
 29a:	6f6c                	ld	a1,216(a4)
 29c:	622f7373          	csrrci	t1,0x622,30
 2a0:	6975                	lui	s2,0x1d
 2a2:	646c                	ld	a1,200(s0)
 2a4:	4700                	lw	s0,8(a4)
 2a6:	554e                	lw	a0,240(sp)
 2a8:	4120                	lw	s0,64(a0)
 2aa:	2e322053          	.4byte	0x2e322053
 2ae:	2e003933          	.4byte	0x2e003933
 2b2:	2f2e                	fld	ft10,200(sp)
 2b4:	696d                	lui	s2,0x1b
 2b6:	632f6373          	csrrsi	t1,0x632,30
 2ba:	7472                	ld	s0,312(sp)
 2bc:	616d                	addi	sp,sp,240
 2be:	6e69                	lui	t3,0x1a
 2c0:	532e                	lw	t1,232(sp)
 2c2:	6800                	ld	s0,16(s0)
 2c4:	6e61                	lui	t3,0x18
 2c6:	6c64                	ld	s1,216(s0)
 2c8:	5f65                	li	t5,-7
 2ca:	7274                	ld	a3,224(a2)
 2cc:	7061                	c.lui	zero,0xffff8
 2ce:	6300                	ld	s0,0(a4)
 2d0:	7561                	lui	a0,0xffff8
 2d2:	5f006573          	csrrsi	a0,0x5f0,0
 2d6:	7865                	lui	a6,0xffff9
 2d8:	7469                	lui	s0,0xffffa
 2da:	5f00                	lw	s0,56(a4)
 2dc:	695f 746e 7470      	.byte	0x5f, 0x69, 0x6e, 0x74, 0x70, 0x74
 2e2:	5f72                	lw	t5,60(sp)
 2e4:	0074                	addi	a3,sp,12
 2e6:	6572                	ld	a0,280(sp)
 2e8:	63007367          	.4byte	0x63007367
 2ec:	0065646f          	jal	s0,562f2 <__heap_size+0x362f2>
 2f0:	7674                	ld	a3,232(a2)
 2f2:	6c61                	lui	s8,0x18
 2f4:	5f00                	lw	s0,56(a4)
 2f6:	695f 696e 5f74      	.byte	0x5f, 0x69, 0x6e, 0x69, 0x74, 0x5f
 2fc:	6c74                	ld	a3,216(s0)
 2fe:	5f5f0073          	.4byte	0x5f5f0073
 302:	6474                	ld	a3,200(s0)
 304:	7461                	lui	s0,0xffff8
 306:	5f61                	li	t5,-8
 308:	657a6973          	csrrsi	s2,0x657,20
 30c:	5f00                	lw	s0,56(a4)
 30e:	745f 7362 5f73      	.byte	0x5f, 0x74, 0x62, 0x73, 0x73, 0x5f
 314:	7366666f          	jal	a2,66a4a <__heap_size+0x46a4a>
 318:	7465                	lui	s0,0xffff9
 31a:	5f00                	lw	s0,56(a4)
 31c:	745f 7268 6165      	.byte	0x5f, 0x74, 0x68, 0x72, 0x65, 0x61
 322:	5f64                	lw	s1,124(a4)
 324:	666c6573          	csrrsi	a0,0x666,24
 328:	5f00                	lw	s0,56(a4)
 32a:	745f 7362 5f73      	.byte	0x5f, 0x74, 0x62, 0x73, 0x73, 0x5f
 330:	657a6973          	csrrsi	s2,0x657,20
 334:	6d00                	ld	s0,24(a0)
 336:	6d65                	lui	s10,0x19
 338:	00797063          	bgeu	s2,t2,338 <__stack_align+0x328>
 33c:	5f5f 6474 7461      	.byte	0x5f, 0x5f, 0x74, 0x64, 0x61, 0x74
 342:	5f61                	li	t5,-8
 344:	72617473          	csrrci	s0,mhpmevent6h,2
 348:	0074                	addi	a3,sp,12
 34a:	656d                	lui	a0,0x1b
 34c:	736d                	lui	t1,0xffffb
 34e:	7465                	lui	s0,0xffff9
 350:	7300                	ld	s0,32(a4)
 352:	6970                	ld	a2,208(a0)
 354:	6c6e                	ld	s8,216(sp)
 356:	5f6b636f          	jal	t1,b694c <__heap_size+0x9694c>
 35a:	0074                	addi	a3,sp,12
 35c:	7266                	ld	tp,120(sp)
 35e:	6f686d6f          	jal	s10,86a54 <__heap_size+0x66a54>
 362:	74007473          	csrrci	s0,0x740,0
 366:	736f686f          	jal	a6,f6a9c <__heap_size+0xd6a9c>
 36a:	0074                	addi	a3,sp,12
 36c:	5f5f 6e69 3374      	.byte	0x5f, 0x5f, 0x69, 0x6e, 0x74, 0x33
 372:	5f32                	lw	t5,44(sp)
 374:	0074                	addi	a3,sp,12
 376:	7468                	ld	a0,232(s0)
 378:	6669                	lui	a2,0x1a
 37a:	6c5f 636f 006b      	.byte	0x5f, 0x6c, 0x6f, 0x63, 0x6b, 0x00
 380:	7461                	lui	s0,0xffff8
 382:	63696d6f          	jal	s10,969b8 <__heap_size+0x769b8>
 386:	735f 6177 5f70      	.byte	0x5f, 0x73, 0x77, 0x61, 0x70, 0x5f
 38c:	6361                	lui	t1,0x18
 38e:	7571                	lui	a0,0xffffc
 390:	7269                	lui	tp,0xffffa
 392:	0065                	c.nop	25
 394:	7461                	lui	s0,0xffff8
 396:	63696d6f          	jal	s10,969cc <__heap_size+0x769cc>
 39a:	745f 6100 6f74      	.byte	0x5f, 0x74, 0x00, 0x61, 0x74, 0x6f
 3a0:	696d                	lui	s2,0x1b
 3a2:	6f6c5f63          	bge	s8,s6,aa0 <__stack_align+0xa90>
 3a6:	6461                	lui	s0,0x18
 3a8:	7300                	ld	s0,32(a4)
 3aa:	6970                	ld	a2,208(a0)
 3ac:	5f6e                	lw	t5,248(sp)
 3ae:	6f6c                	ld	a1,216(a4)
 3b0:	73006b63          	bltu	zero,a6,ae6 <__stack_align+0xad6>
 3b4:	6970                	ld	a2,208(a0)
 3b6:	5f6e                	lw	t5,248(sp)
 3b8:	6e75                	lui	t3,0x1d
 3ba:	6f6c                	ld	a1,216(a4)
 3bc:	61006b63          	bltu	zero,a6,9d2 <__stack_align+0x9c2>
 3c0:	6f74                	ld	a3,216(a4)
 3c2:	696d                	lui	s2,0x1b
 3c4:	6c635f63          	bge	t1,t1,aa2 <__stack_align+0xa92>
 3c8:	6165                	addi	sp,sp,112
 3ca:	5f72                	lw	t5,60(sp)
 3cc:	6572                	ld	a0,280(sp)
 3ce:	656c                	ld	a1,200(a0)
 3d0:	7361                	lui	t1,0xffff8
 3d2:	0065                	c.nop	25

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.4byte	0x6d6f682f
   4:	2f65                	addiw	t5,t5,25 # 1b019 <__stack_size+0x13019>
   6:	7861                	lui	a6,0xffff8
   8:	6c65                	lui	s8,0x19
   a:	6968632f          	.4byte	0x6968632f
   e:	7970                	ld	a2,240(a0)
  10:	7261                	lui	tp,0xffff8
  12:	2f64                	fld	fs1,216(a4)
  14:	6f74                	ld	a3,216(a4)
  16:	68636c6f          	jal	s8,3669c <__heap_size+0x1669c>
  1a:	6961                	lui	s2,0x18
  1c:	736e                	ld	t1,248(sp)
  1e:	62696c2f          	.4byte	0x62696c2f
  22:	736f6c67          	.4byte	0x736f6c67
  26:	75622f73          	csrrs	t5,0x756,tp
  2a:	6c69                	lui	s8,0x1a
  2c:	0064                	addi	s1,sp,12
  2e:	2e2e                	fld	ft8,200(sp)
  30:	7379732f          	.4byte	0x7379732f
  34:	6f6c632f          	.4byte	0x6f6c632f
  38:	632e6573          	csrrsi	a0,0x632,28
  3c:	2e00                	fld	fs0,24(a2)
  3e:	2f2e                	fld	ft10,200(sp)
  40:	00737973          	csrrci	s2,0x7,6
  44:	6d6f682f          	.4byte	0x6d6f682f
  48:	2f65                	addiw	t5,t5,25
  4a:	7861                	lui	a6,0xffff8
  4c:	6c65                	lui	s8,0x19
  4e:	6968632f          	.4byte	0x6968632f
  52:	7970                	ld	a2,240(a0)
  54:	7261                	lui	tp,0xffff8
  56:	2f64                	fld	fs1,216(a4)
  58:	632e                	ld	t1,200(sp)
  5a:	61646e6f          	jal	t3,46670 <__heap_size+0x26670>
  5e:	652d                	lui	a0,0xb
  60:	766e                	ld	a2,248(sp)
  62:	7369722f          	.4byte	0x7369722f
  66:	742d7663          	bgeu	s10,sp,7b2 <__stack_align+0x7a2>
  6a:	736c6f6f          	jal	t5,c67a0 <__heap_size+0xa67a0>
  6e:	7369722f          	.4byte	0x7369722f
  72:	34367663          	bgeu	a2,gp,3be <__stack_align+0x3ae>
  76:	752d                	lui	a0,0xfffeb
  78:	6b6e                	ld	s6,216(sp)
  7a:	6f6e                	ld	t5,216(sp)
  7c:	652d6e77          	.4byte	0x652d6e77
  80:	666c                	ld	a1,200(a2)
  82:	636e692f          	.4byte	0x636e692f
  86:	756c                	ld	a1,232(a0)
  88:	6564                	ld	s1,200(a0)
  8a:	7379732f          	.4byte	0x7379732f
  8e:	6500                	ld	s0,8(a0)
  90:	7272                	ld	tp,312(sp)
  92:	6f6e                	ld	t5,216(sp)
  94:	682e                	ld	a6,200(sp)
  96:	2e00                	fld	fs0,24(a2)
  98:	2f2e                	fld	ft10,200(sp)
  9a:	2f737973          	csrrci	s2,0x2f7,6
  9e:	7366                	ld	t1,120(sp)
  a0:	6174                	ld	a3,192(a0)
  a2:	2e74                	fld	fa3,216(a2)
  a4:	682f0063          	beq	t5,sp,724 <__stack_align+0x714>
  a8:	2f656d6f          	jal	s10,5639e <__heap_size+0x3639e>
  ac:	7861                	lui	a6,0xffff8
  ae:	6c65                	lui	s8,0x19
  b0:	6968632f          	.4byte	0x6968632f
  b4:	7970                	ld	a2,240(a0)
  b6:	7261                	lui	tp,0xffff8
  b8:	2f64                	fld	fs1,216(a4)
  ba:	632e                	ld	t1,200(sp)
  bc:	61646e6f          	jal	t3,466d2 <__heap_size+0x266d2>
  c0:	652d                	lui	a0,0xb
  c2:	766e                	ld	a2,248(sp)
  c4:	7369722f          	.4byte	0x7369722f
  c8:	742d7663          	bgeu	s10,sp,814 <__stack_align+0x804>
  cc:	736c6f6f          	jal	t5,c6802 <__heap_size+0xa6802>
  d0:	7369722f          	.4byte	0x7369722f
  d4:	34367663          	bgeu	a2,gp,420 <__stack_align+0x410>
  d8:	752d                	lui	a0,0xfffeb
  da:	6b6e                	ld	s6,216(sp)
  dc:	6f6e                	ld	t5,216(sp)
  de:	652d6e77          	.4byte	0x652d6e77
  e2:	666c                	ld	a1,200(a2)
  e4:	636e692f          	.4byte	0x636e692f
  e8:	756c                	ld	a1,232(a0)
  ea:	6564                	ld	s1,200(a0)
  ec:	63616d2f          	.4byte	0x63616d2f
  f0:	6968                	ld	a0,208(a0)
  f2:	656e                	ld	a0,216(sp)
  f4:	5f00                	lw	s0,56(a4)
  f6:	6564                	ld	s1,200(a0)
  f8:	6166                	ld	sp,88(sp)
  fa:	6c75                	lui	s8,0x1d
  fc:	5f74                	lw	a3,124(a4)
  fe:	7974                	ld	a3,240(a0)
 100:	6570                	ld	a2,200(a0)
 102:	00682e73          	csrrs	t3,0x6,a6
 106:	745f 6d69 7365      	.byte	0x5f, 0x74, 0x69, 0x6d, 0x65, 0x73
 10c:	6570                	ld	a2,200(a0)
 10e:	00682e63          	.4byte	0x682e63
 112:	74617473          	csrrci	s0,0x746,2
 116:	682e                	ld	a6,200(sp)
 118:	2e00                	fld	fs0,24(a2)
 11a:	2f2e                	fld	ft10,200(sp)
 11c:	2f737973          	csrrci	s2,0x2f7,6
 120:	7369                	lui	t1,0xffffa
 122:	7461                	lui	s0,0xffff8
 124:	7974                	ld	a3,240(a0)
 126:	632e                	ld	t1,200(sp)
 128:	2e00                	fld	fs0,24(a2)
 12a:	2f2e                	fld	ft10,200(sp)
 12c:	2f737973          	csrrci	s2,0x2f7,6
 130:	736c                	ld	a1,224(a4)
 132:	6565                	lui	a0,0x19
 134:	00632e6b          	.4byte	0x632e6b
 138:	2e2e                	fld	ft8,200(sp)
 13a:	7379732f          	.4byte	0x7379732f
 13e:	6165722f          	.4byte	0x6165722f
 142:	2e64                	fld	fs1,216(a2)
 144:	682f0063          	beq	t5,sp,7c4 <__stack_align+0x7b4>
 148:	2f656d6f          	jal	s10,5643e <__heap_size+0x3643e>
 14c:	7861                	lui	a6,0xffff8
 14e:	6c65                	lui	s8,0x19
 150:	6968632f          	.4byte	0x6968632f
 154:	7970                	ld	a2,240(a0)
 156:	7261                	lui	tp,0xffff8
 158:	2f64                	fld	fs1,216(a4)
 15a:	632e                	ld	t1,200(sp)
 15c:	61646e6f          	jal	t3,46772 <__heap_size+0x26772>
 160:	652d                	lui	a0,0xb
 162:	766e                	ld	a2,248(sp)
 164:	7369722f          	.4byte	0x7369722f
 168:	742d7663          	bgeu	s10,sp,8b4 <__stack_align+0x8a4>
 16c:	736c6f6f          	jal	t5,c68a2 <__heap_size+0xa68a2>
 170:	62696c2f          	.4byte	0x62696c2f
 174:	6363672f          	.4byte	0x6363672f
 178:	7369722f          	.4byte	0x7369722f
 17c:	34367663          	bgeu	a2,gp,4c8 <__stack_align+0x4b8>
 180:	752d                	lui	a0,0xfffeb
 182:	6b6e                	ld	s6,216(sp)
 184:	6f6e                	ld	t5,216(sp)
 186:	652d6e77          	.4byte	0x652d6e77
 18a:	666c                	ld	a1,200(a2)
 18c:	2e32312f          	.4byte	0x2e32312f
 190:	2e32                	fld	ft8,264(sp)
 192:	2f30                	fld	fa2,88(a4)
 194:	6e69                	lui	t3,0x1a
 196:	64756c63          	bltu	a0,t2,7ee <__stack_align+0x7de>
 19a:	0065                	c.nop	25
 19c:	64647473          	csrrci	s0,0x646,8
 1a0:	6665                	lui	a2,0x19
 1a2:	682e                	ld	a6,200(sp)
 1a4:	2e00                	fld	fs0,24(a2)
 1a6:	2f2e                	fld	ft10,200(sp)
 1a8:	2f737973          	csrrci	s2,0x2f7,6
 1ac:	6b726273          	csrrsi	tp,0x6b7,4
 1b0:	632e                	ld	t1,200(sp)
 1b2:	2e00                	fld	fs0,24(a2)
 1b4:	2f2e                	fld	ft10,200(sp)
 1b6:	2f737973          	csrrci	s2,0x2f7,6
 1ba:	74697277          	.4byte	0x74697277
 1be:	2e65                	addiw	t3,t3,25 # 1a019 <__stack_size+0x12019>
 1c0:	2e2e0063          	beq	t3,sp,4a0 <__stack_align+0x490>
 1c4:	636e692f          	.4byte	0x636e692f
 1c8:	756c                	ld	a1,232(a0)
 1ca:	6564                	ld	s1,200(a0)
 1cc:	5f00                	lw	s0,56(a4)
 1ce:	69647473          	csrrci	s0,0x696,8
 1d2:	746e                	ld	s0,248(sp)
 1d4:	682e                	ld	a6,200(sp)
 1d6:	6800                	ld	s0,16(s0)
 1d8:	6974                	ld	a3,208(a0)
 1da:	2e66                	fld	ft8,88(sp)
 1dc:	0068                	addi	a0,sp,12
 1de:	2e2e                	fld	ft8,200(sp)
 1e0:	73696d2f          	.4byte	0x73696d2f
 1e4:	72630063          	beq	t1,t1,904 <__stack_align+0x8f4>
 1e8:	3074                	fld	fa3,224(s0)
 1ea:	532e                	lw	t1,232(sp)
 1ec:	6300                	ld	s0,0(a4)
 1ee:	7472                	ld	s0,312(sp)
 1f0:	616d                	addi	sp,sp,240
 1f2:	6e69                	lui	t3,0x1a
 1f4:	532e                	lw	t1,232(sp)
 1f6:	2e00                	fld	fs0,24(a2)
 1f8:	2f2e                	fld	ft10,200(sp)
 1fa:	696d                	lui	s2,0x1b
 1fc:	742f6373          	csrrsi	t1,0x742,30
 200:	6172                	ld	sp,280(sp)
 202:	7370                	ld	a2,224(a4)
 204:	632e                	ld	t1,200(sp)
 206:	7300                	ld	s0,32(a4)
 208:	7379                	lui	t1,0xffffe
 20a:	6c6c6163          	bltu	s8,t1,8cc <__stack_align+0x8bc>
 20e:	682e                	ld	a6,200(sp)
 210:	2e00                	fld	fs0,24(a2)
 212:	2f2e                	fld	ft10,200(sp)
 214:	696d                	lui	s2,0x1b
 216:	742f6373          	csrrsi	t1,0x742,30
 21a:	736c                	ld	a1,224(a4)
 21c:	632e                	ld	t1,200(sp)
 21e:	2f00                	fld	fs0,24(a4)
 220:	6f68                	ld	a0,216(a4)
 222:	656d                	lui	a0,0x1b
 224:	6578612f          	.4byte	0x6578612f
 228:	2f6c                	fld	fa1,216(a4)
 22a:	70696863          	bltu	s2,t1,93a <__stack_align+0x92a>
 22e:	6179                	addi	sp,sp,464
 230:	6472                	ld	s0,280(sp)
 232:	6f632e2f          	.4byte	0x6f632e2f
 236:	646e                	ld	s0,216(sp)
 238:	2d61                	addiw	s10,s10,24 # 19018 <__stack_size+0x11018>
 23a:	6e65                	lui	t3,0x19
 23c:	2f76                	fld	ft10,344(sp)
 23e:	6972                	ld	s2,280(sp)
 240:	2d766373          	csrrsi	t1,0x2d7,12
 244:	6f74                	ld	a3,216(a4)
 246:	2f736c6f          	jal	s8,36d3c <__heap_size+0x16d3c>
 24a:	6972                	ld	s2,280(sp)
 24c:	36766373          	csrrsi	t1,0x367,12
 250:	2d34                	fld	fa3,88(a0)
 252:	6e75                	lui	t3,0x1d
 254:	776f6e6b          	.4byte	0x776f6e6b
 258:	2d6e                	fld	fs10,216(sp)
 25a:	6c65                	lui	s8,0x19
 25c:	2f66                	fld	ft10,88(sp)
 25e:	6e69                	lui	t3,0x1a
 260:	64756c63          	bltu	a0,t2,8b8 <__stack_align+0x8a8>
 264:	0065                	c.nop	25
 266:	69727473          	csrrci	s0,0x697,4
 26a:	676e                	ld	a4,216(sp)
 26c:	682e                	ld	a6,200(sp)
 26e:	2e00                	fld	fs0,24(a2)
 270:	2f2e                	fld	ft10,200(sp)
 272:	696d                	lui	s2,0x1b
 274:	682f6373          	csrrsi	t1,0x682,30
 278:	6974                	ld	a3,208(a0)
 27a:	2e66                	fld	ft8,88(sp)
 27c:	74610063          	beq	sp,t1,9bc <__stack_align+0x9ac>
 280:	63696d6f          	jal	s10,968b6 <__heap_size+0x768b6>
 284:	682e                	ld	a6,200(sp)
 286:	7300                	ld	s0,32(a4)
 288:	6970                	ld	a2,208(a0)
 28a:	6c6e                	ld	s8,216(sp)
 28c:	2e6b636f          	jal	t1,b6572 <__heap_size+0x96572>
 290:	0068                	addi	a0,sp,12
 292:	2e2e                	fld	ft8,200(sp)
 294:	7379732f          	.4byte	0x7379732f
 298:	6978652f          	.4byte	0x6978652f
 29c:	2e74                	fld	fa3,216(a2)
 29e:	63 00             	Address 0x000000000000029e is out of bounds.


Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	.2byte	0xc
   2:	0000                	unimp
   4:	ffff                	.2byte	0xffff
   6:	ffff                	.2byte	0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	0024                	addi	s1,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	24c0                	fld	fs0,136(s1)
  1a:	8000                	.2byte	0x8000
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0014                	.2byte	0x14
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0e42                	slli	t3,t3,0x10
  2a:	4210                	lw	a2,0(a2)
  2c:	0281                	addi	t0,t0,0
  2e:	c146                	sw	a7,128(sp)
  30:	0e48                	addi	a0,sp,788
  32:	0000                	unimp
  34:	0000                	unimp
  36:	0000                	unimp
  38:	000c                	.2byte	0xc
  3a:	0000                	unimp
  3c:	ffff                	.2byte	0xffff
  3e:	ffff                	.2byte	0xffff
  40:	7c010003          	lb	zero,1984(sp)
  44:	0d01                	addi	s10,s10,0
  46:	0002                	c.slli64	zero
  48:	0024                	addi	s1,sp,8
  4a:	0000                	unimp
  4c:	0038                	addi	a4,sp,8
  4e:	0000                	unimp
  50:	24d4                	fld	fa3,136(s1)
  52:	8000                	.2byte	0x8000
  54:	0000                	unimp
  56:	0000                	unimp
  58:	0014                	.2byte	0x14
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	0000                	unimp
  60:	0e42                	slli	t3,t3,0x10
  62:	4210                	lw	a2,0(a2)
  64:	0281                	addi	t0,t0,0
  66:	c146                	sw	a7,128(sp)
  68:	0e48                	addi	a0,sp,788
  6a:	0000                	unimp
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	000c                	.2byte	0xc
  72:	0000                	unimp
  74:	ffff                	.2byte	0xffff
  76:	ffff                	.2byte	0xffff
  78:	7c010003          	lb	zero,1984(sp)
  7c:	0d01                	addi	s10,s10,0
  7e:	0002                	c.slli64	zero
  80:	0014                	.2byte	0x14
  82:	0000                	unimp
  84:	0070                	addi	a2,sp,12
  86:	0000                	unimp
  88:	24e8                	fld	fa0,200(s1)
  8a:	8000                	.2byte	0x8000
  8c:	0000                	unimp
  8e:	0000                	unimp
  90:	0008                	.2byte	0x8
  92:	0000                	unimp
  94:	0000                	unimp
  96:	0000                	unimp
  98:	000c                	.2byte	0xc
  9a:	0000                	unimp
  9c:	ffff                	.2byte	0xffff
  9e:	ffff                	.2byte	0xffff
  a0:	7c010003          	lb	zero,1984(sp)
  a4:	0d01                	addi	s10,s10,0
  a6:	0002                	c.slli64	zero
  a8:	0024                	addi	s1,sp,8
  aa:	0000                	unimp
  ac:	0098                	addi	a4,sp,64
  ae:	0000                	unimp
  b0:	24f0                	fld	fa2,200(s1)
  b2:	8000                	.2byte	0x8000
  b4:	0000                	unimp
  b6:	0000                	unimp
  b8:	0014                	.2byte	0x14
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	0000                	unimp
  c0:	0e42                	slli	t3,t3,0x10
  c2:	4210                	lw	a2,0(a2)
  c4:	0281                	addi	t0,t0,0
  c6:	c146                	sw	a7,128(sp)
  c8:	0e48                	addi	a0,sp,788
  ca:	0000                	unimp
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	000c                	.2byte	0xc
  d2:	0000                	unimp
  d4:	ffff                	.2byte	0xffff
  d6:	ffff                	.2byte	0xffff
  d8:	7c010003          	lb	zero,1984(sp)
  dc:	0d01                	addi	s10,s10,0
  de:	0002                	c.slli64	zero
  e0:	0024                	addi	s1,sp,8
  e2:	0000                	unimp
  e4:	00d0                	addi	a2,sp,68
  e6:	0000                	unimp
  e8:	2504                	fld	fs1,8(a0)
  ea:	8000                	.2byte	0x8000
  ec:	0000                	unimp
  ee:	0000                	unimp
  f0:	0016                	c.slli	zero,0x5
  f2:	0000                	unimp
  f4:	0000                	unimp
  f6:	0000                	unimp
  f8:	0e42                	slli	t3,t3,0x10
  fa:	4210                	lw	a2,0(a2)
  fc:	0281                	addi	t0,t0,0
  fe:	c146                	sw	a7,128(sp)
 100:	0e4a                	slli	t3,t3,0x12
 102:	0000                	unimp
 104:	0000                	unimp
 106:	0000                	unimp
 108:	000c                	.2byte	0xc
 10a:	0000                	unimp
 10c:	ffff                	.2byte	0xffff
 10e:	ffff                	.2byte	0xffff
 110:	7c010003          	lb	zero,1984(sp)
 114:	0d01                	addi	s10,s10,0
 116:	0002                	c.slli64	zero
 118:	0024                	addi	s1,sp,8
 11a:	0000                	unimp
 11c:	0108                	addi	a0,sp,128
 11e:	0000                	unimp
 120:	251a                	fld	fa0,384(sp)
 122:	8000                	.2byte	0x8000
 124:	0000                	unimp
 126:	0000                	unimp
 128:	003c                	addi	a5,sp,8
 12a:	0000                	unimp
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	0e68                	addi	a0,sp,796
 132:	4210                	lw	a2,0(a2)
 134:	0281                	addi	t0,t0,0
 136:	c146                	sw	a7,128(sp)
 138:	0e4a                	slli	t3,t3,0x12
 13a:	0000                	unimp
 13c:	0000                	unimp
 13e:	0000                	unimp
 140:	000c                	.2byte	0xc
 142:	0000                	unimp
 144:	ffff                	.2byte	0xffff
 146:	ffff                	.2byte	0xffff
 148:	7c010003          	lb	zero,1984(sp)
 14c:	0d01                	addi	s10,s10,0
 14e:	0002                	c.slli64	zero
 150:	0014                	.2byte	0x14
 152:	0000                	unimp
 154:	0140                	addi	s0,sp,132
 156:	0000                	unimp
 158:	2556                	fld	fa0,336(sp)
 15a:	8000                	.2byte	0x8000
 15c:	0000                	unimp
 15e:	0000                	unimp
 160:	0006                	c.slli	zero,0x1
 162:	0000                	unimp
 164:	0000                	unimp
 166:	0000                	unimp
 168:	000c                	.2byte	0xc
 16a:	0000                	unimp
 16c:	ffff                	.2byte	0xffff
 16e:	ffff                	.2byte	0xffff
 170:	7c010003          	lb	zero,1984(sp)
 174:	0d01                	addi	s10,s10,0
 176:	0002                	c.slli64	zero
 178:	001c                	.2byte	0x1c
 17a:	0000                	unimp
 17c:	0168                	addi	a0,sp,140
 17e:	0000                	unimp
 180:	255c                	fld	fa5,136(a0)
 182:	8000                	.2byte	0x8000
 184:	0000                	unimp
 186:	0000                	unimp
 188:	0016                	c.slli	zero,0x5
 18a:	0000                	unimp
 18c:	0000                	unimp
 18e:	0000                	unimp
 190:	0e42                	slli	t3,t3,0x10
 192:	4610                	lw	a2,8(a2)
 194:	0281                	addi	t0,t0,0
 196:	0000                	unimp
 198:	000c                	.2byte	0xc
 19a:	0000                	unimp
 19c:	ffff                	.2byte	0xffff
 19e:	ffff                	.2byte	0xffff
 1a0:	7c010003          	lb	zero,1984(sp)
 1a4:	0d01                	addi	s10,s10,0
 1a6:	0002                	c.slli64	zero
 1a8:	0024                	addi	s1,sp,8
 1aa:	0000                	unimp
 1ac:	0198                	addi	a4,sp,192
 1ae:	0000                	unimp
 1b0:	2572                	fld	fa0,280(sp)
 1b2:	8000                	.2byte	0x8000
 1b4:	0000                	unimp
 1b6:	0000                	unimp
 1b8:	0030                	addi	a2,sp,8
 1ba:	0000                	unimp
 1bc:	0000                	unimp
 1be:	0000                	unimp
 1c0:	0e42                	slli	t3,t3,0x10
 1c2:	5210                	lw	a2,32(a2)
 1c4:	0488                	addi	a0,sp,576
 1c6:	0281                	addi	t0,t0,0
 1c8:	c84e                	sw	s3,16(sp)
 1ca:	c142                	sw	a6,128(sp)
 1cc:	0e48                	addi	a0,sp,788
 1ce:	0000                	unimp
 1d0:	000c                	.2byte	0xc
 1d2:	0000                	unimp
 1d4:	ffff                	.2byte	0xffff
 1d6:	ffff                	.2byte	0xffff
 1d8:	7c010003          	lb	zero,1984(sp)
 1dc:	0d01                	addi	s10,s10,0
 1de:	0002                	c.slli64	zero
 1e0:	001c                	.2byte	0x1c
 1e2:	0000                	unimp
 1e4:	01d0                	addi	a2,sp,196
 1e6:	0000                	unimp
 1e8:	25a2                	fld	fa1,8(sp)
 1ea:	8000                	.2byte	0x8000
 1ec:	0000                	unimp
 1ee:	0000                	unimp
 1f0:	004a                	c.slli	zero,0x12
 1f2:	0000                	unimp
 1f4:	0000                	unimp
 1f6:	0000                	unimp
 1f8:	0e42                	slli	t3,t3,0x10
 1fa:	0240                	addi	s0,sp,260
 1fc:	0e46                	slli	t3,t3,0x11
 1fe:	0000                	unimp
 200:	000c                	.2byte	0xc
 202:	0000                	unimp
 204:	ffff                	.2byte	0xffff
 206:	ffff                	.2byte	0xffff
 208:	7c010003          	lb	zero,1984(sp)
 20c:	0d01                	addi	s10,s10,0
 20e:	0002                	c.slli64	zero
 210:	0014                	.2byte	0x14
 212:	0000                	unimp
 214:	0200                	addi	s0,sp,256
 216:	0000                	unimp
 218:	25ec                	fld	fa1,200(a1)
 21a:	8000                	.2byte	0x8000
 21c:	0000                	unimp
 21e:	0000                	unimp
 220:	0022                	c.slli	zero,0x8
 222:	0000                	unimp
 224:	0000                	unimp
	...

Disassembly of section .debug_rnglists:

0000000000000000 <.debug_rnglists>:
   0:	0000002b          	.4byte	0x2b
   4:	0005                	c.nop	1
   6:	0008                	.2byte	0x8
   8:	0000                	unimp
   a:	0000                	unimp
   c:	b806                	fsd	ft1,48(sp)
   e:	0025                	c.nop	9
  10:	0080                	addi	s0,sp,64
  12:	0000                	unimp
  14:	ba00                	fsd	fs0,48(a2)
  16:	0025                	c.nop	9
  18:	0080                	addi	s0,sp,64
  1a:	0000                	unimp
  1c:	0600                	addi	s0,sp,768
  1e:	25be                	fld	fa1,456(sp)
  20:	8000                	.2byte	0x8000
  22:	0000                	unimp
  24:	0000                	unimp
  26:	25c2                	fld	fa1,16(sp)
  28:	8000                	.2byte	0x8000
  2a:	0000                	unimp
  2c:	0000                	unimp
	...
