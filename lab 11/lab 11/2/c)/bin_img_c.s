#Código gerado de gcc -Ofast -S bin_img_c.c
	.file	1 "bin_img_c.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	bin_img_c
	.set	nomips16
	.ent	bin_img_c
	.type	bin_img_c, @function
bin_img_c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	mult	$5,$6
	mflo	$5
	bltz	$5,$L12
	addiu	$2,$4,1

	addu	$3,$2,$5
	move	$6,$4
	move	$7,$0
$L3:
	lbu	$8,0($6)
	addiu	$6,$6,1
	bne	$6,$3,$L3
	addu	$7,$7,$8

	div	$0,$7,$5
	teq	$5,$0,7
	mflo	$7
	j	$L11
	lbu	$6,0($4)

$L10:
	addiu	$2,$2,1
	lbu	$6,0($4)
$L11:
	slt	$6,$7,$6
	xori	$6,$6,0x1
	subu	$6,$0,$6
	sb	$6,0($4)
	bne	$2,$3,$L10
	move	$4,$2

$L12:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bin_img_c
	.size	bin_img_c, .-bin_img_c
	.ident	"GCC: (Debian 4.6.3-14) 4.6.3"
