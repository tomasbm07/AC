		.data

		.text
		.globl	programa
programa:

	# Codigo da função aqui
	addiu 	$sp, $sp, -48 # 8*5 + $ra
	sw 		$ra, 44($sp)# guarda $ra
	move	$fp, $sp
	
	
	sw		$a0, 48($fp) #$2 = $v0, #$4-$7 = $a0 - $a3
	sw		$a1, 52($fp) 
	sw		$a2, 56($fp) 
	sw		$a3, 60($fp)
	
	sw		$a0, 40($fp),
	lw		$v0, 40($fp)
	lw		$a0, 0($v0)
	lw		$v0, 40($fp)
	addiu	$v0, $v0, $a0
	
	
	lw		$ra, 44($sp) #recuperar $ra
	addi 	$sp, $sp, 48
	jr		$ra
	
PolyCalc:


	jr 	$ra
