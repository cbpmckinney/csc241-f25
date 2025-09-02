#include <stdio.h>

int main(void)
{

    short int fooa = 2;     // 16 bit integer
    int foob = 3;           // 32 bit integer
    long int fooc = 4;      // 64 bit integer

    float bara = 3.14;      // 32 bit float
    double barb = 3.14;     // 64 bit float

    int food = 3*foob + 7;
    food = 4;

    printf("The value of foob is: %d\n", foob);

    printf("What is your name?\n");

    char mystring[16] = {0};


    scanf("%15s", mystring);

    printf("Hello, %s!\n", mystring);
    printf("Located at %p\n", mystring);

    printf("Please input a number: \n");

    int mynum;

    scanf("%d", &mynum);

    printf("Your number is: %d\n", mynum);
    printf("Located at: %p\n", &mynum);

    return 0;
}