.data
string: .asciiz "socorro"
c1: .byte 'o'
c2: .byte 'u'


.text
	la $s1, string # colocar a string em $s1
	lb $s2, c1 # colocar o char a ser trocado em $s2
	lb $s3, c2 # colocar o char para substiruir em $s3 

	li $v0, 4 # Codigo para print str


loop:
	lb $t0, 0($s1) # ler um byte da string
	beqz $t0, exit # se o byte lido for 0(o ultimo byte), sair do loop
	beq $t0, $s2, swap # se o carater lido for igual a "o" goto swap
	addi $s1, $s1, 1 # incrementar o indice da string
	j loop
	
swap:
	sb $s3, 0($s1) # subtituir o carater
	j loop
	
exit:
	la $t0, string # colocar a string cpm os carateres subtituidos em $t0
	move $a0, $t0 # colocar em $a0
	syscall # dar print
