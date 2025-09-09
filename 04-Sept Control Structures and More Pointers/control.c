#include <stdio.h>

int b = 5;

int main(void)
{

    int a = 3;

    for(int i=0; i<5; i++)
    {
        printf("This is iteration number: %d\n", i);
    }

    for(int i=5; i>=0; i--)
    {
        if (i > 0)
        {
            printf("There are %d bottles of beer remaining\n", i);
        }
        else
        {
            printf("Oh crap, we're out of beer!\n");
        }
    }

    return 0;
}