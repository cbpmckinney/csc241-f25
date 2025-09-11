#include <stdio.h>

long int factorial(long int n);

int main(void)
{

    for (long int i = 1; i < 200; i++)
    {
        printf("%li! is: %li\n", i, factorial(i));
    }

    return 0;
}

long int factorial(long int n)
{

    if (n == 0)
    {
        return 1;
    }
    else
    {
        return n*factorial(n-1);
    }

}