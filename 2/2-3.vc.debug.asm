--- c:\users\77936\desktop\2-3.c -----------------------------------------------



int getname(char *a)
{
001D16A0  push        ebp  
001D16A1  mov         ebp,esp  
001D16A3  sub         esp,0C0h  
001D16A9  push        ebx  
001D16AA  push        esi  
001D16AB  push        edi  
001D16AC  lea         edi,[ebp-0C0h]  
001D16B2  mov         ecx,30h  
001D16B7  mov         eax,0CCCCCCCCh  
001D16BC  rep stos    dword ptr es:[edi]  
    gets(a);
001D16BE  mov         eax,dword ptr [a]  
001D16C1  push        eax  
001D16C2  call        _gets (01D12BCh)  
001D16C7  add         esp,4  
    if(a[0]=='\0')
001D16CA  mov         eax,1  
001D16CF  imul        ecx,eax,0  
001D16D2  mov         edx,dword ptr [a]  
001D16D5  movsx       eax,byte ptr [edx+ecx]  
001D16D9  test        eax,eax  
001D16DB  jne         getname+44h (01D16E4h)  
        return 1;
001D16DD  mov         eax,1  
001D16E2  jmp         getname+7Ch (01D171Ch)  
    if(a[0]=='Q')
001D16E4  mov         eax,1  
001D16E9  imul        ecx,eax,0  
001D16EC  mov         edx,dword ptr [a]  
001D16EF  movsx       eax,byte ptr [edx+ecx]  
001D16F3  cmp         eax,51h  
001D16F6  jne         getname+5Fh (01D16FFh)  
        return 1;
001D16F8  mov         eax,1  
001D16FD  jmp         getname+7Ch (01D171Ch)  
    if(a[0]=='q')
001D16FF  mov         eax,1  
001D1704  imul        ecx,eax,0  
001D1707  mov         edx,dword ptr [a]  
001D170A  movsx       eax,byte ptr [edx+ecx]  
001D170E  cmp         eax,71h  
001D1711  jne         getname+7Ah (01D171Ah)  
        return 1;
001D1713  mov         eax,1  
001D1718  jmp         getname+7Ch (01D171Ch)  
    return 0;
001D171A  xor         eax,eax  
}
001D171C  pop         edi  
001D171D  pop         esi  
001D171E  pop         ebx  
001D171F  add         esp,0C0h  
001D1725  cmp         ebp,esp  
001D1727  call        __RTC_CheckEsp (01D1109h)  
001D172C  mov         esp,ebp  
001D172E  pop         ebp  
001D172F  ret  






int main()
{
001D1760  push        ebp  
001D1761  mov         ebp,esp  
001D1763  sub         esp,10Ch  
001D1769  push        ebx  
001D176A  push        esi  
001D176B  push        edi  
001D176C  lea         edi,[ebp-10Ch]  
001D1772  mov         ecx,43h  
001D1777  mov         eax,0CCCCCCCCh  
001D177C  rep stos    dword ptr es:[edi]  
001D177E  mov         eax,dword ptr [__security_cookie (01D9004h)]  
001D1783  xor         eax,ebp  
001D1785  mov         dword ptr [ebp-4],eax  
    char in_name[10];
    char hint[] = "Please Input A Student's Name";
001D1788  mov         ecx,7  
001D178D  mov         esi,offset string "Please Input A Student's Name" (01D6B30h)  
001D1792  lea         edi,[hint]  
001D1795  rep movs    dword ptr es:[edi],dword ptr [esi]  
001D1797  movs        word ptr es:[edi],word ptr [esi]  
    int flag;
    do
    {
        puts(hint);
001D1799  mov         esi,esp  
001D179B  lea         eax,[hint]  
001D179E  push        eax  
001D179F  call        dword ptr [__imp__puts (01DA164h)]  
001D17A5  add         esp,4  
001D17A8  cmp         esi,esp  
001D17AA  call        __RTC_CheckEsp (01D1109h)  
        flag = getname(in_name);
001D17AF  lea         eax,[in_name]  
001D17B2  push        eax  
001D17B3  call        _getname (01D1343h)  
001D17B8  add         esp,4  
001D17BB  mov         dword ptr [flag],eax  
    }while(flag);
001D17BE  cmp         dword ptr [flag],0  
001D17C2  jne         main+39h (01D1799h)  
    return 0;
001D17C4  xor         eax,eax  
}
001D17C6  push        edx  
001D17C7  mov         ecx,ebp  
001D17C9  push        eax  
001D17CA  lea         edx,ds:[1D17F8h]  
001D17D0  call        @_RTC_CheckStackVars@8 (01D1244h)  
001D17D5  pop         eax  
001D17D6  pop         edx  
001D17D7  pop         edi  
001D17D8  pop         esi  
001D17D9  pop         ebx  
001D17DA  mov         ecx,dword ptr [ebp-4]  
}
001D17DD  xor         ecx,ebp  
001D17DF  call        @__security_check_cookie@4 (01D1258h)  
001D17E4  add         esp,10Ch  
001D17EA  cmp         ebp,esp  
001D17EC  call        __RTC_CheckEsp (01D1109h)  
001D17F1  mov         esp,ebp  
001D17F3  pop         ebp  
001D17F4  ret  
001D17F5  nop         dword ptr [eax]  
001D17F8  add         al,byte ptr [eax]  
001D17FA  add         byte ptr [eax],al  
001D17FC  add         byte ptr [eax],bl  
001D17FE  sbb         eax,0FFFFEC00h  
001D1803  dec         dword ptr [edx]  
001D1805  add         byte ptr [eax],al  
001D1807  add         byte ptr ds:[0C4001D18h],bl  
001D180D  ?? ?? 
001D180E  ?? ?? 
001D180F  call        fword ptr [esi]  
001D1811  add         byte ptr [eax],al  
001D1813  add         byte ptr [eax],bl  
001D1815  sbb         byte ptr ds:[6E696800h],bl  
001D181B  je          main+0BDh (01D181Dh)  
001D181D  imul        ebp,dword ptr [esi+5Fh],656D616Eh  
001D1824  add         ah,cl  
--- No source file -------------------------------------------------------------