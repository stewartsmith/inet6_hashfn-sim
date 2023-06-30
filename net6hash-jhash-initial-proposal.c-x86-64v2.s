	.file	"net6hash-jhash-initial-proposal.c"
	.text
	.p2align 4
	.globl	inet6_ehashfn
	.type	inet6_ehashfn, @function
inet6_ehashfn:
.LFB18:
	.cfi_startproc
	movl	%esi, %r10d
	movl	%r8d, %eax
	movzwl	8(%rsp), %esi
	movl	12(%rcx), %r8d
	sall	$16, %eax
	subl	$559038725, %edx
	movl	(%r9), %ecx
	movq	%r9, %r11
	orl	%esi, %eax
	addl	%edx, %r8d
	movl	(%rdi), %edi
	leal	(%rax,%rdx), %esi
	addl	%edx, %ecx
	movl	%esi, %r9d
	xorl	%esi, %ecx
	leal	-559038725(%rdi,%r10), %edi
	roll	$14, %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %r8d
	roll	$11, %r9d
	subl	%r9d, %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %esi
	rorl	$7, %r9d
	subl	%r9d, %esi
	movl	%esi, %r9d
	xorl	%esi, %ecx
	roll	$16, %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %r8d
	roll	$4, %r9d
	subl	%r9d, %r8d
	movl	8(%r11), %r9d
	xorl	%r8d, %esi
	roll	$14, %r8d
	subl	%r8d, %esi
	movl	4(%r11), %r8d
	addl	%edx, %r9d
	addl	%edx, %r8d
	addl	12(%r11), %edx
	movl	%r9d, %r11d
	roll	$14, %r11d
	xorl	%r9d, %edx
	subl	%r11d, %edx
	movl	%edx, %r11d
	xorl	%edx, %r8d
	roll	$11, %r11d
	subl	%r11d, %r8d
	movl	%r8d, %r11d
	xorl	%r8d, %r9d
	xorl	%esi, %ecx
	rorl	$8, %esi
	rorl	$7, %r11d
	addl	%edi, %ecx
	addl	%edi, %eax
	subl	%r11d, %r9d
	subl	%esi, %ecx
	movl	%r9d, %r11d
	xorl	%r9d, %edx
	roll	$16, %r11d
	subl	%r11d, %edx
	movl	%edx, %r11d
	xorl	%edx, %r8d
	roll	$4, %r11d
	subl	%r11d, %r8d
	xorl	%r8d, %r9d
	roll	$14, %r8d
	subl	%r8d, %r9d
	xorl	%r9d, %edx
	rorl	$8, %r9d
	addl	%edi, %edx
	subl	%r9d, %edx
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
.LFE18:
	.size	inet6_ehashfn, .-inet6_ehashfn
	.ident	"GCC: (GNU) 11.3.1 20221121 (Red Hat 11.3.1-4)"
	.section	.note.GNU-stack,"",@progbits
