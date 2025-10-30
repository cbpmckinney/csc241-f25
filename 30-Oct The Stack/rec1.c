#include <stdio.h>

int factorial(int n);

int main(int argc, char * argv[])
{
    int a = 3;
    int ans;
    ans = factorial(a);
    printf("%i! = %i\n", a, ans);
    return 0;
}

int factorial(int n)
{
    if (n < 2)
    {
        return 1;
    }
    else
    {
        return n*factorial(n-1);
    }
}