#include <stdio.h>

float avggrade(float grades[]);

int main(void)
{

    int mynumbers[] = {1, 8, 3, 2};

    int (*a)[4] = &mynumbers;
    int* b = &mynumbers[0];

    printf("%d\n", *b + 1);
    printf("%p\n", b);
    printf("%p\n", b+1);








    float mygrades[] = {100.0, 50.0, 75.0, 75.0};





}