	.data
	
	.text
	.globl	conta_char
	
conta_char:
	la 		$s1, 0($a0)
	la		$s2, 0($a1) # char a comparar
	li 		$t1, 0 # Contador 
	
	lb 		$t0, 0($s1) # ler um byte da string
	beq 		$t0, $s2, equal
	
start:
	addi 		$s1, $s1, 1
	lb 		$t0, 0($s1) # ler um byte da string
	beq 		$t0, $s2, equal
	beqz		$t0, end
	j start
	
	
equal:
	addi 		$t1, $t1, 1
	j start
	
end:
	move		$v0, $t1
	jr		$ra
