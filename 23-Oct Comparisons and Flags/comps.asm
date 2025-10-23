.data
numa: .word 0x6
numb: .word 0x7
str1: .asciz "The numbers are equal"
str2: .asciz "The numbers are not equal"

.text

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =numa
ldr w0, [x0]

ldr x1, =numb
ldr w1, [x1]

cmp w0, w1  // computes w0-w1, discards result, sets flags
b.ne printnoteq

printeq:
ldr x0, =str1
bl puts
b finish

printnoteq:
ldr x0, =str2
bl puts



finish:



ldp x29, x30, [sp], #16
mov w0, #0
ret


// What instructions can set flags
// cmp 
// addition instructions: add, adds, adc, adcs 