		.data

		.text
		.globl	manipula_array
		
manipula_array:
	addi	$sp, $sp, -4 # Arranjar espaço na stack para $ra
	sw		$ra, 0($sp) # Guardar $ra na stack
	#a0, array
	#a1, tamanho do array
	move	$s1, $a0 # Colocar o array em $s1
	li		$t0, 0 # Contador
	
	loop:
		lw		$t1, 0($s1) # ler tab[i]
		add		$t1, $t1, $t1 #t1*2
		sw		$t1, 0($s1) # Guardar o valor alterado
		addi	$s1, $s1, 4 # i++
		addi	$t0, $t0, 1 #Incrementar o contador
		beq		$t0, $a1, next
		j		loop
		
	next:
		jal 	inverte_array
		
	end: 
		lw		$ra, 0($sp)
		addi	$sp, $sp, -4
		jr		$ra
