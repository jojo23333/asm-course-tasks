.386

code segment use16
assume cs:code,ss:stack
start:
	mov  ax,3516h
	int  21h
	mov  cx,es:[bx-4]
	mov  dx,es:[bx-2]
	
	mov bx,es
	sub bx,104h
	mov es,bx
	mov ah,49h
	int 21h
	
	cli
	xor  ax,ax
	mov  es,ax
	mov  es:[16h*4],cx
	mov  es:[16h*4+2],dx
	sti
	
	mov  ax,4ch
	int  21h
	
code ends
stack segment use16 stack
	db 200 dup(0)
stack ends
end start