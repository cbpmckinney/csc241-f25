#include <stdio.h>

int myfunc1(int n);

void myfunc2(char * ptr);



int main(void)
{

    int a = 3;
    int* b =&a;

    char mystring[] = "Hello, Wabash!";
    char * myptr = &mystring[0];
    printf("myptr is: %p\n", myptr);

    printf("The value before func1 is: %d\n", a);
    a = myfunc1(a);
    printf("The value after func1 is: %d\n", a);

    printf("The string before func2 is: %s\n", mystring);
    myfunc2(myptr);
    printf("The string after func2 is: %s\n", mystring);
    
    //myfunc2(0);

    char * newptr;
    newptr = 0;

    printf("The charachter at address 0 is: %c\n", *newptr);

    return 0;
}


int myfunc1(int n)
{

    n = n + 1;
    printf("The new value is: %d\n", n);

    return n;
}

void myfunc2(char * ptr)
{
    *ptr = *ptr + 32;
}