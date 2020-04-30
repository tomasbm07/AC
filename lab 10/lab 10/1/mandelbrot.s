	.data
	
	.text
	.globl	Mandelbrot

	
Mandelbrot:
	#a0, z0
	#a1, n
	# z(n+1) = z^2(n) + z0
	addi	$sp, $sp, -4 #guardar o valor de $ra da stack
	sw		$ra, 0($sp)

	li		$s1, 0 #contador
	li 		$t1, 0 # z(n) 
	move	$s2, $a0
	
	move 	$t1, $s2 #z(0)
	
	loop:
		beqz	$a1, end # if (a1==0), end
		move 	$a0, $t1 #colocar o valor 
		jal 	sqr # z^2(n)
		add		$t1, $v0, $s2 #z^2(n) + z0 
		addi	$s1, $s1, 1 # incrementra contador
		beq		$s1, $a1, end
		j		loop
			
	end:
		move 	$v0, $t1
		lw 		$ra, 0($sp) # retirar o valor de $ra da stack
		addi	$sp, $sp, 4
		jr		$ra
		
		
sqr:
	move	$t0, $a0
	mul		$v0, $t0, $t0
	jr		$ra
	