		.data
		.text
		.globl	Polycalc

Polycalc:
	#a0 tem o array tab[6]
	#(i=0 -> 00000001 -> 2^0; i=1 -> 00000010 -> 2^1; ...)
	li 		$s1, 0 #2^i 
	li 		$v0, 0 #resultado somatorio


	loop:
		lw 		$s3, 0($a0) #load word do endereco de inteiros (s3 = tab[i])
		srl		$t1, $s3, $s1 # xi / 2^i
		add 	$v0, $v0, $t1 #total(somatorio)
		addi 	$a0, $a0, 4 #incrementar o indice do array(i++)
		addi 	$s1, $s1, 1 #avancar contador (count++)
		bne 	$s1, 5, loop #verificar se ja completou o somatorio
		
	end:
		jr		$ra #sair da funcao

