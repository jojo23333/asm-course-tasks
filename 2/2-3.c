//#include <unistd.h>
#include <stdio.h>
//#include <string.h>

#define N 30


int getname(char *a)
{
    gets(a);
    if(a[0]=='\0')
        return 1;
    if(a[0]=='Q')
        return 1;
    if(a[0]=='q')
        return 1;
    return 0;
}


int main()
{
    char in_name[10];
    char hint[] = "Please Input A Student's Name";
    int flag;
    do
    {
        puts(hint);
        flag = getname(in_name);
    }while(flag);
    return 0;
}
