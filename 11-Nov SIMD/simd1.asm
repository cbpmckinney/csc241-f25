.data

vecA:
.float 1.0, 2.0, 3.0, 4.0

vecB:
.float 4.0, 3.0, 2.0, 1.0

outstr: .asciz "The dot product is %f\n"

.text 

.global main
main:
stp x29, x30, [sp, #-16]!

ldr x0, =vecA
ldr x1, =vecB
ld1 {v16.4s}, [x0]
ld1 {v17.4s}, [x1]

fmul v18.4s, v16.4s, v17.4s

faddp v19.4s, v18.4s, v18.4s

faddp s0, v19.2s

fcvt d0, s0
ldr x0, =outstr
bl printf




ldp x29, x30, [sp], #16
mov w0, #0
ret
