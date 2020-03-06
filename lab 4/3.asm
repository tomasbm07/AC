.data
num: .word 0xF

.text

main:
	li $t0, 0 # contador
	li $t1, 0 # numero de 1's
	lw $s1, num
	
	li $v0, 1 # codigo para imprimir int
	

loop: 
	beq $t0, 32, exit 
	andi $t3, $s1, 1
	srl $s1, $s1, 1
	addi $t0, $t0, 1 # incrementar o contador total de bits
	bnez $t3, add_1 # se for 1, aumentar o nº de 1's 
	j loop  

add_1:
	addi $t1, $t1, 1
	beq $t0, 32, exit
	j loop
	
	
exit:
	andi $t4, $t1, 1
	beqz $t4, par # se for 0
	j impar # else, o numero é impar


impar:
	li $a0, 1
	syscall
	j end

par:
	li $a0, 0
	syscall
	j end


end:

