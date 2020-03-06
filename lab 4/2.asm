.data
A: .word 32
B: .word 24
C: .word 0

.text

main:
	lw $t1, A
	lw $t2, B
	lw $t3, C
	
	li $v0, 1 # Codigo print Int
	
	jal subtract
	syscall
	j end

subtract:
	sub $t3, $t1, $t2
	slti $s1, $t3, 0 # se $t3 for <0, $s1 = 1
	bnez $s1, abs_idk # se nao for 0 jump to abs
	move $a0, $t3
	jr $ra
	
abs_idk:
	sub $t3, $zero, $t3
	move $a0, $t3
	jr $ra
	
end:
