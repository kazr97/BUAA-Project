.data
one:.space 40
two:.space 40
three:.space 40
four:.space 40
five:.space 40
six:.space 40
seven:.space 40
eight:.space 40
number:.space 40
.text
main:
	li $s7,40#s7=40
	li $s6,4#s6=4
	li $s5,0#放个0，随时用
	li $s4,1#放个1，随时用
	li $v0,5
	syscall
	move $s0,$v0#读取一个整数n，放在s0中
	li $v0,5
	syscall
	move $s1,$v0#读取一个整数m，放在s1中
	li $t0,0#t0用于计数
	for_1_begin:#循环读入存在的边
		beq $t0,$s1,for_1_end 
		li $v0,5
		syscall
		move $t1,$v0#读取一个整数n，放在t1中
		li $v0,5
		syscall
		move $t2,$v0#读取一个整数n，放在t2中
		
		addi $t1,$t1,-1
		mult $s7,$t1#其中，s7=40
		mflo $t3#得到第一个数对应数组的首地址
		addi $t2,$t2,-1
		mult $s6,$t2#其中s6=4
		mflo $t4#得到第二个数相对于第一个数的偏移量
		add $t3,$t3,$t4#计算出第二个数在第一个数的数组中的具体地址
		sw $s4,0($t3)#将第二个数放入（s4=1）
		
		mult $s7,$t2#其中，s7=40
		mflo $t3#得到第二个数对应数组的首地址
		mult $s6,$t1#其中s6=4
		mflo $t4#得到第一个数相对于第一个数的偏移量
		add $t3,$t3,$t4#计算出第一个数在第二个数的数组中的具体地址
		sw $s4,0($t3)#将第一个数放入（s4=1）
		
		addi $t0,$t0,1#给计数器加一
		jal for_1_begin
	for_1_end:#以上完成了数据的录入!
	li $a0,1
	jal loop
	move $t0,$v1
	beq $t0,1 printf1
	li $a0,0
	li $v0,1
	syscall
	jal end
	printf1:
		li $a0,1
		li $v0,1
		syscall
	jal end
########################################################################################################	
#传入参数中，a0代表number，即此时这个数，
loop:
	move $t5,$a0#接住上一级传来的参数a0，放在t5中，即为目前点的数值
	sw $ra,0($sp)
	subi $sp,$sp,4#存储返回地址
	
	li $t0,0#t0用于计数
	la $t1,number#得到记录数组的首地址,放入t1
	li $t4,1#以t4作为查找number数组时的记录，若全走遍记为0，有没走的记为1
	li $t7,0#==b
	li $t8,0#==c
	
	
	
	for_2_begin:#判断是否遍历完所有的点
		beq $t0,$s0,for_2_end
		mult $t0,$s6
		mflo $t2#计算偏移量，放入t2中
		add $t1,$t1,$t2#算出准确地址，返回到t1
		lw $t3,0($t1)#加载此处的数字，放入t3
		beq $t3,0 if_1_begin
		jal if_1_end	
		if_1_begin:
			li $t4 0
		if_1_end:#若有空缺，则给t4赋值0
		addi $t0,$t0,1#给t0加一
		sub $t1,$t1,$t2
		jal for_2_begin
	for_2_end:
	if_2_begin:#判断点是否走满，走满则t4为1
		beq $t4 1 if_3_begin
		jal if_3_end
		if_3_begin:
			beq $t5,1,if_a_begin#若此时在点1，且所有点都走过了，则返回1
			jal if_a_end
			if_a_begin:
				li $v1,1
				addi $sp,$sp,4#取回返回地址
				lw $ra,0($sp)
				jr $31
			if_a_end:
		if_3_end:
	if_2_end:
	#t5为此时的数
	li $t0,0#还原t0用于计数
	for_3_begin:
		beq $t0,$s0 for_3_end#判断是否跳出循环
		addi $t5,$t5,-1
		mult $t5,$s7
		mflo $t1#计算出此时数字对应数组的首地址，放在t1
		addi $t5,$t5,1#还原数据
		la $t4,number#读取记录数组的首地址，放在t4
		mult $t0,$s6
		mflo $t2#计算此时的偏移量，放在t2
		add $t1,$t1,$t2#得到目前数字对应数组中，此时位置数据的地址
		move $a2,$t1#把此时的地址保存在a2中（瞎JB胡搞）	
		sub $t1,$t1,$t2
		lw $t3,0($a2)#读取该数
		beq $t3 1 if_4_begin#判断两点间是否有连线
			jal if_4_end
			if_4_begin:
				add $t4,$t4,$t2#给记录数组首地址加上偏移量
				lw $t6,0($t4)#取出此处的值，放在t6
				move $a3,$t4#把此时的地址保存在a3中（瞎JB胡搞）			
				beq $t6,0 if_5_begin#判断去往的下一个点是否可用
				jal if_5_end
				#s5=0
				if_5_begin:
					li $t7,1
					sw $s4,0($t4)#将该点标为已走
					sw $s5,0($a2)#将该条路清除
					mult $t0,$s7#计算另一个点对应数组的首地址
					mflo $t3#放在t3中
					addi $t5,$t5,-1
					mult $t5,$s6#计算偏移量
					addi $t5,$t5,1#还原数据
					mflo $t2#计算第一个数相对于第二个数的偏移量，放在t2
					add $t3,$t3,$t2#更新实际地址
					sw $s5,0($t3)
					#接下来开始保护数据,三个地址
					sw $a2,0($sp)
					subi $sp,$sp,4#存储第二个数，相对于第一个数对应数组的地址
					sw $a3,0($sp)
					subi $sp,$sp,4#记录数组的地址
					sw $t3,0($sp)
					subi $sp,$sp,4#存储第一个数，相对于第二个数对应数组的地址
					sw $t0,0($sp)
					subi $sp,$sp,4#存储此时的t0，用于之后循环
					sw $t5,0($sp)
					subi $sp,$sp,4#存储此时的t5，用于之后循环
					
					addi $t0,$t0,1
					move $a0,$t0#给下一次循环给初值
					jal loop
					
					addi $sp,$sp,4#取回t5
					lw $t5,0($sp)
					addi $sp,$sp,4#取回t0
					lw $t0,0($sp)
					addi $sp,$sp,4#取回存储第一个数，相对于第二个数对应数组的地址
					lw $t1,0($sp)
					addi $sp,$sp,4#取出记录数组的地址
					lw $t2,0($sp)
					addi $sp,$sp,4#取出存储第二个数，相对于第一个数对应数组的地址
					lw $t3,0($sp)
					
					move $t8,$v1#用t8接住上一个函数的返回值
					beq $t8 1 if_6_begin
					jal if_6_end
					if_6_begin:
						li $v1,1
						addi $sp,$sp,4#取出返回地址
						lw $ra,0($sp)
						jr $31
					if_6_end:
					
					sw $s4,0($t1)
					sw $s5,0($t2)
					sw $s4,0($t3)#走死了，返回上一个点
				if_5_end:
			if_4_end:
		addi $t0,$t0,1
		jal for_3_begin
	for_3_end:
	beq $t7,0,if_7_begin
	jal if_7_end
	if_7_begin:
		addi $sp,$sp,4#取回返回地址
		lw $ra,0($sp)
		li $v1,0
		jr $31
	if_7_end:
end:
