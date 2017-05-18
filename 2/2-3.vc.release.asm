
int getname(char *a)
{
00AA1000  push        ebp  
00AA1001  mov         ebp,esp  
    gets(a);
00AA1003  mov         eax,dword ptr [a]  
00AA1006  push        eax  
00AA1007  call        dword ptr [__imp__gets (0AA20B0h)]  
00AA100D  add         esp,4  
    if(a[0]=='\0')
00AA1010  mov         ecx,1  
00AA1015  imul        edx,ecx,0  
00AA1018  mov         eax,dword ptr [a]  
00AA101B  movsx       ecx,byte ptr [eax+edx]  
00AA101F  test        ecx,ecx  
00AA1021  jne         getname+2Ah (0AA102Ah)  
        return 1;
00AA1023  mov         eax,1  
00AA1028  jmp         getname+62h (0AA1062h)  
    if(a[0]=='Q')
00AA102A  mov         edx,1  
00AA102F  imul        eax,edx,0  
00AA1032  mov         ecx,dword ptr [a]  
00AA1035  movsx       edx,byte ptr [ecx+eax]  
00AA1039  cmp         edx,51h  
00AA103C  jne         getname+45h (0AA1045h)  
        return 1;
00AA103E  mov         eax,1  
00AA1043  jmp         getname+62h (0AA1062h)  
    if(a[0]=='q')
00AA1045  mov         eax,1  
00AA104A  imul        ecx,eax,0  
00AA104D  mov         edx,dword ptr [a]  
00AA1050  movsx       eax,byte ptr [edx+ecx]  
00AA1054  cmp         eax,71h  
00AA1057  jne         getname+60h (0AA1060h)  
        return 1;
00AA1059  mov         eax,1  
00AA105E  jmp         getname+62h (0AA1062h)  
    return 0;
00AA1060  xor         eax,eax  
}
00AA1062  pop         ebp  
00AA1063  ret  

int main()
{
00AA1070  push        ebp  
00AA1071  mov         ebp,esp  
00AA1073  sub         esp,34h  
00AA1076  mov         eax,dword ptr [__security_cookie (0AA3004h)]  
00AA107B  xor         eax,ebp  
00AA107D  mov         dword ptr [ebp-4],eax  
00AA1080  push        esi  
00AA1081  push        edi  
    char in_name[10];
    char hint[] = "Please Input A Student's Name";
00AA1082  mov         ecx,7  
00AA1087  mov         esi,0AA3018h  
00AA108C  lea         edi,[hint]  
00AA108F  rep movs    dword ptr es:[edi],dword ptr [esi]  
00AA1091  movs        word ptr es:[edi],word ptr [esi]  
    int flag;
    do
    {
        puts(hint);
00AA1093  lea         eax,[hint]  
00AA1096  push        eax  
00AA1097  call        dword ptr [__imp__puts (0AA20ACh)]  
00AA109D  add         esp,4  
        flag = getname(in_name);
00AA10A0  lea         ecx,[in_name]  
00AA10A3  push        ecx  
00AA10A4  call        getname (0AA1000h)  
00AA10A9  add         esp,4  
00AA10AC  mov         dword ptr [flag],eax  
    }while(flag);
00AA10AF  cmp         dword ptr [flag],0  
00AA10B3  jne         main+23h (0AA1093h)  
    return 0;
00AA10B5  xor         eax,eax  
}
00AA10B7  pop         edi  
00AA10B8  pop         esi  
00AA10B9  mov         ecx,dword ptr [ebp-4]  
00AA10BC  xor         ecx,ebp  
00AA10BE  call        __security_check_cookie (0AA10C7h)  
00AA10C3  mov         esp,ebp  
}
00AA10C5  pop         ebp  
00AA10C6  ret  
--- No source file -------------------------------------------------------------
@__security_check_cookie@4:
00AA10C7  cmp         ecx,dword ptr [__security_cookie (0AA3004h)]  
00AA10CD  bnd jne     failure (0AA10D2h)  
00AA10D0  bnd ret  
failure:
00AA10D2  bnd jmp     __report_gsfailure (0AA1337h)  