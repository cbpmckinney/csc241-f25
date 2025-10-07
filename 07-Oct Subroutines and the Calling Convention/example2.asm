.data
numa: .word 0x1
numb: .word 0x2
numc: .word 0x0
fmtstring: .asciz "The sum of %li and %li is %li\n"

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =numa
ldr w1, [x0]

ldr x2, =numb
ldr w2, [x2]

add w3, w1, w2



ldr x0, =fmtstring 
// kind of like doing & in C

bl printf
//fmtstring: .asciz "The sum of %li and %li is %li\n"
// printf(fmtstring, numa, numb, numc);
//           x0       w1    w2    w3 


ldp x29, x30, [sp], #16
mov w0, #0
ret