.section DATA,data
.align 3
N: .quad 20

.section TEXT,text
.global _calculate_factorial
_calculate_factorial:
    adrp x1, N@PAGE
    ldr x1, [x1, N@PAGEOFF]
    mov x2, #1

calculate_loop:
    cmp x1, #1
    ble factorial_done
    mul x2, x2, x1
    sub x1, x1, #1
    b calculate_loop

factorial_done:
    mov x0, x2
    ret