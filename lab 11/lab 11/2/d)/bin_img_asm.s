# O cabeçalho da função bin_img_asm em C é
#
# void bin_img_asm(unsigned char *ptr, int w, int h);

	.data
	.text
	.globl	bin_img_asm
	
bin_img_asm:
	.set noreorder
#$a0 = *ptr
#$a1 = w
#$a2 = h
	
	move	$s1, $a0
	mul		$s2, $a1, $a2 # w*h
	li		$t0, 0 #Soma dos pixeis
	li 		$t1, 0 #Contador
	
	li		$t5, 0
	li		$t6, 255
	
	Limiar:
		beq		$t1, $s2, next
		lbu		$t2, 0($s1)
		addi	$s1, $s1, 1 # Incrementar o indice
		add		$t0, $t0, $t2 #soma dos pixeis
		j 		Limiar
		addi 	$t1, $t1, 1 # Incrementar o contador
		
	next:
		div		$s3, $t0, $s2 #Limiar
	
		move	$s1, $a0 #voltar ao inicio da imagem
		li 		$t1, 0 #Reinicar Contador
		
	Pixel:
		beq		$t1, $s2, end
		lbu		$t2, 0($s1)
		blt		$t2, $s3, lesser
		NOP
		
		grater:
			sb		$t5, 0($s1) # Trocar o limiar do pixel
			addi	$s1, $s1, 1 # Incrementar o indice
			j		Pixel
			addi 	$t1, $t1, 1 # Incrementar o contador
			
		lesser:
			sb		$t6, 0($s1) # Trocar o limiar do pixel
			addi	$s1, $s1, 1 # Incrementar o indice
			j		Pixel
			addi 	$t1, $t1, 1 # Incrementar o contador
	
	end:
			jr	$ra

