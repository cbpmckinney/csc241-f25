.data

.text

.global matmulasm
matmulasm:
stp x29, x30, [sp, #-16]!
// Assume pointer to first matrix is in x0
// Assume pointer to second matrix is in x1
// Assume pointer to destination/answer matrix is in x2

// This line loads the four rows of the first matrix into v0-v3 (as rows)
ld1 {v0.4s, v1.4s, v2.4s, v3.4s}, [x0]

// This loads the four columns of the second matrix into v4-v7 (as columns)
ld4 {v4.4s, v5.4s, v6.4s, v7.4s}, [x1]

// You need to compute essentially 16 dot products.
// matC[0][0] = dot product of v0, v4 (first row, first column)
fmul    v31.4s, v0.4s, v4.4s     // like what we did before break: v31 is a temporary
faddp   v31.4s, v31.4s, v31.4s   // this does one addition
faddp   v31.2s, v31.2s, v31.2s   // this does another addition
ins    v8.s[0], v31.s[0]         // this copies the sum we care about to the appropriate part of our answer
// for all the other multiplications, the instruction ins will have the following form
// ins vREG.s[INDEX], v31.s[0].  REG will vary from 8-11 and INDEX will vary from 0-3
// REG 8 means first row, index 0 means first column.  Think about how all of these will vary.
// Essentially, you need 15 more copies of lines 20-23.
// If you want to be fancy, you could write a Python script using f-strings to generate the list of all 16 instructions
// That's what an excellent student would do...

// Finally, we can store the answer using the pointer in x2:
st1 {v8.4s, v9.4s, v10.4s, v11.4s}, [x2]

// no value to return here
ldp x29, x30, [sp], #16
ret