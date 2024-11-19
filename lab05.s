
.data
storage:
    .word 1
    .word 10
    .word 11

.text
    la   a0, storage
    addi s0, zero, 0
    addi s1, zero, 1
    addi s2, zero, 2
    addi s3, zero, 3

    addi t1,   s0, 1
    add  t2,   t1, s2 
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    lw   t3, 4(a0)
    add  t4, zero, t3
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    j    next
    add  t5, s1, s2
    add  t6, s1, s2
next:
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    beq  s1, s2, next
    add  t5, s1, s2
    add  t6, s1, s3

    beq  s1, s1, taken
    add  t0, zero, s3
    add  t1, zero, s2
taken:

    add  t1, s0, s1
    add t2, s0, s2
    add  t3, t1, s3
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    add  t1, s0, s1
    add t1, s0, s2
    add  t3, t1, s3
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    lw   t3, 4(a0)
    beq  t3, zero, exit
    add  zero, zero, zero  
    add  zero, zero, zero  
    add  zero, zero, zero  

    beq  zero, s0, nextInstr
nextInstr:
    add  t0, s1, s2
    add  t1, s2, s3

exit:  
    addi      a7, zero, 10    
    ecall