.data 

nums_direita: 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F 
nums_esquerda: 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x6F

.text
li $s1, 0xFFFF0010 # Segmento da direita
li $s2, 0xFFFF0011 # Segmento da esquerda
li $t2, 0 # registo dos codigos em Hex
li $t3, 10 # max do contador

li $t4, 0 # registo do contador esquerda
li $t5, 0 # registo do contador direita

la $a1, nums_direita # Load de texto para $a1
la $a2, nums_esquerda 

li $v0, 32 # registo com codigo de sleep para syscall
li $a0, 200 # sleep time (ms)


loop_direita:
	lw $t2, 0($a1)
	sw $t2, 0($s1)
	addi $t4, $t4, 1 # Contador para acabr o loop
	addi $a1, $a1, 4 # Incrementa o indice  de nums_direita[i] 
	syscall # sleep
	bne $t3, $t4, loop_direita
	beq $t5, $t3, end # quando o da esquerda for 9 e acabar o loop da direita
			  # o programa acaba
	
	
loop_esquerda:
	la $a1, nums_direita # reload de texto para $a1
	
	lw $t2, 0($a2)
	sb $t2, 0($s2) # sb? sw n funciona
	addi $t5, $t5, 1 # Contador para acabr o loop
	addi $a2, $a2, 4 # Incrementa o indice  de nums_esquerda[i]
	syscall #  sleep
	li $t4, 0 # restart do contador da direita
	bne $t5, $t3, loop_direita

end:

