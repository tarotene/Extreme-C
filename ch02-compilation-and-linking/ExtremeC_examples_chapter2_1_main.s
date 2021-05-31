	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	%edi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$10, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$5, -24(%rbp)
	movl	$-8, -20(%rbp)
	movl	$9, -16(%rbp)
	movq	%rax, %rdi
	movl	$5, %esi
	movl	$1, %edx
	callq	_avg
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	-32(%rbp), %rdi
	movl	$5, %esi
	movl	$2, %edx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_avg
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str.1(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rcx
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The average: %f\n"

L_.str.1:                               ## @.str.1
	.asciz	"The squared average: %f\n"

.subsections_via_symbols
