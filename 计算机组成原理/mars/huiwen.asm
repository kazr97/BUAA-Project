.data
x:.space 100
.text
li $v0,5
syscall
move $s0,$v0#����һ������n

li $t0,0#t0���ڼ���
for_1_begin:
	beq $t0,$s0,for_1_end
	
	li $v0,12
	syscall#��ȡһ���ַ�
	sll $t0,$t0,2
	sw $v0,0($t0)#��������
	srl $t0,$t0,2#��ԭt0
	
	addi $t0,$t0,1
	jal for_1_begin
for_1_end:
####################�����������¼ȡ�����濪ʼ�жϻ���
li $t0,0
li $s4,1
srl $s1,$s0,1#��s1��ʾs0��һ��
for_2_begin:
	beq $t0,$s1,for_2_end
	sll $t0,$t0,2#�����ַ
	lw $s2,0($t0)#ȡ������
	srl $t0,$t0,2#�ָ�������
	
	sub $t1,$s0,1
	sub $t1,$t1,$t0
	sll $t1,$t1,2#����ڶ������ĵ�ַ
	lw $s3,0($t1)
	
	
	bne $s2,$s3,if_1_begin#�ж��Ƿ�һ��
	jal if_1_end
	if_1_begin:
		li $s4,0
	if_1_end:
	
	addi $t0,$t0,1#������+1
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
