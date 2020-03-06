	li $t1, 0 # Ccontador
	li $t3, 120 # Comprimento - 30x4
	li $t5, 0 # Contador de Linhas
	li $t6, 80 # Largura - 20x4
	li $s1, 0x10010000 # Base adress for diplay
	li $t4 0x00FFFF00  # 00RRGGBB
	subi $t2, $t3, 256 # pixeis desenhados - total pixeis(linha)
	abs $t2, $t2
	
	
loop:
	sw $t4, 0($s1) # Atribuir a cor ao pixel
	addu $t1, $t1, 4 #Contador do nº de colunas
	addi $s1, $s1, 4 # Avançar um pixel
	bne $t1, $t3, loop # if t1 != t3 goto Loop else continue
	
Next_line:
	li $t1, 0 # Reinicar o contador
	addi $t5, $t5, 4 # Incrementar o contador da linha
	add $s1, $s1, $t2 # Avançar os restrantes pixeis até ao 1º da linha abaixo
	bne $t5, $t6, loop # Desenhar uma linha se t5 != t6

	

	
	
	
