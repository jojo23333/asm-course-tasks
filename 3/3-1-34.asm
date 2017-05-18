EXTERN BUF:BYTE
PUBLIC FUNC3,FUNC4
.386
;����9�Ź��ܵ���Ĭ�ϵ���Ҫ��ds��ֵ������Ҫ��es��ֵ��ʱ��ֵ��DS
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
;��CX���ݲ���
FUNC3 PROC
    PUSH CX
    MOV AX,DATA2
    MOV ES,AX
    MOV AX,0
       
    LEA EDI,BUF
    MOV ESI,0
    ;����ȫ����Ϊ0
    PUSH CX
SORTINIT:
    MOV WORD PTR DS:[EDI+ESI+14],0
    ADD ESI,16
    LOOP SORTINIT
    POP CX
    
    ;��DX���浱ǰ���ֵ��Ŀ,AX����˳�����Σ�BH���浱ǰ���
    MOV AX,1
LOOPSORT:
    MOV DX,0
    MOV BL,0
    
    PUSH CX
    MOV ESI,0
    LOOPSORT2:
        ;�Ƚ����������Ϊ0���Ѿ��Ź�
        PUSH BX
            MOV BX,DS:[EDI+ESI+14]
            CMP BX,0
        POP BX
        JNE NOTMAX
        
        ;�뵱ǰ���Ƚ�
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
    
    ;��DXΪ0��˵�����Ź�����
    CMP DX,0
    JE SORTBREAK
    
    ;�ҳ����е��뵱ǰ�����ȵ�ƽ����������
    PUSH CX
    MOV ESI,0
    LOOPSORT3:
        MOV BH,BYTE PTR DS:[EDI+ESI+13]
        CMP BL,BH
        JNE NOTMAXFOUND
        MOV WORD PTR DS:[EDI+ESI+14],AX ;ע���С��
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
    ;INIT ��ʼ��������EDI,CX
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
    CALL GETRESULT        ;����EDI���ݲ���
    ADD EDI,16            ;ָ����һ������
    
    WRITE OUTPUT,DATA2
    LOOP GRADE
    
    POP CX
    RET
FUNC4 ENDP   


;FUNC: GETRESULT
;��ÿһ��ѧ���ĳɼ����ݱ�����OUTINFO��
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

    ;AX ��ESI���ݲ�����AX����������ɼ�
    MOV CX,4
LOOPGRADE:
    ADD ESI,3
    MOV AL,DS:[EDI]
    MOV AH,0
    INC EDI
    CALL NUM2CHAR 
    LOOP LOOPGRADE

    ;��ȡ����
    ADD ESI,3
    MOV AX,WORD PTR DS:[EDI]    ;����WORD PTR�Ļ�������С�ζ���
    ADD EDI,2
    CALL NUM2CHAR

    POP CX
    POP EDX
    POP ESI
    POP EDI
    RET
GETRESULT ENDP

;FUNC: NUM2CAHR
;���ɼ�ת��Ϊ�ַ�����������ESIָ��ĳ���Ϊ3�Ŀռ���
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

    ;�Ӷ�ջ��pop����λ�ַ���ת��Ϊ�����ַ�����һ���ַ�Ϊ0�����
    ;DXΪFLAG������0����Ϊ1
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

