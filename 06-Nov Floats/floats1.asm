.data

prompt: .asciz "Please enter a float:"
instr: .asciz "%f"  // 32 bit 
mystring: .asciz "The sum of %1.16f and %1.16f is %1.16f\n"
num1: .word 0x3F99999A
num2: .word 0x40466666
num3: .word 0x0

.text

.global main
main:

stp x29, x30, [sp, #-16]!

ldr x0, =prompt
bl puts 
ldr x0, =instr
ldr x1, =num1
bl scanf 

ldr x0, =prompt
bl puts 
ldr x0, =instr
ldr x1, =num2
bl scanf


ldr x0, =num1
ldr s0, [x0]

ldr x0, =num2
ldr s1, [x0]

fadd s2, s0, s1
ldr x0, =num3 
str s2, [x0]

ldr x0, =mystring
fcvt d0, s0
fcvt d1, s1
fcvt d2, s2
bl printf

// printf("The sum of %f and %f is %f\n", num1, num2, num3)
//                      x0                d0    d1    d2




ldp x29, x30, [sp], #16
mov w0, #0
ret
