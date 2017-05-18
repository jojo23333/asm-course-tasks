EXTERN BUF:BYTE
PUBLIC FUNC3,FUNC4
.386
;由于9号功能调用默认的是要用ds的值，这里要把es的值暂时赋值给DS
WRITE MACRO A,D2
    PUSH CX
    PUSH DX
    MOV CX,DS
    MOV DX,D2
    MOV DS,DX
    LEA DX,A
    MOV AH,9
    INT 21H
    MOV DS,CX
    POP DX
    POP CX
    ENDM

DATA2 SEGMENT USE16 PARA PUBLIC 'D2'
    HINT    DB "NAME       |  G1 |  G2 |  G3 | AVER| rank",0DH,0AH,'$'
    OUTINFO DB 10 DUP(' '),4 DUP(' | ','   '),' |    ',0DH,0AH,'$'
    INFOSIZE EQU $-OUTINFO
    OUTPUT  DB INFOSIZE DUP(0)
DATA2 ENDS
    
STACK SEGMENT USE16 PARA STACK 'STACK'
    DB 200 DUP(0)
STACK ENDS
    
CODE SEGMENT USE16 PARA PUBLIC 'CODE'
    ASSUME ES:DATA2,CS:CODE,SS:STACK
  
;FUNC: FUN3
;用CX传递参数
FUNC3 PROC
    PUSH CX
    MOV AX,DATA2
    MOV ES,AX
    MOV AX,0
       
    LEA EDI,BUF
    MOV ESI,0
    ;排名全部置为0
    PUSH CX
SORTINIT:
    MOV WORD PTR DS:[EDI+ESI+14],0
    ADD ESI,16
    LOOP SORTINIT
    POP CX
    
    ;用DX保存当前最大值数目,AX保存顺序名次，BH保存当前最大
    MOV AX,1
LOOPSORT:
    MOV DX,0
    MOV BL,0
    
    PUSH CX
    MOV ESI,0
    LOOPSORT2:
        ;比较如果排名不为0则已经排过
        PUSH BX
            MOV BX,DS:[EDI+ESI+14]
            CMP BX,0
        POP BX
        JNE NOTMAX
        
        ;与当前最大比较
        MOV BH,BYTE PTR DS:[EDI+ESI+13]
        CMP BH,BL
        JE EQUALMAX
        JA MAX
        JMP NOTMAX
        MAX:
            MOV BL,BH
            MOV DX,1
            JMP NOTMAX
        EQUALMAX:
            INC DX
        NOTMAX:    
        ADD ESI,16
        LOOP LOOPSORT2
    POP CX
    
    ;若DX为0则说明都排过序了
    CMP DX,0
    JE SORTBREAK
    
    ;找出所有的与当前最大相等的平均分来排名
    PUSH CX
    MOV ESI,0
    LOOPSORT3:
        MOV BH,BYTE PTR DS:[EDI+ESI+13]
        CMP BL,BH
        JNE NOTMAXFOUND
        MOV WORD PTR DS:[EDI+ESI+14],AX ;注意大小端
        NOTMAXFOUND:
        ADD ESI,16
        LOOP LOOPSORT3
    POP CX
    
    ADD AX,DX
    JMP LOOPSORT
    
SORTBREAK:
    POP CX
    RET
    
FUNC3 ENDP

FUNC4 PROC
    PUSH CX
    MOV AX,DATA2
    MOV ES,AX
    MOV AX,0
    
    WRITE HINT,DATA2
    LEA ESI,OUTINFO
    LEA EDI,BUF
    ;INIT 初始化并保护EDI,CX
GRADE:
    PUSH CX
    PUSH EDI
    MOV CX,INFOSIZE
    MOV EDI,OFFSET OUTPUT
    MOV EDX,0
INIT:
    MOV AL,ES:[ESI+EDX]
    MOV ES:[EDI+EDX],AL
    INC EDX
    LOOP INIT
    
    POP EDI
    POP CX     
    CALL GETRESULT        ;利用EDI传递参数
    ADD EDI,16            ;指向下一个参数
    
    WRITE OUTPUT,DATA2
    LOOP GRADE
    
    POP CX
    RET
FUNC4 ENDP   


;FUNC: GETRESULT
;将每一个学生的成绩数据保存在OUTINFO里
GETRESULT PROC
    PUSH EDI
    PUSH ESI
    PUSH EDX
    PUSH CX
    
    MOV CX,10
    LEA ESI,OUTPUT

LOOPNAME:
    MOV AL,DS:[EDI]
    MOV ES:[ESI],AL
    INC EDI         ; BUF
    INC ESI         ; OUTPUT
    LOOP LOOPNAME

    ;AX 和ESI传递参数，AX保存排名或成绩
    MOV CX,4
LOOPGRADE:
    ADD ESI,3
    MOV AL,DS:[EDI]
    MOV AH,0
    INC EDI
    CALL NUM2CHAR 
    LOOP LOOPGRADE

    ;获取排名
    ADD ESI,3
    MOV AX,WORD PTR DS:[EDI]    ;不用WORD PTR的话好像会大小段读反
    ADD EDI,2
    CALL NUM2CHAR

    POP CX
    POP EDX
    POP ESI
    POP EDI
    RET
GETRESULT ENDP

;FUNC: NUM2CAHR
;将成绩转化为字符串并存贮在ESI指向的长度为3的空间内
NUM2CHAR PROC
    PUSH CX
    PUSH AX
    PUSH DX
    PUSH BX
    
    
    MOV CX,3
LOOPCHAR:
    MOV BX,10
    MOV DX,0
    DIV BX
    PUSH DX
    LOOP LOOPCHAR

    ;从堆栈中pop出三位字符，转化为数字字符，第一个字符为0则忽略
    ;DX为FLAG遇到过0则置为1
    MOV CX,3
    MOV AX,0
OUTCHAR:
    POP DX
    ADD DX,48
    CMP DX,48
    JNE NOT0
    CMP AX,0
    JE IS0
NOT0:
    MOV AX,1
    JMP OUTNUM
IS0:
    MOV DX,32
OUTNUM:    
    MOV DH,0
    MOV ES:[ESI],DL
    INC ESI
    LOOP OUTCHAR
    
    POP BX
    POP DX
    POP AX
    POP CX
    RET
NUM2CHAR ENDP

CODE ENDS
    END

