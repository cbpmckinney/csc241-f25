.data

matA:
.float 1.0, 2.0, 3.0, 4.0
.float 5.0, 6.0, 7.0, 8.0
.float 9.0, 10.0, 11.0, 12.0
.float 13.0, 14.0, 15.0, 16.0

matB:
.float -0.5, 1.5, -2.5, 3.5
.float 1.5, -2.5, 3.5, -4.5
.float -0.5, 1.5, -2.5, 3.5
.float 1.5, -2.5, 3.5, -4.5

//outstr: .asciz "The dot product is %f\n"

.text 

.global main
main:
stp x29, x30, [sp, #-16]!


ldr x0, =matA

ld1 {v0.4s}, [x0], #16
ld1 {v1.4s}, [x0], #16
ld1 {v2.4s}, [x0], #16
ld1 {v3.4s}, [x0], #16
// Can replace the four lines above with:
// ld1 {v0.4s, v1.4s, v2.4s, v3.4s}, [x0]

ldr x1, =matB
ld4 {v4.4s, v5.4s, v6.4s, v7.4s}, [x1]












ldp x29, x30, [sp], #16
mov w0, #0
ret
