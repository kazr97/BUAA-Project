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
	li $s5,0#�Ÿ�0����ʱ��
	li $s4,1#�Ÿ�1����ʱ��
	li $v0,5
	syscall
	move $s0,$v0#��ȡһ������n������s0��
	li $v0,5
	syscall
	move $s1,$v0#��ȡһ������m������s1��
	li $t0,0#t0���ڼ���
	for_1_begin:#ѭ��������ڵı�
		beq $t0,$s1,for_1_end 
		li $v0,5
		syscall
		move $t1,$v0#��ȡһ������n������t1��
		li $v0,5
		syscall
		move $t2,$v0#��ȡһ������n������t2��
		
		addi $t1,$t1,-1
		mult $s7,$t1#���У�s7=40
		mflo $t3#�õ���һ������Ӧ������׵�ַ
		addi $t2,$t2,-1
		mult $s6,$t2#����s6=4
		mflo $t4#�õ��ڶ���������ڵ�һ������ƫ����
		add $t3,$t3,$t4#������ڶ������ڵ�һ�����������еľ����ַ
		sw $s4,0($t3)#���ڶ��������루s4=1��
		
		mult $s7,$t2#���У�s7=40
		mflo $t3#�õ��ڶ�������Ӧ������׵�ַ
		mult $s6,$t1#����s6=4
		mflo $t4#�õ���һ��������ڵ�һ������ƫ����
		add $t3,$t3,$t4#�������һ�����ڵڶ������������еľ����ַ
		sw $s4,0($t3)#����һ�������루s4=1��
		
		addi $t0,$t0,1#����������һ
		jal for_1_begin
	for_1_end:#������������ݵ�¼��!
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
#��������У�a0����number������ʱ�������
loop:
	move $t5,$a0#��ס��һ�������Ĳ���a0������t5�У���ΪĿǰ�����ֵ
	sw $ra,0($sp)
	subi $sp,$sp,4#�洢���ص�ַ
	
	li $t0,0#t0���ڼ���
	la $t1,number#�õ���¼������׵�ַ,����t1
	li $t4,1#��t4��Ϊ����number����ʱ�ļ�¼����ȫ�߱��Ϊ0����û�ߵļ�Ϊ1
	li $t7,0#==b
	li $t8,0#==c
	
	
	
	for_2_begin:#�ж��Ƿ���������еĵ�
		beq $t0,$s0,for_2_end
		mult $t0,$s6
		mflo $t2#����ƫ����������t2��
		add $t1,$t1,$t2#���׼ȷ��ַ�����ص�t1
		lw $t3,0($t1)#���ش˴������֣�����t3
		beq $t3,0 if_1_begin
		jal if_1_end	
		if_1_begin:
			li $t4 0
		if_1_end:#���п�ȱ�����t4��ֵ0
		addi $t0,$t0,1#��t0��һ
		sub $t1,$t1,$t2
		jal for_2_begin
	for_2_end:
	if_2_begin:#�жϵ��Ƿ�������������t4Ϊ1
		beq $t4 1 if_3_begin
		jal if_3_end
		if_3_begin:
			beq $t5,1,if_a_begin#����ʱ�ڵ�1�������е㶼�߹��ˣ��򷵻�1
			jal if_a_end
			if_a_begin:
				li $v1,1
				addi $sp,$sp,4#ȡ�ط��ص�ַ
				lw $ra,0($sp)
				jr $31
			if_a_end:
		if_3_end:
	if_2_end:
	#t5Ϊ��ʱ����
	li $t0,0#��ԭt0���ڼ���
	for_3_begin:
		beq $t0,$s0 for_3_end#�ж��Ƿ�����ѭ��
		addi $t5,$t5,-1
		mult $t5,$s7
		mflo $t1#�������ʱ���ֶ�Ӧ������׵�ַ������t1
		addi $t5,$t5,1#��ԭ����
		la $t4,number#��ȡ��¼������׵�ַ������t4
		mult $t0,$s6
		mflo $t2#�����ʱ��ƫ����������t2
		add $t1,$t1,$t2#�õ�Ŀǰ���ֶ�Ӧ�����У���ʱλ�����ݵĵ�ַ
		move $a2,$t1#�Ѵ�ʱ�ĵ�ַ������a2�У�ϹJB���㣩	
		sub $t1,$t1,$t2
		lw $t3,0($a2)#��ȡ����
		beq $t3 1 if_4_begin#�ж�������Ƿ�������
			jal if_4_end
			if_4_begin:
				add $t4,$t4,$t2#����¼�����׵�ַ����ƫ����
				lw $t6,0($t4)#ȡ���˴���ֵ������t6
				move $a3,$t4#�Ѵ�ʱ�ĵ�ַ������a3�У�ϹJB���㣩			
				beq $t6,0 if_5_begin#�ж�ȥ������һ�����Ƿ����
				jal if_5_end
				#s5=0
				if_5_begin:
					li $t7,1
					sw $s4,0($t4)#���õ��Ϊ����
					sw $s5,0($a2)#������·���
					mult $t0,$s7#������һ�����Ӧ������׵�ַ
					mflo $t3#����t3��
					addi $t5,$t5,-1
					mult $t5,$s6#����ƫ����
					addi $t5,$t5,1#��ԭ����
					mflo $t2#�����һ��������ڵڶ�������ƫ����������t2
					add $t3,$t3,$t2#����ʵ�ʵ�ַ
					sw $s5,0($t3)
					#��������ʼ��������,������ַ
					sw $a2,0($sp)
					subi $sp,$sp,4#�洢�ڶ�����������ڵ�һ������Ӧ����ĵ�ַ
					sw $a3,0($sp)
					subi $sp,$sp,4#��¼����ĵ�ַ
					sw $t3,0($sp)
					subi $sp,$sp,4#�洢��һ����������ڵڶ�������Ӧ����ĵ�ַ
					sw $t0,0($sp)
					subi $sp,$sp,4#�洢��ʱ��t0������֮��ѭ��
					sw $t5,0($sp)
					subi $sp,$sp,4#�洢��ʱ��t5������֮��ѭ��
					
					addi $t0,$t0,1
					move $a0,$t0#����һ��ѭ������ֵ
					jal loop
					
					addi $sp,$sp,4#ȡ��t5
					lw $t5,0($sp)
					addi $sp,$sp,4#ȡ��t0
					lw $t0,0($sp)
					addi $sp,$sp,4#ȡ�ش洢��һ����������ڵڶ�������Ӧ����ĵ�ַ
					lw $t1,0($sp)
					addi $sp,$sp,4#ȡ����¼����ĵ�ַ
					lw $t2,0($sp)
					addi $sp,$sp,4#ȡ���洢�ڶ�����������ڵ�һ������Ӧ����ĵ�ַ
					lw $t3,0($sp)
					
					move $t8,$v1#��t8��ס��һ�������ķ���ֵ
					beq $t8 1 if_6_begin
					jal if_6_end
					if_6_begin:
						li $v1,1
						addi $sp,$sp,4#ȡ�����ص�ַ
						lw $ra,0($sp)
						jr $31
					if_6_end:
					
					sw $s4,0($t1)
					sw $s5,0($t2)
					sw $s4,0($t3)#�����ˣ�������һ����
				if_5_end:
			if_4_end:
		addi $t0,$t0,1
		jal for_3_begin
	for_3_end:
	beq $t7,0,if_7_begin
	jal if_7_end
	if_7_begin:
		addi $sp,$sp,4#ȡ�ط��ص�ַ
		lw $ra,0($sp)
		li $v1,0
		jr $31
	if_7_end:
end:
