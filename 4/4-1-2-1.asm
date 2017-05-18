.386

code segment use16
assume cs:code,ss:stack
old_int dw ?,?
new16h:
;中断处理程序
	cmp ah,10h
	je l2h
	cmp ah,0
	je l2h
	
	pushf
	call dword ptr old_int
	jmp end16h
l2h:
	pushf
	call dword ptr old_int
	cmp al,61h
	jb  end16h
	cmp al,7ah
	ja  end16h
	sub al,20h
end16h:
	iret
	;处理内存中断程序
start:
	push cs
	pop  ds
	mov  ax,3516h
	int  21h	
	mov old_int,bx
	mov old_int+2,es
	
	mov dx,offset new16h
	mov ax,2516h
	int 21h
	
	mov dx,offset start+15
	mov cl,4
	shr dx,cl
	add dx,10h
	
	mov al,0
	mov ah,31h
	int 21h
	
	
code ends
stack segment use16 stack
	db 200 dup(0)
stack ends

data segment use16
hint db "Please input number of (0-9)",0DH,0AH
	 db "1. Set costom 16h interrupt",0DH,0AH
	 db "2. Reset 16h interrupt",0DH,0AH,'$'
seth  db "Set costom 16h interrupt",0DH,0AH,'$'
reseth db "Reset 16h interrupt",0DH,0AH,'$'
tst db "Test input ",0DH,0AH,'$'
buf  db  100 dup(0)
nextline db 0DH,0AH,'$'
data ends
end start