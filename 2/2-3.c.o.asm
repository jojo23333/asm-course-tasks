
2-3.o:     file format pe-x86-64


Disassembly of section .text:

00000000 <getname>:
   0:	55                   	push   bp
   1:	48                   	dec    ax
   2:	89 e5                	mov    bp,sp
   4:	48                   	dec    ax
   5:	83 ec 20             	sub    sp,0x20
   8:	48                   	dec    ax
   9:	89 4d 10             	mov    WORD PTR [di+0x10],cx
   c:	48                   	dec    ax
   d:	8b 4d 10             	mov    cx,WORD PTR [di+0x10]
  10:	e8 00 00             	call   13 <getname+0x13>
  13:	00 00                	add    BYTE PTR [bx+si],al
  15:	48                   	dec    ax
  16:	8b 45 10             	mov    ax,WORD PTR [di+0x10]
  19:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  1c:	84 c0                	test   al,al
  1e:	75 07                	jne    27 <getname+0x27>
  20:	b8 01 00             	mov    ax,0x1
  23:	00 00                	add    BYTE PTR [bx+si],al
  25:	eb 29                	jmp    50 <getname+0x50>
  27:	48                   	dec    ax
  28:	8b 45 10             	mov    ax,WORD PTR [di+0x10]
  2b:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  2e:	3c 51                	cmp    al,0x51
  30:	75 07                	jne    39 <getname+0x39>
  32:	b8 01 00             	mov    ax,0x1
  35:	00 00                	add    BYTE PTR [bx+si],al
  37:	eb 17                	jmp    50 <getname+0x50>
  39:	48                   	dec    ax
  3a:	8b 45 10             	mov    ax,WORD PTR [di+0x10]
  3d:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  40:	3c 71                	cmp    al,0x71
  42:	75 07                	jne    4b <getname+0x4b>
  44:	b8 01 00             	mov    ax,0x1
  47:	00 00                	add    BYTE PTR [bx+si],al
  49:	eb 05                	jmp    50 <getname+0x50>
  4b:	b8 00 00             	mov    ax,0x0
  4e:	00 00                	add    BYTE PTR [bx+si],al
  50:	48                   	dec    ax
  51:	83 c4 20             	add    sp,0x20
  54:	5d                   	pop    bp
  55:	c3                   	ret    

00000056 <main>:
  56:	55                   	push   bp
  57:	48                   	dec    ax
  58:	89 e5                	mov    bp,sp
  5a:	48                   	dec    ax
  5b:	83 ec 50             	sub    sp,0x50
  5e:	e8 00 00             	call   61 <main+0xb>
  61:	00 00                	add    BYTE PTR [bx+si],al
  63:	48                   	dec    ax
  64:	b8 50 6c             	mov    ax,0x6c50
  67:	65 61                	gs popa 
  69:	73 65                	jae    d0 <main+0x7a>
  6b:	20 49 48             	and    BYTE PTR [bx+di+0x48],cl
  6e:	89 45 d0             	mov    WORD PTR [di-0x30],ax
  71:	48                   	dec    ax
  72:	b8 6e 70             	mov    ax,0x706e
  75:	75 74                	jne    eb <main+0x95>
  77:	20 41 20             	and    BYTE PTR [bx+di+0x20],al
  7a:	53                   	push   bx
  7b:	48                   	dec    ax
  7c:	89 45 d8             	mov    WORD PTR [di-0x28],ax
  7f:	48                   	dec    ax
  80:	b8 74 75             	mov    ax,0x7574
  83:	64 65 6e             	fs outs dx,BYTE PTR gs:[si]
  86:	74 27                	je     af <main+0x59>
  88:	73 48                	jae    d2 <main+0x7c>
  8a:	89 45 e0             	mov    WORD PTR [di-0x20],ax
  8d:	c7 45 e8 20 4e       	mov    WORD PTR [di-0x18],0x4e20
  92:	61                   	popa   
  93:	6d                   	ins    WORD PTR es:[di],dx
  94:	66 c7 45 ec 65 00 48 	mov    DWORD PTR [di-0x14],0x8d480065
  9b:	8d 
  9c:	45                   	inc    bp
  9d:	d0 48 89             	ror    BYTE PTR [bx+si-0x77],1
  a0:	c1 e8 00             	shr    ax,0x0
  a3:	00 00                	add    BYTE PTR [bx+si],al
  a5:	00 48 8d             	add    BYTE PTR [bx+si-0x73],cl
  a8:	45                   	inc    bp
  a9:	f0 48                	lock dec ax
  ab:	89 c1                	mov    cx,ax
  ad:	e8 4e ff             	call   fffe <main+0xffa8>
  b0:	ff                   	(bad)  
  b1:	ff 89 45 fc          	dec    WORD PTR [bx+di-0x3bb]
  b5:	83 7d fc 00          	cmp    WORD PTR [di-0x4],0x0
  b9:	75 df                	jne    9a <main+0x44>
  bb:	b8 00 00             	mov    ax,0x0
  be:	00 00                	add    BYTE PTR [bx+si],al
  c0:	48                   	dec    ax
  c1:	83 c4 50             	add    sp,0x50
  c4:	5d                   	pop    bp
  c5:	c3                   	ret    
  c6:	90                   	nop
  c7:	90                   	nop
  c8:	90                   	nop
  c9:	90                   	nop
  ca:	90                   	nop
  cb:	90                   	nop
  cc:	90                   	nop
  cd:	90                   	nop
  ce:	90                   	nop
  cf:	90                   	nop
