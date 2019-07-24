.data 
juzhen1:.space 256
juzhen2:.space 256
juzhen:.space 256
huiche:.asciiz "\n"
kongge:.asciiz " " 
.text
li $v0,5
syscall#读取n
move $s0,$v0#放在s0里
mult $s0,$s0
mflo $s1#给s1赋值n?

li $s2,4#放个4，随时用

li $t0,0#t0用于计数
li $t1,0#t1表示目前行数
li $t2,0#t2表示目前列数
for_1_begin:
	beq $t0,$s1,for_1_end#判断是否跳出读取
	la $t3,juzhen1#得到第一个矩阵的首地址
	mult $t0,$s2
	mflo $t4#计算此时的地址偏移，放在t4中
	add $t3,$t3,$t4#首地址加偏移量
	
	li $v0,5
	syscall#读取输入数据
	
	move $t4,$v0#放在t4中
	sw $t4,0($t3)#放入矩阵中
	
	addi $t0,$t0,1#计数器+1
	jal for_1_begin
for_1_end:

li $t0,0#计数器复原
for_2_begin:
	beq $t0,$s1,for_2_end#判断是否跳出读取
	la $t3,juzhen2#得到第二个矩阵的首地址
	mult $t0,$s2
	mflo $t4#计算此时的地址偏移，放在t4中
	add $t3,$t3,$t4#首地址加偏移量
	
	li $v0,5
	syscall#读取输入数据
	
	move $t4,$v0#放在t4中
	sw $t4,0($t3)#放入矩阵中
	
	addi $t0,$t0,1#计数器+1
	jal for_2_begin	
for_2_end:
######################################################以上完成两个矩阵的数据录取
######################################################以下t1为目前行数，t2为目前列数

for_3_begin:
	beq $t1,$s0,for_3_end#判断是否彻底计算完毕
	li $t3,0#用t3来记录运算次数
	li $t4,0#用t4来记录最终结果
	for_4_begin:
		beq $t3,$s0,for_4_end#判断是否运算完毕
		la $t5,juzhen1#拿到第一个矩阵的地址
		mult $t1,$s0
		mflo $t6#计算出行偏移（没x4）
		add $t6,$t6,$t3#加上列偏移（没x4）
		sll $t6,$t6,2#计算出第一个矩阵中数字的偏移
		add $t5,$t5,$t6#计算出准确地址
		lw $s3,0($t5)#将第一个数据放在s3中
		
		la $t5,juzhen2#拿到第二个矩阵的地址
		mult $t3,$s0
		mflo $t6#计算出行偏移（没x4）
		add $t6,$t6,$t2#加上列偏移（没x4）
		sll $t6,$t6,2#计算出第一个矩阵中数字的偏移
		add $t5,$t5,$t6#计算出准确地址
		lw $s4,0($t5)#将第二个数据放在s4中
		
		mult $s3,$s4
		mflo $s5#乘法运算
		add $t4,$t4,$s5#计入t4中
		
		addi $t3,$t3,1
		jal for_4_begin
	for_4_end:
	la $t3,juzhen#拿到最终矩阵的首地址，放在t3中
	mult $t1,$s0
	mflo $t5#计算行偏移（没x4）
	add $t5,$t5,$t2#加上列偏移（没x4）
	sll $t5,$t5,2
	add $t3,$t3,$t5#算出最终地址
	sw $t4,0($t3)
	
	addi $t2,$t2,1
	beq $t2,$s0,if_1_begin#判断是否满列
	jal if_1_end
	if_1_begin:
		li $t2,0
		addi $t1,$t1,1#若满列,还原列计数器，行计数器加1
	if_1_end:
	jal for_3_begin
for_3_end:
################################################################以上完成了矩阵的计算与输入，下面开始输出
li $t0,0#t0用于记录总数
li $t1,0#t1用于记录列数
for_5_begin:
	beq $t0,$s1,for_5_end
	la $t2,juzhen#拿到首地址
	mult $t0,$s2
	mflo $t3#计算偏移量
	add $t2,$t2,$t3#算出准确地址
	lw $a0,0($t2)
	li $v0,1
	syscall#输出这个数
	
	la $a0,kongge
	li $v0,4
	syscall#输出空格
	
	addi $t0,$t0,1
	addi $t1,$t1,1
	
	beq $t1,$s0,if_2_begin
	jal if_2_end
	
	if_2_begin:
		li $t1,0
		la $a0,huiche
		li $v0,4
		syscall
	if_2_end:
	jal for_5_begin
for_5_end:
	


