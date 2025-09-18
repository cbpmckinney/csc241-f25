#include <stdio.h>

struct Customer
{
    char name[8];
    float balance;
    int age;
};

typedef struct
{
    char name[8];
    float balance;
    int age;
} Customer2;





int main(void)
{
    struct Customer Steve = {"Steve", 2500.0, 35};
    
    Customer2 Bob = {"Chuck", 10000.0, 45};


    Steve.age = Steve.age + 1;
    printf("Steve is now %d years old.\n", Steve.age);

    Bob.balance = 2.0;

    Customer2 * ptr = &Bob;
    //printf("Bob is located in memory at %p\n", ptr);

    //printf("Bob's balance is now %d.\n", Bob.balance);

    printf("The name of the customer is %s.\n", ptr->name);
    printf("The name of the customer is %s.\n", Bob.name);
    
    // Bob->name is syntactic sugar.
    // (*a).name
    // int array[5];
    // array[3] this means *(ptr+3)




    return 0;
}