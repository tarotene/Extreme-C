	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_avg                    ## -- Begin function avg
	.p2align	4, 0x90
_avg:                                   ## @avg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	LBB0_2
## %bb.1:
	cmpl	$0, -24(%rbp)
	jne	LBB0_3
LBB0_2:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	LBB0_13
LBB0_3:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -36(%rbp)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_12
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	cmpl	$1, -24(%rbp)
	jne	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	LBB0_10
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	cmpl	$2, -24(%rbp)
	jne	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imull	(%rax,%rcx,4), %edx
	cvtsi2sd	%edx, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_4
LBB0_12:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
LBB0_13:
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
