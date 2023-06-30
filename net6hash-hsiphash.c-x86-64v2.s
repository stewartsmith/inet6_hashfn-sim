	.file	"net6hash-hsiphash.c"
	.text
	.p2align 4
	.globl	inet6_ehashfn
	.type	inet6_ehashfn, @function
inet6_ehashfn:
.LFB19:
	.cfi_startproc
	movabsq	$7816392313619706465, %r11
	movq	%rdx, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%r9, %rdx
	movabsq	$8317987319222330741, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	(%rax), %r10
	movabsq	$7237128888997146477, %rbx
	movq	(%r9), %r9
	movq	8(%rax), %rax
	xorq	%r10, %r11
	xorq	%rbp, %r10
	movq	8(%rdx), %rdx
	movl	(%rdi), %edi
	movabsq	$8387220255154660723, %rbp
	xorq	%rax, %rbx
	xorq	%r9, %rax
	xorq	%rbp, %rax
	addq	%rbx, %r10
	rolq	$13, %rbx
	leal	-559038725(%rdi,%rsi), %esi
	addq	%rax, %r11
	rolq	$16, %rax
	xorq	%r10, %rbx
	movl	12(%rcx), %edi
	xorq	%r11, %rax
	rolq	$32, %r10
	addq	%rbx, %r11
	addq	%rax, %r10
	rolq	$17, %rbx
	rolq	$21, %rax
	xorq	%r11, %rbx
	xorq	%r10, %r9
	rolq	$32, %r11
	xorq	%r10, %rax
	addq	%rbx, %r9
	rolq	$13, %rbx
	xorq	%rdx, %rax
	movq	%rbx, %r10
	addq	%rax, %r11
	rolq	$16, %rax
	xorq	%r9, %r10
	xorq	%r11, %rax
	rolq	$32, %r9
	addq	%r10, %r11
	addq	%rax, %r9
	rolq	$21, %rax
	xorq	%r9, %rax
	rolq	$17, %r10
	xorq	%r9, %rdx
	movabsq	$1152921504606846976, %r9
	xorq	%r11, %r10
	xorq	%r9, %rax
	rolq	$32, %r11
	addq	%r10, %rdx
	rolq	$13, %r10
	addq	%rax, %r11
	xorq	%rdx, %r10
	rolq	$16, %rax
	xorq	%r11, %rax
	rolq	$32, %rdx
	addq	%r10, %r11
	rolq	$17, %r10
	addq	%rax, %rdx
	rolq	$21, %rax
	xorq	%r11, %r10
	rolq	$32, %r11
	xorq	%rdx, %rax
	xorq	%r9, %rdx
	movq	%r11, %r9
	addq	%r10, %rdx
	rolq	$13, %r10
	xorb	$-1, %r9b
	xorq	%rdx, %r10
	rolq	$32, %rdx
	addq	%rax, %r9
	rolq	$16, %rax
	movq	%rax, %r11
	xorq	%r9, %r11
	addq	%r10, %r9
	addq	%r11, %rdx
	rolq	$21, %r11
	xorq	%rdx, %r11
	rolq	$17, %r10
	addl	%esi, %edi
	xorq	%r9, %r10
	rolq	$32, %r9
	movl	%edi, %ecx
	movzwl	24(%rsp), %edi
	leaq	(%rdx,%r10), %rax
	rolq	$13, %r10
	leaq	(%r11,%r9), %rdx
	rolq	$16, %r11
	xorq	%rax, %r10
	xorq	%rdx, %r11
	rolq	$32, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%r10, %r9
	addq	%r10, %rdx
	addq	%r11, %rax
	rolq	$21, %r11
	rolq	$17, %r9
	xorq	%rax, %r11
	popq	%rbp
	.cfi_def_cfa_offset 8
	xorq	%rdx, %r9
	rolq	$32, %rdx
	addq	%r9, %rax
	rolq	$13, %r9
	addq	%r11, %rdx
	xorq	%r9, %rax
	rolq	$16, %r11
	xorq	%rdx, %r11
	addq	%rax, %rdx
	rolq	$17, %rax
	xorq	%rdx, %rax
	rolq	$32, %rdx
	xorl	%edx, %eax
	rolq	$21, %r11
	xorl	%r11d, %eax
	leal	(%rax,%rsi), %edx
	movl	%r8d, %eax
	sall	$16, %eax
	orl	%edi, %eax
	addl	%esi, %eax
	movl	%edx, %esi
	xorl	%edx, %eax
	roll	$14, %esi
	subl	%esi, %eax
	movl	%eax, %esi
	xorl	%eax, %ecx
	roll	$11, %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %edx
	rorl	$7, %esi
	subl	%esi, %edx
	movl	%edx, %esi
	xorl	%edx, %eax
	roll	$16, %esi
	subl	%esi, %eax
	movl	%eax, %esi
	xorl	%eax, %ecx
	roll	$4, %esi
	subl	%esi, %ecx
	xorl	%ecx, %edx
	roll	$14, %ecx
	subl	%ecx, %edx
	xorl	%edx, %eax
	rorl	$8, %edx
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE19:
	.size	inet6_ehashfn, .-inet6_ehashfn
	.ident	"GCC: (GNU) 11.3.1 20221121 (Red Hat 11.3.1-4)"
	.section	.note.GNU-stack,"",@progbits
