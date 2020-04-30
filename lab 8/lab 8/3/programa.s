		.data

		.text
		.globl	programa
programa:
	addiu 	$sp, $sp, -4
	sw 		$ra, 0($sp)
	
	#$a0 é um arr com 5 inteiros
	lw 		$t0, 0($a0)
	addi 	$a0, $a0, 4
	
	lw 		$t1, 0($a0)
	addi 	$a0, $a0, 4
	
	lw 		$t2, 0($a0)
	addi 	$a0, $a0, 4
	
	lw 		$t3, 0($a0)
	addi 	$a0, $a0, 4
	
	lw 		$t4, 0($a0)
	addi 	$a0, $a0, 4
	
	
	jal PolyCalc
	
	addi $sp, $sp, -4
	lw $ra, 0($sp)
	
	jr		$ra
	
	
PolyCalc:
	add 	$s1, $t0, $t1
	mul 	$s1, $s1, 5
	mul 	$s2, $t3, $t4
	mul 	$s2, $s2, 3
	sub 	$s3, $t2, $s2
	mul 	$s3, $s1, $s2
	
	move $v0, $s3
	
	jr 	$ra
