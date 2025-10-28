#include <stdio.h>

int main(int argc, char * argv[])
{

    char mystring[] = "Wabash always fights!";
    int i = 0;

    /*
    while (mystring[i] != '\0')
    {
        printf("%c\n", mystring[i]);
        i++;
    }
    */

    char * ptr = &mystring[0];
    int j = 0;
    while (*(ptr+j) != '\0')
    {
        putchar(*(ptr+j));
        j++;
    }



    return 0;
}