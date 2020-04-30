	.data
	
	.text
	.globl	oddnumber

	
oddnumber:
	#a0 está o array tab[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	#a1 está tabodd[10]
	#a2 está tabeven[10]
	#a3 está o tamanho do array, n = 10
	li 		$t0, 0 #Contador do tamanho do array
	li		$t1, 0 #Contador dos numeros impares
	
	loop:
		beq		$t0, $a3, end # quando chegar ao tamanho do array, end
		lw		$s1, 0($a0) #guardar o valor do indice i em s1
		addi 	$a0, $a0, 4 # aumentar o indice 
		andi	$s2, $s1, 1 # tab[i] and 1
		beq		$s2, 1, odd # se for impar
		beq		$s2, 0, even # se for par
		
	odd:
		addi	$t1, $t1, 1 #incrementar o contador dos impares
		addi	$t0, $t0, 1 # incrementar o contador total
		sw		$s1, 0($a1) # guardar o valor em tabodd[i]
		addi	$a1, $a1, 4 # incrementar o indice de tabodd[]
		j 		loop
		
	even:
		addi	$t0, $t0, 1 # incrementar o contador total
		sw		$s1, 0($a2) # guardar o valor em tabodd[i]
		addi	$a2, $a2, 4 # incrementar o indice de tabodd[]
		j		loop
	
	
	end:
		move 	$v0, $t1 # colocar o numero total de impares no em v0
		jr		$ra
		