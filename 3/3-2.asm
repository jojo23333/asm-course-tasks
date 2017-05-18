.386
.model flat,c
.code
public get_rank,get_average

get_rank proc score:DWORD, rank:DWORD, stunum:dword
	pushad
	mov esi,score
	mov edi,rank
	mov eax,0
	mov ecx,stunum
INIT:
	mov dword PTR [edi+eax*4],0
	inc eax
	loop INIT
	
	mov eax,0	;当前最高分
	mov ebx,1	;当前名词
LOOPRANK:
	push ebx
	push ebp
		mov ecx,stunum
		mov eax,0   ;当前最高分
		mov edx,0  ;同名词人数
		mov ebp,0
		FINDMAX:
			mov ebx,0
			cmp ebx,[ebp*4+edi]
			JNE IGNORE
			cmp eax,[ebp*4+esi]
			JG IGNORE
			JE MAXADD
			
			mov edx,0
			mov eax,[ebp*4+esi]
			MAXADD:
			inc edx
			IGNORE:
			inc ebp
			loop FINDMAX 
	pop ebp
	pop ebx
	
	cmp edx,0
	JE BREAKRANK
	
	mov ecx,stunum
	push ebp
	mov ebp,0
	SEARCH:
		cmp eax,[ebp*4+esi]
		jne nextscore
		mov [ebp*4+edi],ebx
		nextscore:
		inc ebp
		loop SEARCH
	pop ebp
	add ebx,edx
	JMP LOOPRANK

BREAKRANK:	
	popad
	ret
	
get_rank endp



get_average proc score:dword,stunum:dword
	mov edx,score
	mov ecx,stunum
	mov eax,0
sum:
	add eax,[edx]
	add edx,4
	loop sum
	
	mov edx,0
	idiv stunum
	ret
	
get_average endp

	end