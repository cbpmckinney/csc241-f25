#include <stdio.h>


int foo(int a, int b);

int main(int argc, char * argv[])
{
    int num1 = 4;
    int num2 = 3;
    int ans;

    ans = foo(num1, num2);

    printf("Answer is: %i", ans);
    return 0;
}

int foo(int a, int b)
{
    int c;
    c = a + b + a*b;
    return c;
}