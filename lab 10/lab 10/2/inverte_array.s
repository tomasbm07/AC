		.data

		.text
		.globl	inverte_array
		
inverte_array:
	#a0, array array[]={1,2,3,4,5,6,7,8,9,10}; 
	#a1, tamanho do array, 10
	li		$t0, 0 #contador crescente
	move	$t1, $a1 # contador decrescente
	addi 	$t1, $t1, -1 # size - 1
	div		$a1, 2 #$LO = $a1 / 2; $HI = $a1 mod 2 
	mflo	$t4 # colocar em t4 o valor de $LO
	
	move	$s1, $a0 # copia do array
	move	$s2, $a0 # copia do array
	mul		$t5, $t1, 4 
	add		$s2, $s2, $t5

	loop:
		lw		$t2, 0($s1) # ler o valor mais á esquerda
		lw		$t3, 0($s2) # ler o valor mais á direita
		sw		$t3, 0($s1) # substituir pelo valor mais á direita
		sw		$t2, 0($s2) # substituir pelo valor mais á direita
		
		addi	$s1, $s1, 4 # incrementar os contadores
		addi	$s2, $s2, -4
		addi	$t0, $t0, 1
		
		beq		$t0, $t4, end
		j		loop
		
	end:
		jr		$ra
