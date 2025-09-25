#include <stdio.h>


int main(void)
{

    int a  = 2;
    float b = 3.5;

    float c;
    int d;

    c = (float) a;
    d = (int) b;

    printf("a as an int: %d, as a float: %2.10f\n", a, c);
    printf("b as a float: %2.10f, as an int: %d\n", b, d);





    return 0;
}