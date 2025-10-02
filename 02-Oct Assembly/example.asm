.data
numa: .dword 0x5
numb: .dword 0x32
numc: .dword 0x0
fmtstring: .asciz "The sum of %li and %li is %li\n"

.text

.global main
main:
stp x29, x30, [sp, #-16]!

mov x1, #0x5
mov x2, #0x32
add x3, x1, x2



ldr x0, =fmtstring

bl printf
// printf(fmtstring, numa, numb, numc);


ldp x29, x30, [sp], #16
mov w0, #0
ret