#include <stdio.h>
#include <math.h>


typedef struct {

float entries[4][4];

} matrix;

extern void matmulasm(matrix * ptr1, matrix * ptr2, matrix * ptr3);
void matmulc(matrix * ptr1, matrix * ptr2, matrix * ptr3);

int main(void)
{

    matrix matA = {
        {{1.0, 2.0, 3.0, 4.0},
        {5.0, 6.0, 7.0, 8.0},
        {9.0, 10.0, 11.0, 12.0},
        {13.0, 14.0, 15.0, 16.0}}};

    matrix matB =
        {{{-0.5, 1.5, -2.5, 3.5},
        {1.5, -2.5, 3.5, -4.5},
        {-0.5, 1.5, -2.5, 3.5},
        {1.5, -2.5, 3.5, -4.5}}};

    
    matrix matC;  // for one answer
    matrix matD;  // for another answer

    matmulc(&matA, &matB, &matC);
    matmulasm(&matA, &matB, &matD);

    printf("Result from C:\n");
    for (int i=0; i<4; i++)
    {
        for (int j=0; j<4; j++)
            printf("%09.6f ", matC.entries[i][j]);
        printf("\n");
    }
    printf("Result from assembly:\n");
    for (int i=0; i<4; i++)
    {
        for (int j=0; j<4; j++)
            printf("%09.6f ", matD.entries[i][j]);
        printf("\n");
    }


    return 0;
}

void matmulc(matrix * ptr1, matrix * ptr2, matrix * ptr3)
{

    for (int i=0; i<4; i++)
    {
        for (int j=0; j<4; j++)
        {
            ptr3->entries[i][j] = 0;

            for (int k=0; k < 4; k++)
            {
                ptr3->entries[i][j] += ptr1->entries[i][k] * ptr2->entries[k][j];
            }
        }
    }
}
