.data
fibs:.space 1500
hang:.space 1500
lie:.space 1500
space:.asciiz " " 
enter:.asciiz "\n" 
.text
li $v0 5
syscall
move $s0,$v0#��ȡ��һ����n���У�������s0��
li $v0,5
syscall
move $s1,$v0#��ȡ��һ����m���У�������s1��

mult $s0,$s1
mflo $s2#s2�д�Ÿ���

li $t4,1#t4��¼����
li $t5,0#t5��¼����
li $s4,4#���ǷŸ�4hhhh

li $t0,0#��t0������
li $s5,0
loop:	
	slt $t1,$s5,$s2#�ж��Ƿ��ȡ���
	beq $t1,0,endloop#����ȡ���������ѭ��
	
	li $v0,5
	syscall#��ȡһ����
	move $t3,$v0#����t3��
	
	mult $t0,$s4#�����ʱ��ƫ����
	mflo $t6#����t6��
	la $t7,fibs#�õ�fibs���׵�ַ
	add $t6,$t6,$t7#�����ʱ���׵�ַ������t6��
	
	beq $t3,0,if1#�ж��Ƿ�Ϊ0
	sw $t3,0($t6)#�������������ָ��λ��
	
	slt $t1,$t5,$s1 #�ж������Ƿ�����������t1Ϊ0
	beq $t1,1,if_2_else
	li $t5,1
	addi $t4,$t4,1#������������Ϊ1��������һ
	jal endif_2_else
	if_2_else:
		addi $t5,$t5,1
	endif_2_else:
	mflo $t6#������t6��
	la $t7,lie#�õ�lie���׵�ַ
	add $t6,$t6,$t7#�����ʱ��������׵�ַ������t6��
	sw $t5,0($t6)#��������
	
	mflo $t6#����t6��
	la $t7,hang#�õ�hang���׵�ַ
	add $t6,$t6,$t7#�����ʱ��������׵�ַ������t6��
	sw $t4,0($t6)#��������
	
	addi $t0,$t0,1
	if1:
	addi $s5,$s5,1
	jal loop
endloop:
addi $t0,$t0,-1
loop2:	
	beq $t0,-1,endloop2
	
	mult $t0,$s4#����ƫ����
	mflo $t6#����t6��
	la $t7,fibs#�õ�fibs���׵�ַ
	add $t6,$t6,$t7#�������һ��Ԫ�صĵ�ַ������t6��
	lw $t5,0($t6)#��ȡ�����
	move $a0,$t5
	li $v0,1
	syscall#��������
	
	la $a0,space
	li $v0,4
	syscall#����ո�
	
	mflo $t6#ƫ��������t6��
	la $t7,hang#�õ�hang���׵�ַ
	add $t6,$t6,$t7#�������һ��Ԫ�ص��е�ַ������t6��
	lw $t5,0($t6)#��ȡ�����
	move $a0,$t5
	li $v0,1
	syscall#�������
	
	la $a0,space
	li $v0,4
	syscall#����ո�
	
	mflo $t6#ƫ��������t6��
	la $t7,lie#�õ�lie���׵�ַ
	add $t6,$t6,$t7#�������һ��Ԫ�ص��е�ַ������t6��
	lw $t5,0($t6)#��ȡ�����
	move $a0,$t5
	li $v0,1
	syscall#�������
	
	la $a0,enter
	li $v0,4
	syscall#�������
	addi $t0,$t0,-1
	jal loop2
endloop2:

	
	
