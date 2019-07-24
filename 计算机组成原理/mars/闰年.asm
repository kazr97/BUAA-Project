.data
.text
li $v0 5
syscall
li $s0 100
li $s1 400
li $s2 4
div $v0,$s0#用输入的数除以100
mfhi $t0#余数放在t0里
beq $t0,0 if_1_else
	div $v0,$s2#除以4
	mfhi $t0#余数放在t0里
	beq $t0,0 if_3_else
	li $a0 0
	li $v0 1
	syscall
	j end

if_1_else:
	div $v0,$s1#除以400
	mfhi $t0#余数放在t0里
	beq $t0,0 if_2_else
	li $a0 0
	li $v0 1
	syscall
	j end

if_2_else:
	li $a0 1
	li $v0 1
	syscall
	j end

if_3_else:
	li $a0 1
	li $v0 1
	syscall
	j end

end:
	nop
