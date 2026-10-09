.data
    prompt: .string "Input student num: "
    result: .string "Res: "

.text
.globl main

main:
    li a7, 4
    la a0, prompt
    ecall

    li a7, 5
    ecall
    mv t0, a0

    li a7, 4
    la a0, result
    ecall

    li t1, 21
    beq t0, t1, match
    
    li a0, 0
    j print_res

match:
    li a0, 1

print_res:
    li a7, 1
    ecall

    li a7, 10
    ecall
