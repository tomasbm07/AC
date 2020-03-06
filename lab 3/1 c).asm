.data 
nums: .word 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71

.text
li $s1, 0xFFFF0010 # Segmento da direita
li $t2, 0 # registo dos codigos em Hex dos numeros
li $t3, 16 # max do contador
li $t4, 0 # registo do contador
la $a1, nums # Load de texto para $a1

li $v0, 32 # registo com codigo de sleep para syscall
li $a0, 300 # sleep time (ms)


loop:
	
	lw $t2 , 0($a1)
	sw $t2, 0($s1)
	addi $t4, $t4, 1 # Contador para acabr o loop
	addi $a1, $a1, 4 # Incrementa o indice  de nums[i] 
	syscall # sleep
	bne $t3, $t4, loop
	j end
	
end:
