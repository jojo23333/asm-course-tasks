.386
.model   flat,stdcall
option   casemap:none

WinMain  proto :DWORD,:DWORD,:DWORD,:DWORD
WndProc  proto :DWORD,:DWORD,:DWORD,:DWORD
Display  proto :DWORD
Calaver  proto 

include      menuID.INC

include      windows.inc
include      user32.inc
include      kernel32.inc
include      gdi32.inc
include      shell32.inc

includelib   user32.lib
includelib   kernel32.lib
includelib   gdi32.lib
includelib   shell32.lib

student	     struct
		 namelen  db  0
	     myname   db  10 dup(0)
	     chinese  db  0
	     math     db  0
	     english  db  0
	     average  db  0
	     grade    db  0
student      ends

.data
ClassName    db       'TryWinClass',0
AppName      db       'Asm Experiment 5',0
MenuName     db       'MyMenu',0
DlgName	     db       'MyDialog',0
AboutMsg     db       'This is LiMuchen from CSEE1501',0
hInstance    dd       0
CommandLine  dd       0
stumount     equ      8
buf	     student  <8,"zhangsan",80,85,84,0,0>
	     student  <3,'Jin',96,98,100,0,0>
	     student  <3,'lisi',86,92,80,0,0>
		 student  <3,'wangwu',76,78,88,0,0>
		 student  <3,'zhaoliu',77,65,72,0,0>
		 student  <3,'qianqi',90,88,86,0,0>
		 student  <3,'sunba',92,99,96,0,0>
		 student  <3,'limuchen',99,90,92,0,0>
msg_name     db       'name',0
msg_chinese  db       'chinese',0
msg_math     db       'math',0
msg_english  db       'english',0
msg_average  db       'average',0
msg_grade    db       'grade',0
chinese	     db       2,0,0,0, '96'
math	     db       2,0,0,0, '98'
english	     db       3,0,0,0, '100'
average	     db       2,0,0,0, '98'
strbuf       db		  20 dup(0)
hasdraw  	 db       0
hascount     db		  0
hasdrawaver  db       0

.code
Start:	     invoke GetModuleHandle,NULL
	     mov    hInstance,eax
	     invoke GetCommandLine
	     mov    CommandLine,eax
	     invoke WinMain,hInstance,NULL,CommandLine,SW_SHOWDEFAULT
	     invoke ExitProcess,eax
	     ;;
WinMain      proc   hInst:DWORD,hPrevInst:DWORD,CmdLine:DWORD,CmdShow:DWORD
	     LOCAL  wc:WNDCLASSEX
	     LOCAL  msg:MSG
	     LOCAL  hWnd:HWND
             invoke RtlZeroMemory,addr wc,sizeof wc
	     mov    wc.cbSize,SIZEOF WNDCLASSEX
	     mov    wc.style, CS_HREDRAW or CS_VREDRAW
	     mov    wc.lpfnWndProc, offset WndProc
	     mov    wc.cbClsExtra,NULL
	     mov    wc.cbWndExtra,NULL
	     push   hInst
	     pop    wc.hInstance
	     mov    wc.hbrBackground,COLOR_WINDOW+1
	     mov    wc.lpszMenuName, offset MenuName
	     mov    wc.lpszClassName,offset ClassName
	     invoke LoadIcon,NULL,IDI_APPLICATION
	     mov    wc.hIcon,eax
	     mov    wc.hIconSm,0
	     invoke LoadCursor,NULL,IDC_ARROW
	     mov    wc.hCursor,eax
	     invoke RegisterClassEx, addr wc
	     INVOKE CreateWindowEx,NULL,addr ClassName,addr AppName,\
                    WS_OVERLAPPEDWINDOW,CW_USEDEFAULT,\
                    CW_USEDEFAULT,CW_USEDEFAULT,CW_USEDEFAULT,NULL,NULL,\
                    hInst,NULL
	     mov    hWnd,eax
	     INVOKE ShowWindow,hWnd,SW_SHOWNORMAL
	     INVOKE UpdateWindow,hWnd
	     ;;
MsgLoop:     INVOKE GetMessage,addr msg,NULL,0,0
             cmp    EAX,0
             je     ExitLoop
             INVOKE TranslateMessage,addr msg
             INVOKE DispatchMessage,addr msg
	     jmp    MsgLoop 
ExitLoop:    mov    eax,msg.wParam
	     ret
WinMain      endp

WndProc      proc   hWnd:DWORD,uMsg:DWORD,wParam:DWORD,lParam:DWORD
	     LOCAL  hdc:HDC
     .IF     uMsg == WM_DESTROY
	     invoke PostQuitMessage,NULL
     .ELSEIF uMsg == WM_KEYDOWN
	    .IF     wParam == VK_F1
             ;;your code
	    .ENDIF
     .ELSEIF uMsg == WM_COMMAND
	    .IF     wParam == IDM_FILE_EXIT
		    invoke SendMessage,hWnd,WM_CLOSE,0,0
	    .ELSEIF wParam == IDM_ACT_LIST
			.IF hascount == 1
				mov hasdrawaver,1
			.ENDIF
			invoke Display,hWnd
		.ELSEIF wParam == IDM_ACT_COUNT
			invoke Calaver
	    .ELSEIF wParam == IDM_HELP_ABOUT
		    invoke MessageBox,hWnd,addr AboutMsg,addr AppName,0
	    .ENDIF
     .ELSEIF uMsg == WM_PAINT
	    .IF hasdraw == 1
			invoke Display,hWnd
		.ENDIF
     .ELSE
             invoke DefWindowProc,hWnd,uMsg,wParam,lParam
             ret
     .ENDIF
  	     xor    eax,eax
	     ret
