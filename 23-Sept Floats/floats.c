#include <stdio.h>

int main(void)
{

    float mynum = -13.5;
    float * ptr = &mynum;

    printf("The float is stored at %p.\n", ptr);
    printf("The float is %f.\n", mynum);

    return 0;



}