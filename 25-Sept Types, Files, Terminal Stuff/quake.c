#include <stdio.h>

float Q_rsqrt(float number);

int main(void)
{

    float a = 1.5;
    float b = Q_rsqrt(a);

    printf("The fast inverse square root of %f is %f\n", a, b);




    return 0;
}

float Q_rsqrt(float number)
{
    int i;
    float x2, y;
    const float threehalfs = 1.5F;

    x2 = number * 0.5F;
    y = number;
    
    i = * (int *) &y;
    i = 0x5f3759df - (i >> 1);

    y = * (float *) &i;

    return y;

}