WndProc     endp


Calaver     proc uses ebx ecx esi
			local STUCOUNT:WORD
			mov STUCOUNT,stumount
			mov esi,offset buf
	Cal:	mov dx,0
			mov ax,0
			mov al,[esi+11]
			SHL	ax,2
			add dx,ax
			mov ax,0
			mov al,[esi+12]
			SHL	ax,1
			add dx,ax
			mov ax,0
			mov al,[esi+13]
			add dx,ax
			
			mov ax,dx
			mov dx,0
			mov bx,7
			div bx
			
			mov edx,0
			mov [esi+14],al
			mov dl,'A'
			cmp eax,90	
			JNB next
			mov dl,'B'
			cmp eax,80	
			JNB next
			mov dl,'C'
			cmp eax,70	
			JNB next
			mov dl,'D'
			cmp eax,60	
			JNB next
			mov dl,'E'
	next:
			mov [esi+15],dl
			add esi,16
			dec STUCOUNT
			JNZ Cal

			mov hascount,1
			ret
Calaver		endp

Tostring 	proc uses EBX EDX ESI,bchar:BYTE
			LOCAL  COUNT:DWORD
			mov    COUNT,0
			mov    esi,offset strbuf
			mov    ebx,10
			mov    al,bchar
LOP1:		mov edx,0
			div ebx
			push dx
			inc COUNT
			or  eax,eax
			jnz LOP1

			mov eax,COUNT
			mov [esi],eax
			add si,4
LOP2:		pop ax
			add al,30h
			mov [esi],al
			inc si
			dec COUNT
			jnz LOP2
			ret
Tostring    endp

Display      proc   uses ebx edx ecx esi,hWnd:DWORD
             XX     equ  10
             YY     equ  10
	     XX_GAP equ  100
	     YY_GAP equ  30
            LOCAL  hdc:HDC
			LOCAL  STUCOUNT:DWORD
			LOCAL  YPOS:DWORD
			LOCAL  OFSET:DWORD

            invoke GetDC,hWnd
            mov    hdc,eax
            invoke TextOut,hdc,XX+0*XX_GAP,YY+0*YY_GAP,offset msg_name,4
            invoke TextOut,hdc,XX+1*XX_GAP,YY+0*YY_GAP,offset msg_chinese,7
            invoke TextOut,hdc,XX+2*XX_GAP,YY+0*YY_GAP,offset msg_math,4
            invoke TextOut,hdc,XX+3*XX_GAP,YY+0*YY_GAP,offset msg_english,7
            invoke TextOut,hdc,XX+4*XX_GAP,YY+0*YY_GAP,offset msg_average,7
            invoke TextOut,hdc,XX+5*XX_GAP,YY+0*YY_GAP,offset msg_grade,5
             ;;
			mov STUCOUNT,0
			;invoke TextOut,hdc,XX+5*XX_GAP,YY+1*YY_GAP,offset msg_grade,5	
			mov OFSET,offset buf
			;invoke TextOut,hdc,XX+5*XX_GAP,YY+2*YY_GAP,offset msg_grade,5
			mov esi,OFSET
			;invoke TextOut,hdc,XX+5*XX_GAP,YY+3*YY_GAP,offset msg_grade,5
looprint:	mov eax,STUCOUNT
			inc eax
			mov ebx,YY_GAP
			mov edx,0
			mul ebx
			add eax,YY
			mov YPOS,eax
			
			movsx eax,byte ptr [esi]
			mov dword ptr strbuf,eax
			inc esi
			mov ecx,10
			lea edi,offset strbuf+4
			cld
			rep movsb
		
			invoke TextOut,hdc,XX+0*XX_GAP,YPOS,offset strbuf+4,strbuf
			invoke Tostring,[esi]
			invoke TextOut,hdc,XX+1*XX_GAP,YPOS,offset strbuf+4,strbuf
			invoke Tostring,[esi+1]
			invoke TextOut,hdc,XX+2*XX_GAP,YPOS,offset strbuf+4,strbuf
			invoke Tostring,[esi+2]
			invoke TextOut,hdc,XX+3*XX_GAP,YPOS,offset strbuf+4,strbuf
			.IF hascount == 1
			.IF hasdrawaver == 1
				invoke Tostring,[esi+3]
				invoke TextOut,hdc,XX+4*XX_GAP,YPOS,offset strbuf+4,strbuf
				mov al,[esi+4]
				mov strbuf+4,al
				invoke TextOut,hdc,XX+5*XX_GAP,YPOS,offset strbuf+4,1
			.ENDIF
			.ENDIF
			add esi,5
			inc STUCOUNT
			cmp STUCOUNT,stumount
			jne looprint
			mov hasdraw,1
            ret
Display      endp


             end  Start

			 
			;mov eax,STUCOUNT
			;mov ebx,16
			;mov edx,0
			;mul ebx
			;invoke TextOut,hdc,XX+5*XX_GAP,YY+1*YY_GAP,offset msg_grade,5
			;mov eax,offset buf			;Here is the problem
			;mov ebx,[eax+esi]
			;and ebx,000000FFH
			;add eax,1