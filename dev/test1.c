#include <stdio.h>



int foo(int a, int b);

int main(int argc, char * argv[])
{
    int num1;
    int num2;

    num1 = 3;
    num2 = 5;

    int ans;
    ans = foo(num1, num2);



    return 0;
}

int foo(int a, int b)
{
    int c;
    c = a + b;
    return c;
}