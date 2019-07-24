.data
symbol:.space 100
array:.space 100
kongge:.asciiz " "
huiche:.asciiz "\n"
.text

li $s6,0
li $s7,1

li $v0,5
syscall
move $s0,$v0#读取一个整数n，放在s0中

li $a0,0
jal loop

jal end


loop:
	sw $ra,0($sp)#保存返回地址
	addi $sp,$sp,-4
	move $s1,$a0#传输参数，用s1记录目前的index
	beq $s1,$s0,if_1_begin#判断是否输出
	
	li $t0,0#t0用于计数
	for_2_begin:
		beq $t0,$s0,for_2_end
		la $t1,symbol
		sll $t0,$t0,2
		add $t1,$t1,$t0#算出此时的symbol地址
		srl $t0,$t0,2#恢复计数器
		lw $t2,0($t1)#拿到此时的symbol值
		beq $t2,0,if_2_begin
		
		jal if_2_end
		if_2_begin:
			la $t2,array
			sll $s1,$s1,2
			add $t2,$t2,$s1#拿到此时该位置的地址
			srl $s1,$s1,2#恢复位置记录器
			addi $t0,$t0,1
			sw $t0,0($t2)#将数字存在指定位置
			addi $t0,$t0,-1#将t0复原
			
			
			sw $s7,0($t1)#将该数字的symbol标为1
			
			sw $t0,0($sp)
			addi $sp,$sp,-4#将目前的t0，即i存入栈中
			li $t0,0#为下一层更新好t0
			
			
			sw $t1,0($sp)
			addi $sp,$sp,-4#将目前symbol的地址存入栈中
			
			addi $a0,$s1,1#为下一级存入index+1
	
			jal loop
			addi $s1,$s1,-1#恢复s1
			
			addi $sp,$sp,4
			lw $t1,0($sp)#取回symbol的地址
			
			addi $sp,$sp,4
			lw $t0,0($sp)#取回t0
			
			sw $s6,0($t1)#将symbol标为0
		if_2_end:
		addi $t0,$t0,1
		jal for_2_begin
	for_2_end:
													
	jal if_1_end
	if_1_begin:
		li $t0,0#用a1用于计数
		for_1_begin:
			beq $t0,$s0,for_1_end#判断是否跳出
			la $t1,array
			sll $t0,$t0,2
			add $t1,$t1,$t0#计算出输出数据确切地址
			srl $t0,$t0,2#恢复计数器
			lw $a0,0($t1)
			li $v0,1
			syscall#输出该数
			
			la $a0,kongge
			li $v0,4
			syscall#输出空格
			
			addi $t0,$t0,1
			jal for_1_begin
		for_1_end:
		la $a0,huiche
		li $v0,4
		syscall#输出回车
	if_1_end:
	
	addi $sp,$sp,4
	lw $ra,0($sp)
	jr $ra
end: