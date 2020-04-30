	.data
	.text
	.globl	max
	.globl	min
	
max:
	# argumentos da funçao max
	move	$s1, $a0
	move	$s2, $a1
	move	$s3, $a2
	move	$s4, $a3
	
	li 		$t5, 0 #Contador
	
	move 	$t0, $s1
l_1_max:
	ble 	$t0, $s2, b_1_max #Se t0 < s1 jump
l_2_max:
	ble 	$t0, $s3, b_2_max
l_3_max:
	ble 	$t0, $s4, b_3_max
l_4_max:
	j end_max
	
b_1_max:
	move 	$t0, $s2
	j l_2_max
b_2_max:
	move 	$t0, $s3
	j l_3_max
b_3_max:
	move 	$t0, $s4
	j l_4_max
	
	
end_max:
	move $v0, $t0
	jr	$ra



min:
	# argumentos da funçao max
	move	$s1, $a0
	move	$s2, $a1
	move	$s3, $a2
	move	$s4, $a3
	
	li 		$t5, 0 #Contador
	
	move 	$t0, $s1
l_1_min:
	bgt 	$t0, $s2, b_1_min #Se t0 < s1 jump
l_2_min:
	bgt		$t0, $s3, b_2_min
l_3_min:
	bgt 	$t0, $s4, b_3_min
l_4_min:
	j end_min
	
b_1_min:
	move 	$t0, $s2
	j l_2_min
b_2_min:
	move 	$t0, $s3
	j l_3_min
b_3_min:
	move 	$t0, $s4
	j l_4_min
	
	
end_min:
	move $v0, $t0
	jr	$ra
