# O cabeçalho da função bin_img em C é
#
# void bin_img(unsigned char *ptr, int w, int h, unsigned char limiar);

	.data
	
	.text
	.globl	bin_img
	
bin_img:
	#a0, ptr
	#a1, w
	#a2,h
	#a3, limiar
	# for(i = 0; i < w * h; i++)
	li 		$t0, 0 # i
	mul		$s1, $a1, $a2
	addi 	$s1, $s1, -1
	move	$s4, $a0
	
	loop:
		beq		$t0, $s1, end
		lb		$t3, 0($s4)
		bgt		$t3, $a3, bigger
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
			addi	$s4, $s4, 1
			addi 	$t0, $t0, 1
			j		loop
			
	end:
		jr		$ra
