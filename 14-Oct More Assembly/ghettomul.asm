.data
numa: .word 0x6
numb: .word 0x7
numc: .word 0x0
fmtstring: .asciz "The product of %d and %d is %d\n"

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =numa
ldr w0, [x0]

ldr x1, =numb
ldr w1, [x1]

bl ghettomul
// numc = myfunc(numa, numb)
//              w0    w1
// answer numc is in register w0.  Let's store it.

ldr x1, =numc
str w0, [x1]




ldr x0, =fmtstring 
// kind of like doing & in C

ldr x1, =numa
ldr w1, [x1]
ldr x2, =numb
ldr w2, [x2]
ldr x3, =numc
ldr w3, [x3]


bl printf
//fmtstring: .asciz "The sum of %d and %d is %d\n"
// printf(fmtstring, numa, numb, numc);
//           x0       w1    w2    w3 


ldp x29, x30, [sp], #16
mov w0, #0
ret


ghettomul:


stp x29, x30, [sp, #-16]!

// numa, numb

//int sum = 0;
//while numb > 0
//{
//    sum += numa
//    numb -= 1
//}

mov w2, #0

loop:
cbz w1, done
add w2, w2, w0
sub w1, w1, #1
b loop

done:
mov w0, w2

ldp x29, x30, [sp], #16
ret

// answer needs to go in w0
