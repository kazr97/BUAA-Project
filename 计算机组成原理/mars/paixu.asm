.data
x:.space 500
kongge:.asciiz " "
.text


li $v0,5
syscall
move $s0,$v0#����һ������n������s0��

li $t0,0#t0���ڼ���
for_1_begin:
	beq $t0,$s0,for_1_end
	move $t1,$t0#��t1��¼��ʱ���������ں�������
	li $v0,5
	syscall#����һ������
	la $t2,x#�õ������׵�ַ
	sll $t1,$t1,2#����ƫ����
	add $t2,$t2,$t1#�õ���ַ
	sw $v0,0($t2)#��������
	addi $t0,$t0,1#��������1
	jal for_1_begin
for_1_end:
#################################�����������¼��
li $t0,0#t0���ڼ�¼λ��
for_2_begin:
	beq $t0,$s0,for_2_end#�ж��Ƿ����ѭ��
	addi $t1,$t0,1#��t1��¼��һ��ѭ��
	move $t2,$t0#��t2��¼��С������λ�ã���ʼλ��Ϊ��ʱt0��ֵ
	la $t3,x#�õ������׵�ַ
	sll $t0,$t0,2#����ƫ����
	add $t4,$t3,$t0#������ʵ��ַ
	srl $t0,$t0,2#�ָ�t0
	lw $s1,0($t4)#t4Ϊ��ʱ�Ƚ����ݵĵ�ַ������������������
	for_3_begin:
		beq $t1,$s0,for_3_end#�ж��Ƿ����ѭ�� 
		sll $t1,$t1,2
		add $t5,$t3,$t1#����ʱ���ݵĵ�ַ
		srl $t1,$t1,2#�ָ�t1
		lw $s2,0($t5)#t5Ϊ��ʱ�Ƚ����ݵĵ�ַ����������������
		slt $t4,$s2,$s1	
		beq $t4,1,if_1_begin
		jal if_1_end
		if_1_begin:
			move $t2,$t1#����Сλ�ø�Ϊt1��ֵ
			move $s1,$s2#��Сֵ����
		if_1_end:
		addi $t1,$t1,1#��������1
		jal for_3_begin	
	for_3_end:	
	la $t3,x#�õ������׵�ַ
	sll $t0,$t0,2#����ƫ����
	add $t4,$t3,$t0#������ʵ��ַ
	srl $t0,$t0,2#�ָ�t0
	lw $s2,0($t4)#t4Ϊ��ʱ�Ƚ����ݵĵ�ַ������������������
	
	sll $t2,$t2,2
	add $t5,$t3,$t2#�����С���ĵ�ַ������t5�У���������
	srl $t2,$t2,2
		
	sw $s1,0($t4)
	sw $s2,0($t5)#��������
	
	addi $t0,$t0,1
	jal for_2_begin
for_2_end:
###############################������������������
li $t0,0#���ڼ���
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
				
							
										
																