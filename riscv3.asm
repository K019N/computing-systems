.data
    prompt: .string "input: "
    .align 2
    array: .space 124

.text
.globl main

main:
    la t0, array
    li t1, 0
    li t2, 31

loop:
    beq t1, t2, exit

    li a7, 4
    la a0, prompt
    ecall

    li a7, 5
    ecall
    mv t3, a0

    beqz t3, exit

    slli t4, t1, 2
    add t4, t4, t0
    sw t3, 0(t4)

    addi t1, t1, 1
    j loop

exit:
    li a7, 10
    ecall
