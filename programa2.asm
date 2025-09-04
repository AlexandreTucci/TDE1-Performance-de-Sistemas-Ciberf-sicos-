.data
ano1: .word 2004
ano2: .word 2005
ano3: .word 2006

.text

lw $t0, ano1
lw $t1, ano2
add $t2, $t0, $t1
lw $t3, ano3
add $t2, $t2, $t3

li $v0, 1
move $a0, $t2
syscall
