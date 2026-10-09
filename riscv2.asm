.data
    prompt: .string "Input step: "
    space: .string " "

.text
.globl main

main:
    li a7, 4
    la a0, prompt
    ecall

    li a7, 5
    ecall
    mv t0, a0

    li t1, 118
    li t2, 21

    blt t0, t1, set_bounds
    mv t3, t1
    mv t4, t0
    j loop

set_bounds:
    mv t3, t0
    mv t4, t1

loop:
    bgt t3, t4, exit

    li a7, 1
    mv a0, t3
    ecall

    li a7, 4
    la a0, space
    ecall

    add t3, t3, t2
    j loop

exit:
    li a7, 10
    ecall
