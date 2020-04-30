	.data
	
	.text
	.globl	convertMaisculas

	
convertMaisculas:
	# String em a0
	li		$s2, 32 
	not		$s2, $s2
	
	loop:
		lb		$t0, 0($a0) #Ler um byte da string
		beqz	$t0, end #if $t0 == 0, j end
		
		blt		$t0, 0x61, step #verificar se os byte lido é uma letra minuscula
		bgt		$t0, 0x7A, step
		
		and		$t1, $t0, $s2 # transformar uma letra minuscula em maiscula (subtrair 32, na tabela ASCII)
		sb		$t1, 0($a0) # Guardar a letra na string 
		
	step:
		addi	$a0, $a0, 1 # Aumentar o indice da string
		j		loop
		
	end:
		move	$v0, $a0 
		jr		$ra

