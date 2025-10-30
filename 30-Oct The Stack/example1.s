	.arch armv8-a
	.file	"example1.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Answer is: %i"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	mov	w0, 4
	str	w0, [sp, 44]
	mov	w0, 3
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	foo
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	foo
	.type	foo, %function
foo:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	add	w1, w1, w0
	ldr	w2, [sp, 12]
	ldr	w0, [sp, 8]
	mul	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	foo, .-foo
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
