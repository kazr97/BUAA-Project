.data
x:.space 500
kongge:.asciiz " "
.text


li $v0,5
syscall
move $s0,$v0#读入一个整数n，放在s0里

li $t0,0#t0用于计数
for_1_begin:
	beq $t0,$s0,for_1_end
	move $t1,$t0#用t1记录此时计数，用于后续计算
	li $v0,5
	syscall#读入一个整数
	la $t2,x#拿到数组首地址
	sll $t1,$t1,2#计算偏移量
	add $t2,$t2,$t1#拿到地址
	sw $v0,0($t2)#存入数据
	addi $t0,$t0,1#计数器加1
	jal for_1_begin
for_1_end:
#################################以上完成数据录入
li $t0,0#t0用于记录位置
for_2_begin:
	beq $t0,$s0,for_2_end#判断是否结束循环
	addi $t1,$t0,1#用t1记录下一次循环
	move $t2,$t0#用t2记录最小的数据位置，初始位置为此时t0的值
	la $t3,x#拿到数组首地址
	sll $t0,$t0,2#计算偏移量
	add $t4,$t3,$t0#计算真实地址
	srl $t0,$t0,2#恢复t0
	lw $s1,0($t4)#t4为此时比较数据的地址！！！！！！！！！
	for_3_begin:
		beq $t1,$s0,for_3_end#判断是否结束循环 
		sll $t1,$t1,2
		add $t5,$t3,$t1#到此时数据的地址
		srl $t1,$t1,2#恢复t1
		lw $s2,0($t5)#t5为此时比较数据的地址！！！！！！！！
		slt $t4,$s2,$s1	
		beq $t4,1,if_1_begin
		jal if_1_end
		if_1_begin:
			move $t2,$t1#将最小位置改为t1的值
			move $s1,$s2#最小值更新
		if_1_end:
		addi $t1,$t1,1#计数器加1
		jal for_3_begin	
	for_3_end:	
	la $t3,x#拿到数组首地址
	sll $t0,$t0,2#计算偏移量
	add $t4,$t3,$t0#计算真实地址
	srl $t0,$t0,2#恢复t0
	lw $s2,0($t4)#t4为此时比较数据的地址！！！！！！！！！
	
	sll $t2,$t2,2
	add $t5,$t3,$t2#计算较小数的地址，放在t5中！！！！！
	srl $t2,$t2,2
		
	sw $s1,0($t4)
	sw $s2,0($t5)#交换数据
	
	addi $t0,$t0,1
	jal for_2_begin
for_2_end:
###############################以上完成排序，下面输出
li $t0,0#用于计数
for_4_begin:
	beq $t0,$s0,for_4_end
	la $t1,x
	sll $t0,$t0,2
	add $t2,$t0,$t1
	lw $a0,0($t2)
	li $v0,1
	syscall
	srl $t0,$t0,2
	
	la $a0,kongge
	li $v0,4
	syscall
	
	addi $t0,$t0,1
	jal for_4_begin
for_4_end:
				
							
										
																