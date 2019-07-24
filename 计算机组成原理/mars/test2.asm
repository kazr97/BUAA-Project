.data
.text
ori $t0,$0,0
ori $a0,$0,1
ori $a1,$0,2
ori $a2,$0,1
beq $a0,$a1,loop1
beq $a0,$a2,loop2
loop1:sw $a0,36($t0)
loop2:sw $a1,40($t0)