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
00C61002  in          al,dx  
00C61003  sub         esp,30h  
00C61006  mov         eax,dword ptr [__security_cookie (0C63004h)]  
00C6100B  xor         eax,ebp  
00C6100D  mov         dword ptr [ebp-4],eax  
    char in_name[10];
    char hint[] = "Please Input A Student's Name";
00C61010  movups      xmm0,xmmword ptr [string "Please Input A Student's Name" (0C620F8h)]  
00C61017  mov         eax,dword ptr ds:[00C62110h]  
00C6101C  push        esi  
00C6101D  mov         esi,dword ptr [__imp__puts (0C620ACh)]  
00C61023  movups      xmmword ptr [hint],xmm0  
00C61027  mov         dword ptr [ebp-18h],eax  
00C6102A  movq        xmm0,mmword ptr ds:[0C62108h]  
00C61032  mov         ax,word ptr ds:[00C62114h]  
00C61038  push        edi  
00C61039  mov         edi,dword ptr [__imp__gets (0C620B0h)]  
00C6103F  movq        mmword ptr [ebp-20h],xmm0  
00C61044  mov         word ptr [ebp-14h],ax  
    int flag;
    do
    {
        puts(hint);
00C61048  lea         eax,[hint]  
00C6104B  push        eax  
00C6104C  call        esi  
        flag = getname(in_name);
00C6104E  lea         eax,[in_name]  
00C61051  push        eax  
00C61052  call        edi  
00C61054  mov         al,byte ptr [in_name]  
00C61057  add         esp,8  
00C6105A  test        al,al  
00C6105C  je          main+48h (0C61048h)  
00C6105E  cmp         al,51h  
00C61060  je          main+48h (0C61048h)  
00C61062  cmp         al,71h  
00C61064  je          main+48h (0C61048h)  
    }while(flag);
    return 0;
00C61066  mov         ecx,dword ptr [ebp-4]  
00C61069  xor         eax,eax  
00C6106B  pop         edi  
}
00C6106C  xor         ecx,ebp  
}
00C6106E  pop         esi  
00C6106F  call        __security_check_cookie (0C61078h)  
00C61074  mov         esp,ebp  
00C61076  pop         ebp  
00C61077  ret  