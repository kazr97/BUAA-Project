.data
fibs:.space 1500
hang:.space 1500
lie:.space 1500
space:.asciiz " " 
enter:.asciiz "\n" 
.text
li $v0 5
syscall
move $s0,$v0#读取第一个数n（行），放在s0里
li $v0,5
syscall
move $s1,$v0#读取第一个数m（列），放在s1里

mult $s0,$s1
mflo $s2#s2中存放个数

li $t4,1#t4记录行数
li $t5,0#t5记录列数
li $s4,4#就是放个4hhhh

li $t0,0#用t0来计数
li $s5,0
loop:	
	slt $t1,$s5,$s2#判断是否读取完毕
	beq $t1,0,endloop#若读取完毕则跳出循环
	
	li $v0,5
	syscall#读取一个数
	move $t3,$v0#放入t3中
	
	mult $t0,$s4#计算此时的偏移量
	mflo $t6#放在t6中
	la $t7,fibs#得到fibs的首地址
	add $t6,$t6,$t7#计算此时的首地址，放在t6中
	
	beq $t3,0,if1#判断是否为0
	sw $t3,0($t6)#将读入的数传进指定位置
	
	slt $t1,$t5,$s1 #判断列数是否已满，若满t1为0
	beq $t1,1,if_2_else
	li $t5,1
	addi $t4,$t4,1#若满，列数变为1，行数加一
	jal endif_2_else
	if_2_else:
		addi $t5,$t5,1
	endif_2_else:
	mflo $t6#将放在t6里
	la $t7,lie#得到lie的首地址
	add $t6,$t6,$t7#计算此时列数组的首地址，放在t6中
	sw $t5,0($t6)#存入数据
	
	mflo $t6#放在t6里
	la $t7,hang#得到hang的首地址
	add $t6,$t6,$t7#计算此时行数组的首地址，放在t6中
	sw $t4,0($t6)#存入数据
	
	addi $t0,$t0,1
	if1:
	addi $s5,$s5,1
	jal loop
endloop:
addi $t0,$t0,-1
loop2:	
	beq $t0,-1,endloop2
	
	mult $t0,$s4#计算偏移量
	mflo $t6#放在t6里
	la $t7,fibs#得到fibs的首地址
	add $t6,$t6,$t7#计算最后一个元素的地址，放在t6里
	lw $t5,0($t6)#读取这个数
	move $a0,$t5
	li $v0,1
	syscall#输出这个数
	
	la $a0,space
	li $v0,4
	syscall#输出空格
	
	mflo $t6#偏移量放在t6里
	la $t7,hang#得到hang的首地址
	add $t6,$t6,$t7#计算最后一个元素的行地址，放在t6里
	lw $t5,0($t6)#读取这个数
	move $a0,$t5
	li $v0,1
	syscall#输出行数
	
	la $a0,space
	li $v0,4
	syscall#输出空格
	
	mflo $t6#偏移量放在t6里
	la $t7,lie#得到lie的首地址
	add $t6,$t6,$t7#计算最后一个元素的列地址，放在t6里
	lw $t5,0($t6)#读取这个数
	move $a0,$t5
	li $v0,1
	syscall#输出列数
	
	la $a0,enter
	li $v0,4
	syscall#输出换行
	addi $t0,$t0,-1
	jal loop2
endloop2:

	
	
