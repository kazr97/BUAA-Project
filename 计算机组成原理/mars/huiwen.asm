.data
x:.space 100
.text
li $v0,5
syscall
move $s0,$v0#读入一个整数n

li $t0,0#t0用于计数
for_1_begin:
	beq $t0,$s0,for_1_end
	
	li $v0,12
	syscall#读取一个字符
	sll $t0,$t0,2
	sw $v0,0($t0)#存入数组
	srl $t0,$t0,2#还原t0
	
	addi $t0,$t0,1
	jal for_1_begin
for_1_end:
####################以上完成数据录取，下面开始判断回文
li $t0,0
li $s4,1
srl $s1,$s0,1#用s1表示s0的一半
for_2_begin:
	beq $t0,$s1,for_2_end
	sll $t0,$t0,2#计算地址
	lw $s2,0($t0)#取出数据
	srl $t0,$t0,2#恢复计数器
	
	sub $t1,$s0,1
	sub $t1,$t1,$t0
	sll $t1,$t1,2#计算第二个数的地址
	lw $s3,0($t1)
	
	
	bne $s2,$s3,if_1_begin#判断是否一致
	jal if_1_end
	if_1_begin:
		li $s4,0
	if_1_end:
	
	addi $t0,$t0,1#计数器+1
	jal for_2_begin
for_2_end:

beq $s4,1,if_2_begin
li $a0,0
li $v0,1
syscall
jal if_2_end
if_2_begin:
	li $a0,1
	li $v0,1
	syscall
if_2_end:
