.data
.text
li $v0 5
syscall
li $s0 100
li $s1 400
li $s2 4
div $v0,$s0#�������������100
mfhi $t0#��������t0��
beq $t0,0 if_1_else
	div $v0,$s2#����4
	mfhi $t0#��������t0��
	beq $t0,0 if_3_else
	li $a0 0
	li $v0 1
	syscall
	j end

if_1_else:
	div $v0,$s1#����400
	mfhi $t0#��������t0��
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
