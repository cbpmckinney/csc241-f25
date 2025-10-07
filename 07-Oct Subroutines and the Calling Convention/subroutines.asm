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
ldr w0, [x0]

ldr x1, =numb
ldr w1, [x1]

bl myadd
// numc = myadd(numa, numb)
// answer numc is in register w0.  Let's store it.

ldr x1, =numc
str w0, [x1]




ldr x0, =fmtstring 
// kind of like doing & in C

bl printf
//fmtstring: .asciz "The sum of %li and %li is %li\n"
// printf(fmtstring, numa, numb, numc);
//           x0       w1    w2    w3 


ldp x29, x30, [sp], #16
mov w0, #0
ret

myadd:
