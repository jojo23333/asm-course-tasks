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
	
assume cs:CODE,ds:DATA,ss:STACK

DATA SEGMENT USE16
	N    EQU   30
	BUF  DB  'z' xor 'p','s' xor 'w','n' xor 'd',7 dup(0)   
	DB   100 xor 'p', 85 xor 'w', 80 xor 'd',?
	INFOSIZE EQU   $-BUF   
	DB   'l' xor 'p','i' xor 'w','s' xor 'd','i',6 DUP(0)
	DB   80 xor 'p', 100 xor 'w', 70 xor 'd',?
	DB   N-4 DUP( 't' xor 'p','m' xor 'w','p' xor 'd',0,0,0,0,0,0,0,80,90,95,?)
	DB   'j' xor 'p','o' xor 'w','j' xor 'd','o',6 dup(0)  
	DB   80 xor 'p', 90 xor 'w', 100 xor 'd', ?

	in_name DB 10,?,10 DUP(0)
	pwdhint DB "Please input password!",0DH,0AH,'$'
	wa      DB "Wrong password!",0DH,0AH,'$'
	hint 	DB "Please Input A Student's Name",0DH,0AH,'$'
	not_exist DB 0DH,0AH,"Such Student Don't exist!",0DH,0AH,'$'
	tle_hint DB "TLE",0DH,0AH,'$'
	weight  DB 4,2,1
	
	password DB 3 xor 'l'
			 DB ('p'-40H)*4
			 DB ('w'-40H)*4
			 DB ('d'-40H)*4
			 DB "#$s)"
	in_pwd db 10,?,'p','w','d',7 dup(0)
	OLDINT1 DW ?,?
	OLDINT3 DW ?,?
DATA ENDS


STACK SEGMENT USE16 STACK
STACK ENDS


CODE segment use16

NEWINT:
	IRET
	JMP pwd_compare

START:
;; 输入与提示部分

;	MOV word ptr CHECK_DEBUG,20CDH
;CHECK_DEBUG:
;	NOP
;	NOP

	MOV AX,DATA
	MOV DS,AX
	
	XOR AX,AX
	MOV ES,AX
	MOV AX,ES:[1*4]
	MOV OLDINT1,AX
	MOV AX,ES:[1*4+2]
	MOV OLDINT1+2,AX
	MOV AX,ES:[3*4]
	MOV OLDINT3,AX
	MOV AX,ES:[3*4+2]
	MOV OLDINT3+2,AX
	
	CLI
	MOV AX,OFFSET NEWINT
	MOV ES:[1*4],AX
	MOV ES:[1*4+2],CS
	MOV ES:[3*4],AX
	MOV ES:[3*4+2],CS	
	STI
	
pwdin:

	WRITE pwdhint
	MOV DX,OFFSET in_pwd
	MOV AH,0AH
	INT 21H
	
	cli                       ;计时反跟踪开始 
    mov  ah,2ch 
    int  21h
    push dx 
	
	MOV CL,[in_pwd+1]
	MOV CH,0
	MOV DI,CX 
	MOV [DI+in_pwd+2],0	;设置输入后一位为0
	MOV DL,[password]
	XOR DL,'l'
	CMP DL,CL
	JNE wrong_pwd
	
	MOV DI,0
	MOV BX,ES:[1*4]
	INC BX
	JMP BX
	
pwd_compare:
	MOV AL,[password+1+DI]
	MOV BL,[in_pwd+2+DI]
	SUB BL,40H
	SHL BL,2
	CMP AL,BL
	JNE wrong_pwd
	INC DI
	LOOP pwd_compare
	
	mov  ah,2ch                 ;获取第二次秒与百分秒
	int  21h
	sti
	cmp  dx,[esp]               ;计时是否相同
	pop  dx
	jne TLE
	
	JMP INPUT 
	

wrong_pwd:
	WRITE wa
	MOV AH,4CH
	INT 21H
	
INPUT:
	WRITE hint 

	MOV DX,OFFSET in_name
	MOV AH,0AH
	INT 21H
	MOV SI,OFFSET in_name+1
	MOV BL,[SI]		;BL存储长度
	CMP BL,0
	JE INPUT
	CMP BL,1
	JG SEARCH
	MOV BL,in_name+2
	CMP BL,'q'
	JE OVER
	CMP BL,'Q'
	JE OVER

SEARCH:	
	MOV SI,OFFSET BUF
	MOV DX,0
	push bp
LOOP1:	
	MOV BP,OFFSET in_name + 2
	MOV BX,0
	MOV CL, in_name+1
	MOV DI,OFFSET in_pwd+2
	MOV CH,0
LOOP2:	
	MOV  AL,DS:[BP]				
	MOV  AH,[BX][SI]
	;MOV  BH,[BX+DI]
	XOR  AH,[BX+DI]		;;;;;
	CMP  AH,AL
	JNE  CONTINUE
	INC  BX
	INC  BP
	LOOP LOOP2
	CMP  BYTE PTR [BX][SI],0
	JE   CAL
		
CONTINUE:
	ADD SI,INFOSIZE
    INC DX
	CMP DX,N
	JLE  LOOP1
	
	pop bp
	MOV DX,OFFSET not_exist
	MOV AH,09H
	INT 21H

	JMP INPUT

CAL:
	pop bp
;	MOV AX,DS:[SI]
;	MOV pos,AX

	ADD SI,10
;	MOV BX,0
	MOV DI,0
	MOV CX,3
	MOV DX,0
SUM:	
	MOVSX AX,BYTE PTR [SI]
	MOVSX BX,BYTE PTR [DI+weight]
	XOR  Al,[DI+in_pwd+2]	;假设这里只存在100一下的成绩
    IMUL AX,BX	
	ADD DX,AX
	INC SI
    INC DI
	LOOP SUM
	MOV AX,DX
	MOV BX,7
	MOV DX,0
	DIV BX

    MOV BX,AX
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV AX,BX

	CMP AX,90
	MOV DL,'A'
	JGE OUTPUT
	CMP AX,80
	MOV DL,'B'
	JGE OUTPUT
	CMP AX,70
	MOV DL,'C'
	JGE OUTPUT
	CMP AX,60
	MOV DL,'D'
	JGE OUTPUT
	MOV DL,'E'

OUTPUT:	
	MOV AH,2
	INT 21H
	MOV AH,1
	INT 21H
	JMP INPUT

TLE:
	WRITE tle_hint
	
OVER:
	cli                           ;还原中断矢量
	mov  ax,OLDINT1
	mov  es:[1*4],ax
	mov  ax,OLDINT1+2
	mov  es:[1*4+2],ax
	mov  ax,OLDINT3
	mov  es:[3*4],ax
	mov  ax,OLDINT3+2
	mov  es:[3*4+2],ax 
    sti
	MOV AH,4CH
	INT 21H

CODE ENDS
	END START