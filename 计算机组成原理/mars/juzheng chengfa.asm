.data 
juzhen1:.space 256
juzhen2:.space 256
juzhen:.space 256
huiche:.asciiz "\n"
kongge:.asciiz " " 
.text
li $v0,5
syscall#��ȡn
move $s0,$v0#����s0��
mult $s0,$s0
mflo $s1#��s1��ֵn?

li $s2,4#�Ÿ�4����ʱ��

li $t0,0#t0���ڼ���
li $t1,0#t1��ʾĿǰ����
li $t2,0#t2��ʾĿǰ����
for_1_begin:
	beq $t0,$s1,for_1_end#�ж��Ƿ�������ȡ
	la $t3,juzhen1#�õ���һ��������׵�ַ
	mult $t0,$s2
	mflo $t4#�����ʱ�ĵ�ַƫ�ƣ�����t4��
	add $t3,$t3,$t4#�׵�ַ��ƫ����
	
	li $v0,5
	syscall#��ȡ��������
	
	move $t4,$v0#����t4��
	sw $t4,0($t3)#���������
	
	addi $t0,$t0,1#������+1
	jal for_1_begin
for_1_end:

li $t0,0#��������ԭ
for_2_begin:
	beq $t0,$s1,for_2_end#�ж��Ƿ�������ȡ
	la $t3,juzhen2#�õ��ڶ���������׵�ַ
	mult $t0,$s2
	mflo $t4#�����ʱ�ĵ�ַƫ�ƣ�����t4��
	add $t3,$t3,$t4#�׵�ַ��ƫ����
	
	li $v0,5
	syscall#��ȡ��������
	
	move $t4,$v0#����t4��
	sw $t4,0($t3)#���������
	
	addi $t0,$t0,1#������+1
	jal for_2_begin	
for_2_end:
######################################################��������������������¼ȡ
######################################################����t1ΪĿǰ������t2ΪĿǰ����

for_3_begin:
	beq $t1,$s0,for_3_end#�ж��Ƿ񳹵׼������
	li $t3,0#��t3����¼�������
	li $t4,0#��t4����¼���ս��
	for_4_begin:
		beq $t3,$s0,for_4_end#�ж��Ƿ��������
		la $t5,juzhen1#�õ���һ������ĵ�ַ
		mult $t1,$s0
		mflo $t6#�������ƫ�ƣ�ûx4��
		add $t6,$t6,$t3#������ƫ�ƣ�ûx4��
		sll $t6,$t6,2#�������һ�����������ֵ�ƫ��
		add $t5,$t5,$t6#�����׼ȷ��ַ
		lw $s3,0($t5)#����һ�����ݷ���s3��
		
		la $t5,juzhen2#�õ��ڶ�������ĵ�ַ
		mult $t3,$s0
		mflo $t6#�������ƫ�ƣ�ûx4��
		add $t6,$t6,$t2#������ƫ�ƣ�ûx4��
		sll $t6,$t6,2#�������һ�����������ֵ�ƫ��
		add $t5,$t5,$t6#�����׼ȷ��ַ
		lw $s4,0($t5)#���ڶ������ݷ���s4��
		
		mult $s3,$s4
		mflo $s5#�˷�����
		add $t4,$t4,$s5#����t4��
		
		addi $t3,$t3,1
		jal for_4_begin
	for_4_end:
	la $t3,juzhen#�õ����վ�����׵�ַ������t3��
	mult $t1,$s0
	mflo $t5#������ƫ�ƣ�ûx4��
	add $t5,$t5,$t2#������ƫ�ƣ�ûx4��
	sll $t5,$t5,2
	add $t3,$t3,$t5#������յ�ַ
	sw $t4,0($t3)
	
	addi $t2,$t2,1
	beq $t2,$s0,if_1_begin#�ж��Ƿ�����
	jal if_1_end
	if_1_begin:
		li $t2,0
		addi $t1,$t1,1#������,��ԭ�м��������м�������1
	if_1_end:
	jal for_3_begin
for_3_end:
################################################################��������˾���ļ��������룬���濪ʼ���
li $t0,0#t0���ڼ�¼����
li $t1,0#t1���ڼ�¼����
for_5_begin:
	beq $t0,$s1,for_5_end
	la $t2,juzhen#�õ��׵�ַ
	mult $t0,$s2
	mflo $t3#����ƫ����
	add $t2,$t2,$t3#���׼ȷ��ַ
	lw $a0,0($t2)
	li $v0,1
	syscall#��������
	
	la $a0,kongge
	li $v0,4
	syscall#����ո�
	
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
	


