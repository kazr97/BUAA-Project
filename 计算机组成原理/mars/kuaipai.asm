.data
x:.space 100
kongge:.asciiz " "
.text
li $v0,5
syscall
move $s0,$v0#读入一个整数n，放在s0里
li $t0,0#t0用于计数
for_1_begin:
	 beq $t0,$s0,for_1_end
	 li $v0,5
	 syscall
	 la $t1,x#用t1装入x的首地址
	 sll $t0,$t0,2#计算偏移量
	 add $t1,$t1,$t0#计算准确地址
	 srl $t0,$t0,2#恢复
	 sw $v0,0($t1)#放入数据
	 addi $t0,$t0,1
	 jal for_1_begin
for_1_end:
li $a0,0
addi $a1,$s0,-1#设置好给函数的参数
jal loop

li $t0,0
for_4_begin:
	beq $t0,$s0,for_4_end
	la $t3,x
	sll $t0,$t0,2
	add $t3,$t3,$t0
	srl $t0,$t0,2
	lw $a0,0($t3)
	li $v0,1
	syscall
	
	la $a0,kongge
	li $v0,4
	syscall
	addi $t0,$t0,1
	jal for_4_begin
for_4_end:
jal end

loop:
	sw $ra,0($sp)
	addi $sp,$sp,-4
	move $t1,$a0#t1=i
	move $t2,$a1#t2=j
	
	slt $t3,$t1,$t2
	
	beq $t3,0,loopend
	
	la $t3,x
	sll $t1,$t1,2
	add $t3,$t3,$t1#拿到第一个元素的地址
	srl $t1,$t1,2
	lw $s1,0($t3)#标准数据放在s1中
	
	move $t0,$t1
	for_2_begin:
		addi $t0,$t0,1
		beq $t0,$t2,for_2_end
		la $t3,x
		sll $t0,$t0,2
		add $t3,$t3,$t0
		srl $t0,$t0,2#计算当前数据的地址
		
		lw $s2,0($t3)
		
		slt $t3,$s1,$s2
		beq $t3,1,for_2_end
		
		jal for_2_begin
	for_2_end:
	move $s3,$t0#将此时的i放在s3中
	
	move $t0,$t2
	for_3_begin:
		beq $t0,$t1,for_3_end
		la $t3,x
		sll $t0,$t0,2
		add $t3,$t3,$t0
		srl $t0,$t0,2#计算当前数据的地址
		
		lw $s2,0($t3)
		
		slt $t3,$s2,$s1
		beq $t3,1,for_3_end
		
		addi $t0,$t0,-1
		jal for_3_begin
	for_3_end:
	
	slt $t3,$s3,$t0
	beq $t3,1,if_1_begin
	jal if_1_end
	if_1_begin:
		la $t3,x
		sll $s3,$s3,2
		sll $t0,$t0,2
		add $t4,$t3,$s3#t4中放第一个数的地址
		add $t3,$t3,$t0#t3中放第二个数的地址
		srl $s3,$s3,2
		srl $t0,$t0,2
		
		lw $t5,0($t4)
		lw $t6,0($t3)
		
		sw $t5,0($t3)
		sw $t6,0($t4)#交换数据
		jal for_2_begin
	if_1_end:
	la $t3,x
	sll $t1,$t1,2
	sll $t0,$t0,2
	add $t4,$t3,$t1#t4中放第一个数的地址
	add $t3,$t3,$t0#t3中放第二个数的地址
	srl $t1,$t1,2
	srl $t0,$t0,2
		
	lw $t5,0($t4)
	lw $t6,0($t3)
		
	sw $t5,0($t3)
	sw $t6,0($t4)#交换首数据和j所指的数据
	
	
	
	sw $t1,0($sp)
	addi $sp,$sp,-4#保存左边
	sw $t2,0($sp)
	addi $sp,$sp,-4#保存右边
	sw $t0,0($sp)
	addi $sp,$sp,-4#保存此时的j
	
	move $a0,$t1
	add $a1,$t0,-1#设置好参数
	jal loop
	
	addi $sp,$sp,4
	lw $t0,0($sp)
	addi $sp,$sp,4
	lw $t2,0($sp)
	addi $sp,$sp,4
	lw $t1,0($sp)
	
	add $a0,$t0,1
	move $a1,$t2
	jal loop
		
loopend:
	addi $sp,$sp,4
	lw $ra,0($sp)
	jr $ra
end:
