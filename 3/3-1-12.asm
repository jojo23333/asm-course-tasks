PUBLIC BUF
EXTERN FUNC3:NEAR,FUNC4:NEAR
.386
STACK       SEGMENT USE16 PARA STACK 'STACK'
            DB 200 DUP(0)
STACK       ENDS
DATA        SEGMENT USE16
STU_NUM     EQU 5
BUF         DB  80 DUP(0)
MENUBUF     DB 'Choose the function:',0DH,0AH
            DB '1=Input name and grades',0DH,0AH
            DB '2=Calculate average grade',0DH,0AH
            DB '3=Calculate rank',0DH,0AH
            DB '4=Output report',0DH,0AH
            DB '5=Exit',0DH,0AH
            DB 'Choose:','$'
WARN        DB 'Invalid input! Please input 1~5.',0DH,0AH,'$'
CRLF        DB  0DH,0AH,'$'
STU         DB  0DH,0AH,'Student:$'
GETNAME        DB  0DH,0AH,'Name:$'
GRADE       DB  0DH,0AH,'Grade:$'
IN_NAME     DB  10
            DB  ?
            DB  10 DUP(0)
IN_GRADE    DB  4
            DB  ?
            DB  4 DUP(0)
DATA        ENDS
CODE        SEGMENT USE16 PARA PUBLIC 'CODE'
            ASSUME CS:CODE,DS:DATA,ES:DATA,SS:STACK
START:      MOV     AX,DATA
            MOV     DS,AX
            MOV     ES,AX
MENU:       LEA     DX,MENUBUF ;输出提示菜单
            MOV     AH,9
            INT     21H
CHOOSE:     MOV     AH,1 ;获取用户输入字符
            INT     21H
            LEA     DX,CRLF ;输出回车
            MOV     AH,9
            INT     21H
            CMP     AL,'1'
            JE      FUN1
            CMP     AL,'2'
            JE      FUN2
            CMP     AL,'3'
            JE      FUN3
            CMP     AL,'4'
            JE      FUN4
            CMP     AL,'5'
            JE      EXIT
            LEA     DX,WARN ;用户输入其他字符，提示不合法
            MOV     AH,9
            INT     21H
            JMP     MENU

FUN1:       MOV     CX,STU_NUM
LOOP1:      CALL    SAVENAME
            MOV     SI,0 ;重复输入三次成绩
LOOP2:      LEA     DX,GRADE ;提示输入成绩
            MOV     AH,9
            INT     21H
            LEA     DX,IN_GRADE ;获取输入成绩
            MOV     AH,10
            INT     21H
            CALL    CHAR2NUM
            MOV     BX,STU_NUM
            SUB     BX,CX
            IMUL    BX,16
            MOV     [SI+BX+BUF+10],DL
            INC     SI
            CMP     SI,3
            JNE     LOOP2
            LOOP    LOOP1
            JMP     MENU

FUN2:       MOV     ESI,10 ;功能三-计算每个学生的平均分数
            MOV     CX,STU_NUM
            MOV     BH,0
AVERAGE:    MOV     AH,0
            MOV     AL,BUF[ESI]
            SAL     AX,2
            MOV     BL,BUF[ESI+1]
            SAL     BX,1
            ADD     AX,BX
            MOV     BL,BUF[ESI+2]
            ADD     AX,BX
            MOV     BX,7
            DIV     BL
            MOV     BUF[ESI+3],AL
            ADD     ESI,16
            LOOP    AVERAGE
            JMP     MENU

FUN3:       MOV     CX,STU_NUM
            PUSH    CX
            CALL    FUNC3
            MOV     AX,DATA
            MOV     ES,AX
            JMP     MENU
FUN4:       MOV     CX,STU_NUM
            PUSH    CX
            CALL    FUNC4
            MOV     AX,DATA
            MOV     ES,AX
            JMP     MENU
EXIT:       MOV     AH,4CH
            INT     21H
SAVENAME    PROC
            LEA     DX,STU ;输出提示
            MOV     AH,9
            INT     21H
            MOV     BX,STU_NUM
            SUB     BX,CX
            MOV     AX,BX
            ADD     AX,49
            MOV     DL,AL ;输出当前是第几个学生
            MOV     AH,2
            INT     21H
            LEA     DX,GETNAME ;提示输入姓名
            MOV     AH,9
            INT     21H
            LEA     DX,IN_NAME ;获取输入姓名
            MOV     AH,10
            INT     21H
            LEA     SI,IN_NAME+2 ;将输入的姓名保存到成绩表中
            IMUL    BX,16
            LEA     DI,[BX+BUF]
            MOV     AX,CX ;保护CX中的值
            MOV     CH,0
            MOV     CL,IN_NAME+1
            CLD
            REP     MOVSB
            MOV     CX,AX
            RET
SAVENAME    ENDP
CHAR2NUM    PROC
            MOV     BH,0
            MOV     BL,IN_GRADE+1 ;成绩的位数
            LEA     DI,IN_GRADE+2
            MOV     DX,0
LOOP3:      MOV     AH,0 ;LOOP3将输入的字符数转换为数字保存到DX中
            MOV     AL,[DI]
            SUB     AX,48
            IMUL    DX,10
            ADD     DX,AX
            INC     DI
            DEC     BX
            CMP     BX,0
            JNE     LOOP3
            RET
CHAR2NUM    ENDP
CODE        ENDS
            END     START
