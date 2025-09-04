.data
num1: .word 4
num2: .word 3
num3: .word 9
num4: .word 5
num5: .word 2
num6: .word 1

.text
main:
    lw $t0, num1  # t0 = 4
    lw $t1, num2  # t1 = 3
    lw $t2, num3  # t2 = 9
    lw $t3, num4  # t3 = 5
    lw $t4, num5  # t4 = 2
    lw $t5, num6  # t5 = 1
    
    # Passagem
    # Comparar t0 e t1
    bgt $t0, $t1, troca01 #se t0 > t1 então troca01, se não j (jump) para comparar12 
    j comparar12
troca01:
    move $t6, $t0
    move $t0, $t1
    move $t1, $t6

comparar12:
    # Comparar t1 e t2
    bgt $t1, $t2, troca12
    j comparar23
troca12:
    move $t6, $t1
    move $t1, $t2	
    move $t2, $t6

comparar23:
    # Comparar t2 e t3
    bgt $t2, $t3, troca23
    j comparar34
troca23:
    move $t6, $t2
    move $t2, $t3
    move $t3, $t6

comparar34:
    # Comparar t3 e t4
    bgt $t3, $t4, troca34
    j comparar45
troca34:
    move $t6, $t3
    move $t3, $t4
    move $t4, $t6

comparar45:
    # Comparar t4 e t5
    bgt $t4, $t5, troca45
    j passagem2
troca45:
    move $t6, $t4
    move $t4, $t5
    move $t5, $t6

passagem2: #---------------------------------------------------------------
    # Segunda passagemada
    bgt $t0, $t1, troca01_p2
    j comparar12_p2
troca01_p2:
    move $t6, $t0
    move $t0, $t1
    move $t1, $t6

comparar12_p2:
    bgt $t1, $t2, troca12_p2
    j comparar23_p2
troca12_p2:
    move $t6, $t1
    move $t1, $t2
    move $t2, $t6

comparar23_p2:
    bgt $t2, $t3, troca23_p2
    j comparar34_p2
troca23_p2:
    move $t6, $t2
    move $t2, $t3
    move $t3, $t6

comparar34_p2:
    bgt $t3, $t4, troca34_p2
    j passagem3
troca34_p2:
    move $t6, $t3
    move $t3, $t4
    move $t4, $t6

passagem3: #---------------------------------------------------------------
    # Terceira passagemada
    bgt $t0, $t1, troca01_p3
    j comparar12_p3
troca01_p3:
    move $t6, $t0
    move $t0, $t1
    move $t1, $t6

comparar12_p3:
    bgt $t1, $t2, troca12_p3
    j comparar23_p3
troca12_p3:
    move $t6, $t1
    move $t1, $t2
    move $t2, $t6

comparar23_p3:
    bgt $t2, $t3, troca23_p3
    j passagem4
troca23_p3:
    move $t6, $t2
    move $t2, $t3
    move $t3, $t6

passagem4: #---------------------------------------------------------------
    # Quarta passagemada
    bgt $t0, $t1, troca01_p4
    j comparar12_p4
troca01_p4:
    move $t6, $t0
    move $t0, $t1
    move $t1, $t6

comparar12_p4:
    bgt $t1, $t2, troca12_p4
    j passagem5
troca12_p4:
    move $t6, $t1
    move $t1, $t2
    move $t2, $t6

passagem5: #---------------------------------------------------------------
    # Quinta passagemada
    bgt $t0, $t1, troca01_p5
    j imprimir_resultados
troca01_p5:
    move $t6, $t0
    move $t0, $t1
    move $t1, $t6

imprimir_resultados:
    # Imprimir primeiro número = 1
    li $v0, 1
    move $a0, $t0
    syscall
    
    # Imprimir segundo número = 2
    li $v0, 1
    move $a0, $t1
    syscall
    
    # Imprimir terceiro número = 3
    li $v0, 1
    move $a0, $t2
    syscall
    
    # Imprimir quarto número = 4
    li $v0, 1
    move $a0, $t3
    syscall
    
    # Imprimir quinto número = 5
    li $v0, 1
    move $a0, $t4
    syscall
    
    # Imprimir sexto número = 9
    li $v0, 1
    move $a0, $t5
    syscall
    
    # Terminar programa
    li $v0, 10
    syscall
