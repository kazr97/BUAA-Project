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
move $s0,$v0#��ȡһ������n������s0��

li $a0,0
jal loop

jal end


loop:
	sw $ra,0($sp)#���淵�ص�ַ
	addi $sp,$sp,-4
	move $s1,$a0#�����������s1��¼Ŀǰ��index
	beq $s1,$s0,if_1_begin#�ж��Ƿ����
	
	li $t0,0#t0���ڼ���
	for_2_begin:
		beq $t0,$s0,for_2_end
		la $t1,symbol
		sll $t0,$t0,2
		add $t1,$t1,$t0#�����ʱ��symbol��ַ
		srl $t0,$t0,2#�ָ�������
		lw $t2,0($t1)#�õ���ʱ��symbolֵ
		beq $t2,0,if_2_begin
		
		jal if_2_end
		if_2_begin:
			la $t2,array
			sll $s1,$s1,2
			add $t2,$t2,$s1#�õ���ʱ��λ�õĵ�ַ
			srl $s1,$s1,2#�ָ�λ�ü�¼��
			addi $t0,$t0,1
			sw $t0,0($t2)#�����ִ���ָ��λ��
			addi $t0,$t0,-1#��t0��ԭ
			
			
			sw $s7,0($t1)#�������ֵ�symbol��Ϊ1
			
			sw $t0,0($sp)
			addi $sp,$sp,-4#��Ŀǰ��t0����i����ջ��
			li $t0,0#Ϊ��һ����º�t0
			
			
			sw $t1,0($sp)
			addi $sp,$sp,-4#��Ŀǰsymbol�ĵ�ַ����ջ��
			
			addi $a0,$s1,1#Ϊ��һ������index+1
	
			jal loop
			addi $s1,$s1,-1#�ָ�s1
			
			addi $sp,$sp,4
			lw $t1,0($sp)#ȡ��symbol�ĵ�ַ
			
			addi $sp,$sp,4
			lw $t0,0($sp)#ȡ��t0
			
			sw $s6,0($t1)#��symbol��Ϊ0
		if_2_end:
		addi $t0,$t0,1
		jal for_2_begin
	for_2_end:
													
	jal if_1_end
	if_1_begin:
		li $t0,0#��a1���ڼ���
		for_1_begin:
			beq $t0,$s0,for_1_end#�ж��Ƿ�����
			la $t1,array
			sll $t0,$t0,2
			add $t1,$t1,$t0#������������ȷ�е�ַ
			srl $t0,$t0,2#�ָ�������
			lw $a0,0($t1)
			li $v0,1
			syscall#�������
			
			la $a0,kongge
			li $v0,4
			syscall#����ո�
			
			addi $t0,$t0,1
			jal for_1_begin
		for_1_end:
		la $a0,huiche
		li $v0,4
		syscall#����س�
	if_1_end:
	
	addi $sp,$sp,4
	lw $ra,0($sp)
	jr $ra
end: