.data
num: .word 0x0
ans: .word 0x0
prompt1: .asciz "Please input a positive int:\n"
instr: .asciz "%i"
printans: .asciz "%i! = %i\n"


.text

.global main
main:
stp x29, x30, [sp, #-16]!
mov fp, sp 

// prompt user
// printf(prompt1);
ldr x0, =prompt1
bl printf 

// get user input
// scanf(instr, &num)
ldr x0, =instr
ldr x1, =num 
bl scanf // num will be replaced with the user input 

// ans = factorial(num)
// factorial(num)
ldr x0, =num
ldr w0, [x0]
bl factorial
// ans is in w0
ldr x1, =ans 
str w0, [x1]

// printf(printans, num, ans);
ldr x0, =printans
ldr x1, =num
ldr w1, [x1]
ldr x2, =ans
ldr w2, [x2]
bl printf 


mov w0, #0
ldp x29, x30, [sp], #16
ret


.global factorial
factorial:
stp x29, x30, [sp, #-16]!
mov fp, sp
// input num is in w0
// base case: 1! = 1, or 0! = 1
cmp w0, #1
b.gt rec

base:
mov w0, #1
b finish 

rec:
// n! = n * (n-1)!
// n is in w0, push to stack
str w0, [sp, #-16]! // push n onto stack
// stack pointer must be multiple of 16
sub w0, w0, #1 // n-1 is in w0
bl factorial 
// after done, (n-1)! is in w0
// n is sitting at the bottom of the stack
ldr w1, [sp], #16 // pop n off of stack
// n in w1, (n-1)! in w0
mul w0, w0, w1


finish:
ldp x29, x30, [sp], #16
ret
