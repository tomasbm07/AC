	.file	1 "funcoes.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	max
	.set	nomips16
	.ent	max
	.type	max, @function
max:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$fp,44($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	lw	$2,48($fp)
	sw	$2,20($fp)
	lw	$2,52($fp)
	sw	$2,24($fp)
	lw	$2,56($fp)
	sw	$2,28($fp)
	lw	$2,60($fp)
	sw	$2,32($fp)
	lw	$2,20($fp)
	sw	$2,12($fp)
	li	$2,4			# 0x4
	sw	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	j	$L2
	nop

$L4:
	lw	$2,8($fp)
	sll	$2,$2,2
	addiu	$3,$fp,8
	addu	$2,$3,$2
	lw	$3,12($2)
	lw	$2,12($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L3
	nop

	lw	$2,8($fp)
	sll	$2,$2,2
	addiu	$3,$fp,8
	addu	$2,$3,$2
	lw	$2,12($2)
	sw	$2,12($fp)
$L3:
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$3,8($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L4
	nop

	lw	$2,12($fp)
	move	$sp,$fp
	lw	$fp,44($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	max
	.size	max, .-max
	.align	2
	.globl	min
	.set	nomips16
	.ent	min
	.type	min, @function
min:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$fp,44($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	lw	$2,48($fp)
	sw	$2,20($fp)
	lw	$2,52($fp)
	sw	$2,24($fp)
	lw	$2,56($fp)
	sw	$2,28($fp)
	lw	$2,60($fp)
	sw	$2,32($fp)
	lw	$2,20($fp)
	sw	$2,12($fp)
	li	$2,4			# 0x4
	sw	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	j	$L6
	nop

$L8:
	lw	$2,8($fp)
	sll	$2,$2,2
	addiu	$3,$fp,8
	addu	$2,$3,$2
	lw	$3,12($2)
	lw	$2,12($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L7
	nop

	lw	$2,8($fp)
	sll	$2,$2,2
	addiu	$3,$fp,8
	addu	$2,$3,$2
	lw	$2,12($2)
	sw	$2,12($fp)
$L7:
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L6:
	lw	$3,8($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L8
	nop

	lw	$2,12($fp)
	move	$sp,$fp
	lw	$fp,44($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	min
	.size	min, .-min
	.ident	"GCC: (Debian 4.6.3-14) 4.6.3"
