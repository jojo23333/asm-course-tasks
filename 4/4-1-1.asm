.386
assume cs:code

code segment use16
start:
    mov  cx,0
    mov  ds,cx
    
    mov  al,21h
    dec  al
    mov  bh,4
    mul  bh
    
    mov  di,ax
    mov  ecx,[di]
    add  di,2
    mov  edx,[di]
    int 21H
code ends

end start