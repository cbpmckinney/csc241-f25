#include <stdio.h>

int main(void)
{

    int a;
    int *b;

    a = 1832;
    b = &a;

    printf("The value of a is: %d, and it is located at: %p\n", a, b);
    printf("The pointer is %p and the thing it points to is %d\n", b, *b);

    int c = 4;
    float d = 3.14;


    return 0;
}