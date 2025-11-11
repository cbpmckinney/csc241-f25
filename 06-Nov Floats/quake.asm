.data

printstr: .asciz "Answer: %f\n"   // %f in an output string means double
prompt: .asciz "Please enter a float"
instr: .asciz "%f"  // %f in input string means single, %lf means double
magic32: .word 0x5f3759df
num: .word 0x0
ans: .word 0x0

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =prompt
bl puts 
ldr x0, =instr
ldr x1, =num
bl scanf 

ldr x0, =num
ldr s0, [x0]
bl Qrsqrt

ldr x0, =ans
str s0, [x0]

ldr x0, =printstr
fcvt d0, s0
bl printf



ldp x29, x30, [sp], #16
mov w0, #0
ret


// float Qrsqrt(float num)
// expect input in s0
.global Qrsqrt
Qrsqrt:
stp x29, x30, [sp, #-16]!

//    i = * (int *) &y;
fmov w0, s0

//    i = 0x5f3759df - (i >> 1);
lsr w0, w0, #1
ldr x1, =magic32
ldr w1, [x1]
sub w0, w1, w0

//    y = * (float *) &i;
fmov s0, w0

ldp x29, x30, [sp], #16
ret
