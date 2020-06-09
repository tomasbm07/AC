	.data
	
	.text
	.globl	codifica_string

	
codifica_string:
	#a0 - *str
	move 	$s1, $a0
	li 		$t0, 0
	
	loop:
		lb		$t1, 0($s1)
		beqz	$t1, end
		div		$t0, 2
		mfhi	$t2
		beqz	$t2, even
		j 		odd
		
	even:
		addi		$t1, $t1, 2
		sb			$t1, 0($s1)
		addi		$s1, $s1, 1
		addi		$t0, $t0, 1
		j			loop
		
	odd:
		addi		$t1, $t1, -2
		sb			$t1, 0($s1)
		addi		$s1, $s1, 1
		addi		$t0, $t0, 1
		j			loop
		
	end:
		jr		$ra
		