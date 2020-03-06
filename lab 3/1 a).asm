li $t1, 0xFFFF0010 # Segmento da direita
li $t2, 1 # registo dos bits
li $t3, 8 # max do contador
li $t4, 0 # registo do contador

li $v0, 32 # registo com codigo de sleep para syscall
li $a0, 300 # sleep time (ms)

loop:
	sw $t2, 0($t1) # associar um numero em binario ao endreço do segmento
	sll $t2, $t2, 1 # shift de um bit para a esquerda
	addi $t4, $t4, 1 # Contador para acabr o loop
	syscall # sleep
	bne $t3, $t4, loop
	j end
	
end:
