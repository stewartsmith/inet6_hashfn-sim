	.file	"net6hash-orig.c"
	.text
	.p2align 4
	.globl	inet6_ehashfn
	.type	inet6_ehashfn, @function
inet6_ehashfn:
.LFB17:
	.cfi_startproc
	movl	8(%r9), %r11d
	leal	-559038725(%rdx), %eax
	movq	%rcx, %r10
	movl	(%r9), %ecx
	xorl	4(%r9), %ecx
	addl	%eax, %r11d
	addl	%eax, %ecx
	addl	12(%r9), %eax
	movl	%r11d, %edx
	xorl	%r11d, %eax
	roll	$14, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	xorl	%eax, %ecx
	roll	$11, %edx
	subl	%edx, %ecx
	xorl	%ecx, %r11d
	movl	%ecx, %edx
	rorl	$7, %edx
	movl	%r11d, %r9d
	subl	%edx, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %eax
	roll	$16, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	xorl	%eax, %ecx
	roll	$4, %edx
	subl	%edx, %ecx
	movl	(%rdi), %edx
	movzwl	8(%rsp), %edi
	xorl	%ecx, %r9d
	roll	$14, %ecx
	subl	%ecx, %r9d
	leal	-559038725(%rdx,%rsi), %esi
	movl	%r8d, %edx
	movl	12(%r10), %ecx
	xorl	%r9d, %eax
	sall	$16, %edx
	addl	%esi, %eax
	rorl	$8, %r9d
	orl	%edi, %edx
	addl	%esi, %ecx
	subl	%r9d, %eax
	addl	%esi, %edx
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
.LFE17:
	.size	inet6_ehashfn, .-inet6_ehashfn
	.ident	"GCC: (GNU) 11.3.1 20221121 (Red Hat 11.3.1-4)"
	.section	.note.GNU-stack,"",@progbits
