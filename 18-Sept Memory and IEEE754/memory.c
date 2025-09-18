#include <stdio.h>
#include <stdlib.h>

int main(void)
{

    char mystring[8] = "Wabash!";
    
    char * ptr = malloc(8);

    if (ptr == NULL)
    {
        printf("Crap!  The allocation failed!\n");
    }

    printf("The pointer is %p\n", ptr);

    printf("The string in memory is %s\n", ptr);


    int * ptr2 = calloc(8, 4);
    if (ptr2 == NULL)
    {
        printf("Crap!  calloc failed!\n");
    }

    printf("The second pointer is %p\n", ptr2);
    printf("The number is %d\n", *ptr2);




    free(ptr2);
    free(ptr);

    return 0;
}