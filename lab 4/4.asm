.data
string: .asciiz "Uma frase!"
comp: .word 0

.text
	li $v0, 1 # Codigo para print Int

str_len:
	la $a0, string
	li $t0, 0 # Contador do numero total de carateres
loop:
	lb $t1, 0($a0) # Ler o carater
	beqz $t1, exit # sair se for 0
	addi $a0, $a0, 1 # incrementar o indice
	addi $t0, $t0, 1 # incrementar o tamanho da string
	j loop 
	
exit:
	move $a0, $t0
	syscall
	
	
