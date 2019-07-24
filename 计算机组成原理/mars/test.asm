.data
.text
ori $a0,$0,2
ori $a1,$a0,456#≤‚ ‘ori

lui $a2,123
lui $a3,0xffff
ori $a3,$a3,0xffff#≤‚ ‘lui

addu $s0,$a0,$a2
addu $s1,$a0,$a3
addu $s2,$a3,$a3#≤‚ ‘addu

ori $t0,$0,0x0000
sw $a0,0($t0)
sw $a1,4($t0)
sw $a2,8($t0)
sw $a3,12($t0)
sw $s0,16($t0)
sw $s1,20($t0)
sw $s2,24($t0)#≤‚ ‘sw

lw $a0,0($t0)
lw $a1,0($t0)
sw $a0,28($t0)
sw $a1,32($t0)#≤‚ ‘lw
sb $s2,34($t0)

subu $s3,$a0,$a2
subu $s4,$a0,$a3
subu $s5,$a3,$a3#≤‚ ‘subu

ori $s6,$zero,1
for_1_begin:
	beq $t0,$a0,for_1_end
	addu $t0,$t0,$s6
	jal for_1_begin
for_1_end:##≤‚ ‘beq

jal test#≤‚ ‘jal
jal end

test:
addu $s7,$s7,$s6
jr $31#≤‚ ‘jr
end:


lb $t3,34($t1)

blez $t3,go
addu $t3,$t3,$t0
go:
sra $t4,$t3,2
	