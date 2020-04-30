		.data
		.text
		.globl	codificastring

codificastring:
	#a0 contem a string
	#a1 a chave de encriptação
	
	loop:
		lb		$t0, 0($a0) # Ler um char da string
		beqz	$t0, end # sair quando chegar ao fim da string
		xor		$t1, $t0, $a1 #xor de encriptação / desincriptação
		sb		$t1, 0($a0) # guardar o byte alterado
		addi	$a0, $a0, 1 # "andar" na string
		j		loop
	
	
	end:
		move	$v0, $a0 # colocar a string no output
		jr		$ra

