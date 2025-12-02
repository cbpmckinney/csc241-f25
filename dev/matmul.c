#include <stdio.h>
#include <math.h>


extern void matmulasm(matrix * ptr1, matrix * ptr2);
void matmulc(matrix * ptr1, matrix * ptr2);

typedef struct {

    float row1[4];
    float row2[4];
    float row3[4];
    float row4[4];

} matrix;

int main(void)
{

    matrix matA = 
        {{1.0, 2.0, 3.0, 4.0},
        {5.0, 6.0, 7.0, 8.0},
        {9.0, 10.0, 11.0, 12.0},
        {13.0, 14.0, 15.0, 16.0}};

    matrix matB =
        {{-0.5, 1.5, -2.5, 3.5},
        {1.5, -2.5, 3.5, -4.5},
        {-0.5, 1.5, -2.5, 3.5},
        {1.5, -2.5, 3.5, -4.5}};

    
    matrix matC;
    matrix matD;




    return 0;
}