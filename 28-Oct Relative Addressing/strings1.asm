.data

mystring: .asciz "Wabash"


.text

.global main
main:
    stp x29, x30, [sp, #-16]!

    ldr x19, =mystring
    mov x20, #0

    loop:
    ldrb w0, [x19, x20]
    cbz w0, finish
    print:
    bl putchar
    add x20, x20, #1
    b loop

    finish:

    mov w0, #0
    ldp x29, x30, [sp], #16
    ret
    