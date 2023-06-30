	.file	"net6hash-jhash-faddr.c"
	.text
	.p2align 4
	.globl	inet6_ehashfn
	.type	inet6_ehashfn, @function
inet6_ehashfn:
.LFB18:
	.cfi_startproc
	movq	%r9, %r10
	movl	4(%r9), %r9d
	leal	-559038721(%rdx), %eax
	movl	(%r10), %r11d
	subl	8(%r10), %r11d
	addl	%eax, %r9d
	addl	8(%r10), %eax
	movl	%eax, %edx
	addl	%r9d, %eax
	roll	$4, %edx
	xorl	%r11d, %edx
	movl	%r9d, %r11d
	movl	%edx, %r9d
	subl	%edx, %r11d
	roll	$6, %r9d
	xorl	%r11d, %r9d
	leal	(%rdx,%rax), %r11d
	movl	%r9d, %edx
	subl	%r9d, %eax
	addl	%r11d, %r9d
	roll	$8, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	subl	%edx, %r11d
	roll	$16, %eax
	xorl	%r11d, %eax
	leal	(%rdx,%r9), %r11d
	movl	%r9d, %edx
	movl	%eax, %r9d
	subl	%eax, %edx
	addl	%r11d, %eax
	rorl	$13, %r9d
	xorl	%r9d, %edx
	subl	%edx, %r11d
	movl	%r11d, %r9d
	movl	%edx, %r11d
	roll	$4, %r11d
	xorl	%r9d, %r11d
	leal	(%rdx,%rax), %r9d
	addl	12(%r10), %eax
	movl	%eax, %edx
	movl	%r9d, %r10d
	movl	%r11d, %eax
	xorl	%r9d, %eax
	roll	$14, %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	xorl	%eax, %edx
	roll	$11, %r10d
	subl	%r10d, %edx
	movl	%edx, %r10d
	xorl	%edx, %r9d
	rorl	$7, %r10d
	subl	%r10d, %r9d
	sall	$16, %r8d
	movl	%r9d, %r10d
	xorl	%r9d, %eax
	roll	$16, %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	xorl	%eax, %edx
	roll	$4, %r10d
	subl	%r10d, %edx
	xorl	%edx, %r9d
	roll	$14, %edx
	subl	%edx, %r9d
	movl	(%rdi), %edx
	movl	12(%rcx), %edi
	xorl	%r9d, %eax
	rorl	$8, %r9d
	leal	-559038725(%rdx,%rsi), %edx
	movzwl	8(%rsp), %esi
	addl	%edx, %eax
	addl	%edx, %edi
	subl	%r9d, %eax
	orl	%esi, %r8d
	movl	%edi, %ecx
	addl	%r8d, %edx
	movl	%eax, %esi
	xorl	%eax, %edx
	roll	$14, %esi
	subl	%esi, %edx
	movl	%edx, %esi
	xorl	%edx, %ecx
	roll	$11, %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %eax
	rorl	$7, %esi
	subl	%esi, %eax
	movl	%eax, %esi
	xorl	%eax, %edx
	roll	$16, %esi
	subl	%esi, %edx
	movl	%edx, %esi
	xorl	%edx, %ecx
	roll	$4, %esi
	subl	%esi, %ecx
	xorl	%ecx, %eax
	roll	$14, %ecx
	subl	%ecx, %eax
	xorl	%eax, %edx
	rorl	$8, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE18:
	.size	inet6_ehashfn, .-inet6_ehashfn
	.ident	"GCC: (GNU) 11.3.1 20221121 (Red Hat 11.3.1-4)"
	.section	.note.GNU-stack,"",@progbits
