.data
original: .word 0x10203040 
inverted: .word 0x00000000

.text

main:
	li $t0, 0 # byte counter
	lw $t1, original # colocar a word em $t1
	lw $s2, inverted
	li $s1, 0x000000FF # mask para tirar o ultimo byte
	
	# print ao numero a inverter com um \n
	li $v0, 34 # codigo print int em Hex
	la $a0, 0($t1) # $a0 = original = 0x10203040
	syscall # print 0x10203040
	jal new_line # "\n"

	
loop:
	and $t3, $t1, $s1 # AND do valor com a mascara para retirar o byte mais á direita
	or $s2, $s2, $t3  # colocar o byte retirado em $s2
	addi $t0, $t0, 1 # somar 1 ao contador
	beq $t0, 4, exit # quando o contador chegar a 4, sair do loop
	srl $t1, $t1, 8 # shift 1 byte para a direita do numero
	sll $s2, $s2, 8 # shift 1 byte para a esquerda da mascara
	j loop
	
	
# funçao para dar print a um \n
new_line:
	li $v0, 11 # Code for printing char
	li $a0, 0x0A # codigo do \n da tabela ascii
	syscall
	li $v0, 34 # voltar ao codigo de print int em hex
	jr $ra

exit:
	move $a0, $s2
	syscall

end:
