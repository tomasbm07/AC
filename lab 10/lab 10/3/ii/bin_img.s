# O cabeçalho da função bin_img em C é
#
# void bin_img(unsigned char *ptr, int w, int h);

	.data
	
	.text
	.globl	bin_img
	
bin_img:
	#a0, ptr
	#a1, w
	#a2,h
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)
	
	jal calcula_limiar
	move	$s5, $v0
	
	# for(i = 0; i < w * h; i++)
	li 		$t0, 0 # i
	mul		$s1, $a1, $a2
	addi 	$s1, $s1, -1
	move	$s4, $a0
	

	
	loop:
		beq		$t0, $s1, fim
		lb		$t3, 0($s4)
		bgt		$t3, $s5, bigger
		j		smaller
		
		bigger:
			li 		$t1, 255
			sb		$t1, 0($s4)
			j 		next
			
		smaller:
			li 		$t1, 0
			sb		$t1, 0($s4)
			j 		next
			
		next:
			addi	$s4, $s4, 1 #incremnetar o indice
			addi 	$t0, $t0, 1 # incrementar o contador
			j		loop
			
	fim:
		lw		$ra, 0($sp)
		addi	$sp, $sp, 4
		jr		$ra


calcula_limiar:
	mul		$s1, $a1, $a2
	move 	$s2, $a0
	li		$t1, 0 # Contador
	li		$t2, 0 #Soma
	
	
	loop_limiar:
		lb 		$t0, 0($s2)
		add		$t2, $t2, $t0
		addi	$t1, $t1, 1
		addi 	$s2, $s2, 1
		beq		$t1, $s1, end
		j		loop_limiar

	end:	
		div		$v0, $t2, $s1
		jr		$ra
