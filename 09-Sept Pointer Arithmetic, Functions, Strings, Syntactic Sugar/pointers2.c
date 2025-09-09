#include <stdio.h>

int mystrlen(char instring[]);
void myupper(char instring[]);


int main(void)
{

    int a = 3;
    int* b = &a;

    int c;

    c = *b + 1;
    printf("The value of c is: %d\n", c);

    char mystring[] = "Hello, Wabash!";

    printf("The first charachter is %c\n", mystring[0]);

    char* e;
    e = &mystring[0];

    printf("The string starts in memory location %p\n", e);
    
    int f = mystrlen(mystring);

    printf("The length of the string is %d\n", f);

    printf("The string originally was: %s\n", mystring);
    myupper(mystring);
    printf("The string is now: %s\n", mystring);




    return 0;
}

int mystrlen(char instring[])
{
    int count = 0;
    while (instring[count] != '\0')
    {
        count++;
    }

    return count;

}

void myupper(char instring[])
{
    int count = 0;

    while (instring[count] != '\0')
    {
        if ((instring[count] >= 0x61) && (instring[count] <= 122))
        {
            instring[count] = instring[count] - 32;
        }
        count++;
    }

    return;

}