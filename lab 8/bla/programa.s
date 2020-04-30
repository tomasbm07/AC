	.file	1 "programa.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	programa
	.set	nomips16
	.ent	programa
	.type	programa, @function
programa:
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	lw	$2,40($fp)
	lw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,4
	lw	$5,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	lw	$6,40($fp)
	addiu	$6,$6,16
	lw	$6,0($6)
	sw	$6,16($sp)
	move	$6,$3
	move	$7,$2
	jal	PolyCalc
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	programa
	.size	programa, .-programa
	.align	2
	.globl	PolyCalc
	.set	nomips16
	.ent	PolyCalc
	.type	PolyCalc, @function
PolyCalc:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$3,$3,$2
	move	$2,$3
	sll	$2,$2,2
	addu	$4,$2,$3
	lw	$3,36($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	subu	$2,$0,$2
	lw	$3,40($fp)
	mult	$2,$3
	mflo	$3
	lw	$2,32($fp)
	addu	$2,$3,$2
	mult	$4,$2
	mflo	$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	PolyCalc
	.size	PolyCalc, .-PolyCalc
	.ident	"GCC: (Debian 4.6.3-14) 4.6.3"
