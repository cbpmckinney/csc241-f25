#include <stdio.h>
#include <stdlib.h>

int main(void)
{

    FILE * fptr;

    fptr = fopen("input.txt", "w");

    if (fptr == NULL)
    {
        printf("File could not be opened\n");
        return -1;
    }

    char * cptr;
    cptr = malloc(32);

    if (cptr == NULL)
    {
        printf("Malloc failed\n");
        return -1;
    }

    // scanf("%s", cptr)
    //fgets(cptr, 32, fptr);
    //printf("%s", cptr);

    char mystring[] = "Wabash Always Fights!\n";
    fputs(mystring, fptr);



    free(cptr);
    fclose(fptr);

    return 0;
}