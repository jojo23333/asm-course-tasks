.386
WRITE MACRO a 
	push dx
	push ax
	lea dx,a
	mov ah,9
	int 21h
	pop ax
	pop dx
    ENDM

assume cs:code,ss:stack

data segment use16
hint db "Please input number of (0-9)",0DH,0AH,'$'
nextline db 0DH,0AH,'$'
data ends

code segment use16
	;init&info
start:
	mov cx,data
	mov ds,cx
	
	WRITE hint
	;input
	mov ah,1
	int 21h
	cmp al,'q'
	je  quit
	sub al,30h
	
	;get cmos value
	out 70h,al
	in  al,71h
	;transfer to char in base 16
	mov ah,0
	push ax
	call bcd2char
	
	WRITE nextline
	mov dl,ah
	mov ah,2
	int 21h
	mov dl,al
	mov ah,2
	int 21h
	mov dl,'H'
	mov ah,2
	int 21h
	WRITE nextline
	
	jmp start

quit:	
	mov ah,4ch
	int 21h

bcd2char proc
	push bp
	mov bp,sp
	mov ax,[bp+4]	;get parameter
	
	mov ah,al
	and al,0fh
	shr ah,4
	
	mov bx,ax
	mov ax,0
	mov al,bh
	mov cl,10
	mul cl
	add al,bl
	
	mov ah,al
	and al,0fh
	shr ah,4
	
	;Tansfer to 16 base
	cmp ah,10
	jb  numeric1
	add ah,7
numeric1:
	add ah,30h	
	
	cmp al,10
	jb  numeric2
	add al,7
numeric2:
	add al,30h
	
	pop bp
	ret
bcd2char endp
code ends
stack segment use16 stack
	db 200 dup(0)
stack ends

end start
