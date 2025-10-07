#include<stdio.h>

int myadd(int numa, int numb);

int main(void)
{
    int numa = 1;
    int numb = 2;
    int numc;

    numc = myadd(numa, numb);

    return 0;

}

int myadd(int numa, int numb)
{
    int answer = numa + numb;
    return answer;
}