.data
	nrs_linha1: 0x3f,0x06,0x5b,0x4f 
	nrs_linha2: 0x66,0x6d,0x7d,0x07
	nrs_linha3: 0x7f,0x6f,0x77,0x7c
	nrs_linha4: 0x39,0x5e,0x79,0x71
.text
li $s7, 0xffff0012 #linha a testar
li $s6, 0xffff0014 #coluna na linha
li $s5, 0xffff0010 #display direita

li $v0,32
li $a0,100

reset:
	li $t0,1 #bit das linhas

obter_valor:
	sb $t0,0($s7) #linha a ler
	lb $t1, 0($s6)#receber o valor
	
	li $t7,0x0f
	and ,$t2,$t7,$t1 #valor da linha
	
	beq $t0,16,reset #voltar à linha inical, no fim da ultima
	sll $t0,$t0,1 #mudar de linha
	beq $t2,0x0001,linha1
	beq $t2,0x0002,linha2
	beq $t2,0x0004,linha3
	beq $t2,0x0008,linha4
	j obter_valor
	
linha1:
	la $a1,nrs_linha1 #carregar os valores da linha em questao
	li $t6,0xf0 		#   carregar apenas..
	and $t3,$t6,$t1		#  ..os valores da coluna
	srl $t3,$t3,4 #valor da linha
	li $t4,0 	#contador para verificar quantas words avancar
	jal contador
	addi $t4,$t4,-1		#subtrair 1, pois, se o contador retorna-se quando a variavel fosse 1 em vez de 0, ao ser usada a primeira linha era criado um loop infinito no contador
	mul $t4,$t4,4		#nr de words
	add $a1,$a1,$t4	#avancar essas x words
	lw $t5,0($a1)		
	sw $t5,0($s5)
	j obter_valor
linha2:
	la $a1,nrs_linha2
	li $t6,0xf0
	and $t3,$t6,$t1
	srl $t3,$t3,4 #valor da linha
	li $t4,0
	jal contador
	addi $t4,$t4,-1
	mul $t4,$t4,4
	add $a1,$a1,$t4
	lw $t5,0($a1)
	sw $t5,0($s5)
	j obter_valor
linha3:
	la $a1,nrs_linha3
	li $t6,0xf0
	and $t3,$t6,$t1
	srl $t3,$t3,4 #valor da linha
	li $t4,0
	jal contador
	addi $t4,$t4,-1
	mul $t4,$t4,4
	add $a1,$a1,$t4
	lw $t5,0($a1)
	sw $t5,0($s5)
	j obter_valor

linha4:
	la $a1,nrs_linha4
	li $t6,0xf0
	and $t3,$t6,$t1
	srl $t3,$t3,4 #valor da linha
	li $t4,0
	jal contador
	addi $t4,$t4,-1
	mul $t4,$t4,4
	add $a1,$a1,$t4
	lw $t5,0($a1)
	sw $t5,0($s5)
	j obter_valor
	
contador:
	addi $t4,$t4,1
	srl $t3,$t3,1
	bne $t3,0,contador
	jr $ra
