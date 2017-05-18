
2-3.exe:     file format pei-i386
2-3.exe
architecture: i386, flags 0x0000013a:
EXEC_P, HAS_DEBUG, HAS_SYMS, HAS_LOCALS, D_PAGED
start address 0x004014e0

Characteristics 0x107
	relocations stripped
	executable
	line numbers stripped
	32 bit words

Time/Date		Thu Mar 30 10:21:11 2017
Magic			010b	(PE32)
MajorLinkerVersion	2
MinorLinkerVersion	24
SizeOfCode		00001800
SizeOfInitializedData	00001200
SizeOfUninitializedData	00000600
AddressOfEntryPoint	000014e0
BaseOfCode		00001000
BaseOfData		00003000
ImageBase		00400000
SectionAlignment	00001000
FileAlignment		00000200
MajorOSystemVersion	4
MinorOSystemVersion	0
MajorImageVersion	1
MinorImageVersion	0
MajorSubsystemVersion	4
MinorSubsystemVersion	0
Win32Version		00000000
SizeOfImage		0001d000
SizeOfHeaders		00000400
CheckSum		000236b1
Subsystem		00000003	(Windows CUI)
DllCharacteristics	00000000
SizeOfStackReserve	00200000
SizeOfStackCommit	00001000
SizeOfHeapReserve	00100000
SizeOfHeapCommit	00001000
LoaderFlags		00000000
NumberOfRvaAndSizes	00000010

The Data Directory
Entry 0 00000000 00000000 Export Directory [.edata (or where ever we found it)]
Entry 1 00006000 00000578 Import Directory [parts of .idata]
Entry 2 00000000 00000000 Resource Directory [.rsrc]
Entry 3 00000000 00000000 Exception Directory [.pdata]
Entry 4 00000000 00000000 Security Directory
Entry 5 00000000 00000000 Base Relocation Directory [.reloc]
Entry 6 00000000 00000000 Debug Directory
Entry 7 00000000 00000000 Description Directory
Entry 8 00000000 00000000 Special Directory
Entry 9 00008004 00000018 Thread Storage Directory [.tls]
Entry a 00000000 00000000 Load Configuration Directory
Entry b 00000000 00000000 Bound Import Directory
Entry c 00006104 000000c8 Import Address Table Directory
Entry d 00000000 00000000 Delay Import Directory
Entry e 00000000 00000000 CLR Runtime Header
Entry f 00000000 00000000 Reserved

There is an import table in .idata at 0x406000

The Import Tables (interpreted .idata section contents)
 vma:            Hint    Time      Forward  DLL       First
                 Table   Stamp     Chain    Name      Thunk
 00006000	0000603c 00000000 00000000 000064e8 00006104

	DLL Name: KERNEL32.dll
	vma:  Hint/Ord Member-Name Bound-To
	61cc	  212  DeleteCriticalSection
	61e4	  239  EnterCriticalSection
	61fc	  452  GetCurrentProcess
	6210	  453  GetCurrentProcessId
	6226	  457  GetCurrentThreadId
	623c	  515  GetLastError
	624c	  612  GetStartupInfoA
	625e	  635  GetSystemTimeAsFileTime
	6278	  663  GetTickCount
	6288	  747  InitializeCriticalSection
	62a4	  806  LeaveCriticalSection
	62bc	  915  QueryPerformanceCounter
	62d6	 1127  SetUnhandledExceptionFilter
	62f4	 1140  Sleep
	62fc	 1154  TerminateProcess
	6310	 1161  TlsGetValue
	631e	 1174  UnhandledExceptionFilter
	633a	 1206  VirtualProtect
	634c	 1209  VirtualQuery

 00006014	0000608c 00000000 00000000 0000656c 00006154

	DLL Name: msvcrt.dll
	vma:  Hint/Ord Member-Name Bound-To
	635c	   56  __dllonexit
	636a	   59  __getmainargs
	637a	   60  __initenv
	6386	   69  __lconv_init
	6396	  105  __set_app_type
	63a8	  108  __setusermatherr
	63bc	  123  _acmdln
	63c6	  145  _amsg_exit
	63d4	  162  _cexit
	63de	  274  _fmode
	63e8	  349  _initterm
	63f4	  353  _iob
	63fc	  458  _lock
	6404	  624  _onexit
	640e	  839  _unlock
	6418	 1052  abort
	6420	 1067  calloc
	642a	 1078  exit
	6432	 1094  fprintf
	643c	 1101  free
	6444	 1112  fwrite
	644e	 1119  gets
	6456	 1159  malloc
	6460	 1168  memcpy
	646a	 1179  puts
	6472	 1195  signal
	647c	 1213  strlen
	6486	 1216  strncmp
	6490	 1249  vfprintf

 00006028	00000000 00000000 00000000 00000000 00000000

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00001718  00401000  00401000  00000400  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         0000002c  00403000  00403000  00001c00  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .rdata        0000045c  00404000  00404000  00001e00  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .bss          00000450  00405000  00405000  00000000  2**6
                  ALLOC
  4 .idata        00000578  00406000  00406000  00002400  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  5 .CRT          00000034  00407000  00407000  00002a00  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .tls          00000020  00408000  00408000  00002c00  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .debug_aranges 000002d8  00409000  00409000  00002e00  2**3
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_info   0000a6d5  0040a000  0040a000  00003200  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_abbrev 0000199e  00415000  00415000  0000da00  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_line   000018f3  00417000  00417000  0000f400  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_frame  00000780  00419000  00419000  00010e00  2**2
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_str    000002f2  0041a000  0041a000  00011600  2**0
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_loc    00000d1e  0041b000  0041b000  00011a00  2**0
                  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges 00000230  0041c000  0041c000  00012800  2**0
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
[  0](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000002d crtexe.c
File 
[  2](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x00000000 ___mingw_invalidParameterHandler
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[  4](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00000010 _pre_c_init
[  5](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000008 _managedapp
[  6](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00000130 _pre_cpp_init
[  7](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 _startinfo
[  8](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000014 _envp
[  9](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000018 _argv
[ 10](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c _argc
[ 11](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000010 _argret
[ 12](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00000180 ___tmainCRTStartup
[ 13](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000004 _has_cctor
[ 14](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000c _mainret
[ 15](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000004c0 _WinMainCRTStartup
[ 16](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000004e0 _mainCRTStartup
[ 17](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .text
AUX scnlen 0x4fa nreloc 89 nlnno 0
[ 19](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 21](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .bss
AUX scnlen 0x20 nreloc 0 nlnno 0
[ 23](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .CRT$XCAA
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 25](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .CRT$XIAA
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 27](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_info
AUX scnlen 0x239c nreloc 160 nlnno 0
[ 29](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_abbrev
AUX scnlen 0x46f nreloc 0 nlnno 0
[ 31](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_loc
AUX scnlen 0x2e3 nreloc 2 nlnno 0
[ 33](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[ 35](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_ranges
AUX scnlen 0x88 nreloc 0 nlnno 0
[ 37](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_line
AUX scnlen 0x332 nreloc 1 nlnno 0
[ 39](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_str
AUX scnlen 0x235 nreloc 0 nlnno 0
[ 41](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000238 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[ 43](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .debug_frame
AUX scnlen 0xc0 nreloc 12 nlnno 0
[ 45](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000037 crtbegin.c
File 
[ 47](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000500 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 49](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 51](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000020 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 53](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000024c .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[ 55](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000044 2-3.c
File 
[ 57](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000500 _getname
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 59](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000054b _main
[ 60](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000500 .text
AUX scnlen 0xc2 nreloc 3 nlnno 0
[ 62](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 64](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000020 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 66](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000260 .rdata$zzz
AUX scnlen 0x15 nreloc 0 nlnno 0
[ 68](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000076 tlssup.c
File 
[ 70](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x000005d0 ___dyn_tls_dtor@12
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 72](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000620 ___dyn_tls_init@12
[ 73](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000002c ___xd_a
[ 74](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000030 ___xd_z
[ 75](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000006a0 ___tlregdtor
[ 76](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000005d0 .text
AUX scnlen 0xd3 nreloc 7 nlnno 0
[ 78](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 80](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000020 .bss
AUX scnlen 0x10 nreloc 0 nlnno 0
[ 82](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .CRT$XLD
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 84](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000020 .CRT$XLC
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 86](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .rdata
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 88](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000030 .CRT$XDZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 90](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000002c .CRT$XDA
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 92](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .tls
AUX scnlen 0x18 nreloc 4 nlnno 0
[ 94](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000028 .CRT$XLZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 96](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000001c .CRT$XLA
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 98](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000001c .tls$ZZZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[100](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .tls$AAA
AUX scnlen 0x4 nreloc 0 nlnno 0
[102](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000239c .debug_info
AUX scnlen 0x67d nreloc 35 nlnno 0
[104](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000046f .debug_abbrev
AUX scnlen 0x1ab nreloc 0 nlnno 0
[106](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002e3 .debug_loc
AUX scnlen 0x7f nreloc 1 nlnno 0
[108](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000020 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[110](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000332 .debug_line
AUX scnlen 0x10e nreloc 1 nlnno 0
[112](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000235 .debug_str
AUX scnlen 0x1f nreloc 0 nlnno 0
[114](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000278 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[116](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000c0 .debug_frame
AUX scnlen 0x6c nreloc 6 nlnno 0
[118](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000008e charmax.c
File 
[120](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x000006b0 _my_lconv_init
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[122](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000006b0 .text
AUX scnlen 0x7 nreloc 1 nlnno 0
[124](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[126](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000030 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[128](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000014 .CRT$XIC
AUX scnlen 0x4 nreloc 1 nlnno 0
[130](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00002a19 .debug_info
AUX scnlen 0x4ca nreloc 8 nlnno 0
[132](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000061a .debug_abbrev
AUX scnlen 0x9a nreloc 0 nlnno 0
[134](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000040 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[136](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000440 .debug_line
AUX scnlen 0x114 nreloc 1 nlnno 0
[138](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000028c .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[140](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000012c .debug_frame
AUX scnlen 0x24 nreloc 2 nlnno 0
[142](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000a5 mingw_helpers.c
File 
[144](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x000006c0 __decode_pointer
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[146](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000006d0 __encode_pointer
[147](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000006c0 .text
AUX scnlen 0x15 nreloc 0 nlnno 0
[149](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[151](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000034 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[153](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00002ee3 .debug_info
AUX scnlen 0x4ca nreloc 6 nlnno 0
[155](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000006b4 .debug_abbrev
AUX scnlen 0x87 nreloc 0 nlnno 0
[157](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000060 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[159](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000554 .debug_line
AUX scnlen 0xd7 nreloc 1 nlnno 0
[161](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002a0 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[163](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000150 .debug_frame
AUX scnlen 0x34 nreloc 4 nlnno 0
[165](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000b7 xtxtmode.c
File 
[167](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000006e0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[169](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[171](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000038 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[173](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000033ad .debug_info
AUX scnlen 0xab nreloc 3 nlnno 0
[175](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000073b .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[177](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000080 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[179](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000062b .debug_line
AUX scnlen 0x5e nreloc 0 nlnno 0
[181](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002b4 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[183](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000d0 atonexit.c
File 
[185](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x000006e0 _mingw_onexit
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[187](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000007a0 _atexit
[188](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000006e0 .text
AUX scnlen 0xdd nreloc 14 nlnno 0
[190](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[192](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000003c .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[194](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00003458 .debug_info
AUX scnlen 0x697 nreloc 18 nlnno 0
[196](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000765 .debug_abbrev
AUX scnlen 0x17b nreloc 0 nlnno 0
[198](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000362 .debug_loc
AUX scnlen 0x29 nreloc 0 nlnno 0
[200](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000098 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[202](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000689 .debug_line
AUX scnlen 0x141 nreloc 1 nlnno 0
[204](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002c8 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[206](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000184 .debug_frame
AUX scnlen 0x58 nreloc 4 nlnno 0
[208](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000e2 _newmode.c
File 
[210](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007c0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[212](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[214](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000003c .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[216](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00003aef .debug_info
AUX scnlen 0xad nreloc 3 nlnno 0
[218](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000008e0 .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[220](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000b8 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[222](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007ca .debug_line
AUX scnlen 0x5e nreloc 0 nlnno 0
[224](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002dc .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[226](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000f4 wildcard.c
File 
[228](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007c0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[230](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[232](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000040 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[234](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00003b9c .debug_info
AUX scnlen 0xb0 nreloc 3 nlnno 0
[236](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000090a .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[238](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000d0 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[240](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000828 .debug_line
AUX scnlen 0x5e nreloc 0 nlnno 0
[242](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002f0 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[244](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000108 natstart.c
File 
[246](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007c0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[248](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .data
AUX scnlen 0x8 nreloc 0 nlnno 0
[250](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000044 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[252](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00003c4c .debug_info
AUX scnlen 0x51f nreloc 8 nlnno 0
[254](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000934 .debug_abbrev
AUX scnlen 0x82 nreloc 0 nlnno 0
[256](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000e8 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[258](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000886 .debug_line
AUX scnlen 0x105 nreloc 0 nlnno 0
[260](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000254 .debug_str
AUX scnlen 0x18 nreloc 0 nlnno 0
[262](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000304 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[264](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000122 crt_handler.c
File 
[266](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x000007c0 __gnu_exception_handler@4
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[268](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007c0 .text
AUX scnlen 0x199 nreloc 10 nlnno 0
[270](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[272](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000044 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[274](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000416b .debug_info
AUX scnlen 0xb19 nreloc 23 nlnno 0
[276](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000009b6 .debug_abbrev
AUX scnlen 0x18a nreloc 0 nlnno 0
[278](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000038b .debug_loc
AUX scnlen 0x162 nreloc 0 nlnno 0
[280](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000100 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[282](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000098b .debug_line
AUX scnlen 0x15d nreloc 1 nlnno 0
[284](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000026c .debug_str
AUX scnlen 0x10 nreloc 0 nlnno 0
[286](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000318 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[288](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000001dc .debug_frame
AUX scnlen 0x48 nreloc 2 nlnno 0
[290](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000013c cinitexe.c
File 
[292](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000960 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[294](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[296](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000048 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[298](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000008 .CRT$XCZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[300](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .CRT$XCA
AUX scnlen 0x4 nreloc 0 nlnno 0
[302](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .CRT$XIZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[304](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000c .CRT$XIA
AUX scnlen 0x4 nreloc 0 nlnno 0
[306](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00004c84 .debug_info
AUX scnlen 0x188 nreloc 6 nlnno 0
[308](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000b40 .debug_abbrev
AUX scnlen 0x59 nreloc 0 nlnno 0
[310](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000120 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[312](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000ae8 .debug_line
AUX scnlen 0x5e nreloc 0 nlnno 0
[314](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000032c .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[316](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000152 dllargv.c
File 
[318](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000960 __setargv
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[320](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000960 .text
AUX scnlen 0x3 nreloc 0 nlnno 0
[322](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[324](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000048 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[326](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00004e0c .debug_info
AUX scnlen 0x18d nreloc 4 nlnno 0
[328](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000b99 .debug_abbrev
AUX scnlen 0x37 nreloc 0 nlnno 0
[330](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000138 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[332](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000b46 .debug_line
AUX scnlen 0x6d nreloc 1 nlnno 0
[334](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000340 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[336](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000224 .debug_frame
AUX scnlen 0x24 nreloc 2 nlnno 0
[338](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000170 merr.c
File 
[340](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000970 ___mingw_raise_matherr
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[342](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000048 _stUserMathErr
[343](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000009c0 ___mingw_setusermatherr
[344](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000009d0 __matherr
[345](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000120 _CSWTCH.5
[346](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000970 .text
AUX scnlen 0xbb nreloc 8 nlnno 0
[348](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[350](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000048 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[352](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000004 .rdata
AUX scnlen 0x134 nreloc 6 nlnno 0
[354](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00004f99 .debug_info
AUX scnlen 0x707 nreloc 12 nlnno 0
[356](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000bd0 .debug_abbrev
AUX scnlen 0x16e nreloc 0 nlnno 0
[358](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000004ed .debug_loc
AUX scnlen 0x13 nreloc 0 nlnno 0
[360](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000158 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[362](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000bb3 .debug_line
AUX scnlen 0x142 nreloc 1 nlnno 0
[364](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000354 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[366](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000248 .debug_frame
AUX scnlen 0x54 nreloc 6 nlnno 0
[368](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000193 pseudo-reloc.c
File 
[370](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x00000a30 ___report_error
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[372](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00000a90 _mark_section_writable
[373](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000050 _maxSections
[374](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000054 _the_secs
[375](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000bd0 __pei386_runtime_relocator
[376](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000004c _was_init.60804
[377](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000a30 .text
AUX scnlen 0x457 nreloc 61 nlnno 0
[379](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[381](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000004c .bss
AUX scnlen 0xc nreloc 0 nlnno 0
[383](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000138 .rdata
AUX scnlen 0xf6 nreloc 0 nlnno 0
[385](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000056a0 .debug_info
AUX scnlen 0x1094 nreloc 92 nlnno 0
[387](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000d3e .debug_abbrev
AUX scnlen 0x326 nreloc 0 nlnno 0
[389](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000500 .debug_loc
AUX scnlen 0x2f5 nreloc 0 nlnno 0
[391](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000178 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[393](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000088 .debug_ranges
AUX scnlen 0xc0 nreloc 0 nlnno 0
[395](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000cf5 .debug_line
AUX scnlen 0x23f nreloc 1 nlnno 0
[397](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000027c .debug_str
AUX scnlen 0x9 nreloc 0 nlnno 0
[399](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000368 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[401](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000029c .debug_frame
AUX scnlen 0xa0 nreloc 6 nlnno 0
[403](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000001aa CRT_fp10.c
File 
[405](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000e90 __fpreset
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[407](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000e90 _fpreset
[408](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000e90 .text
AUX scnlen 0x3 nreloc 0 nlnno 0
[410](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[412](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000058 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[414](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00006734 .debug_info
AUX scnlen 0xae nreloc 4 nlnno 0
[416](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001064 .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[418](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000198 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[420](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000f34 .debug_line
AUX scnlen 0x6e nreloc 1 nlnno 0
[422](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000037c .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[424](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000033c .debug_frame
AUX scnlen 0x24 nreloc 2 nlnno 0
[426](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000001c6 gccmain.c
File 
[428](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000ea0 ___do_global_dtors
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[430](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000010 _p.60020
[431](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000ed0 ___do_global_ctors
[432](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000f20 ___main
[433](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000058 _initialized
[434](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000ea0 .text
AUX scnlen 0x9c nreloc 10 nlnno 0
[436](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x4 nreloc 1 nlnno 0
[438](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000058 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[440](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000067e2 .debug_info
AUX scnlen 0x57c nreloc 13 nlnno 0
[442](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000108e .debug_abbrev
AUX scnlen 0x111 nreloc 0 nlnno 0
[444](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000007f5 .debug_loc
AUX scnlen 0x54 nreloc 0 nlnno 0
[446](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000001b8 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[448](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000fa2 .debug_line
AUX scnlen 0x114 nreloc 1 nlnno 0
[450](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000390 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[452](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000360 .debug_frame
AUX scnlen 0x60 nreloc 6 nlnno 0
[454](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000001ea gs_support.c
File 
[456](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000f40 ___security_init_cookie
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[458](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data$__security_cookie
AUX scnlen 0x4 nreloc 0 nlnno 0 checksum 0x0 assoc 0 comdat 2
[460](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000028 .data$__security_cookie_complement
AUX scnlen 0x4 nreloc 0 nlnno 0 checksum 0x0 assoc 0 comdat 2
[462](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000ff0 ___report_gsfailure
[463](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000380 _GS_ExceptionRecord
[464](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000080 _GS_ContextRecord
[465](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000230 _GS_ExceptionPointers
[466](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000f40 .text
AUX scnlen 0x137 nreloc 23 nlnno 0
[468](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000014 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[470](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000080 .bss
AUX scnlen 0x350 nreloc 0 nlnno 0
[472](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000230 .rdata
AUX scnlen 0x8 nreloc 2 nlnno 0
[474](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00006d5e .debug_info
AUX scnlen 0x900 nreloc 22 nlnno 0
[476](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000119f .debug_abbrev
AUX scnlen 0x1a8 nreloc 0 nlnno 0
[478](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000849 .debug_loc
AUX scnlen 0xc4 nreloc 1 nlnno 0
[480](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000001d8 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[482](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000010b6 .debug_line
AUX scnlen 0x11c nreloc 1 nlnno 0
[484](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000285 .debug_str
AUX scnlen 0x19 nreloc 0 nlnno 0
[486](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003a4 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[488](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003c0 .debug_frame
AUX scnlen 0x8c nreloc 4 nlnno 0
[490](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000001fc tlsmcrt.c
File 
[492](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001080 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[494](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000014 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[496](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000400 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[498](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000765e .debug_info
AUX scnlen 0xab nreloc 3 nlnno 0
[500](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001347 .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[502](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000001f8 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[504](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000011d2 .debug_line
AUX scnlen 0x5d nreloc 0 nlnno 0
[506](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003b8 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[508](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000021c tlsthrd.c
File 
[510](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x00001080 ___mingwthr_run_key_dtors.part.0
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[512](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000408 ___mingwthr_cs
[513](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000400 _key_dtor_list
[514](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000010f0 ____w64_mingwthr_add_key_dtor
[515](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000404 ___mingwthr_cs_init
[516](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001170 ____w64_mingwthr_remove_key_dtor
[517](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001210 ___mingw_TLScallback
[518](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001080 .text
AUX scnlen 0x227 nreloc 35 nlnno 0
[520](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[522](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000400 .bss
AUX scnlen 0x20 nreloc 0 nlnno 0
[524](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00007709 .debug_info
AUX scnlen 0x7f4 nreloc 45 nlnno 0
[526](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001371 .debug_abbrev
AUX scnlen 0x1a9 nreloc 0 nlnno 0
[528](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000090d .debug_loc
AUX scnlen 0xff nreloc 1 nlnno 0
[530](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000210 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[532](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000148 .debug_ranges
AUX scnlen 0x30 nreloc 0 nlnno 0
[534](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000122f .debug_line
AUX scnlen 0x176 nreloc 1 nlnno 0
[536](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003cc .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[538](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000044c .debug_frame
AUX scnlen 0xfc nreloc 8 nlnno 0
[540](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000022e pseudo-reloc-list.c
File 
[542](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000012b0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[544](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[546](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000420 .bss
AUX scnlen 0x2 nreloc 0 nlnno 0
[548](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00007efd .debug_info
AUX scnlen 0xfb nreloc 4 nlnno 0
[550](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000151a .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[552](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000230 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[554](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000013a5 .debug_line
AUX scnlen 0x67 nreloc 0 nlnno 0
[556](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003e0 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[558](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000253 pesect.c
File 
[560](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x000012b0 __ValidateImageBase.part.0
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[562](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000012d0 __ValidateImageBase
[563](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000012f0 __FindPESection
[564](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001330 __FindPESectionByName
[565](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000013d0 ___mingw_GetSectionForAddress
[566](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001420 ___mingw_GetSectionCount
[567](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001450 __FindPESectionExec
[568](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000014d0 __GetPEImageBase
[569](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001500 __IsNonwritableInCurrentImage
[570](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001560 ___mingw_enum_import_library_names
[571](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000012b0 .text
AUX scnlen 0x34b nreloc 34 nlnno 0
[573](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[575](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000424 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[577](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00007ff8 .debug_info
AUX scnlen 0x11c1 nreloc 99 nlnno 0
[579](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001544 .debug_abbrev
AUX scnlen 0x243 nreloc 0 nlnno 0
[581](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000a0c .debug_loc
AUX scnlen 0x2ef nreloc 0 nlnno 0
[583](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000248 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[585](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000178 .debug_ranges
AUX scnlen 0xb8 nreloc 0 nlnno 0
[587](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000140c .debug_line
AUX scnlen 0x1db nreloc 1 nlnno 0
[589](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000029e .debug_str
AUX scnlen 0x54 nreloc 0 nlnno 0
[591](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000003f4 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[593](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000548 .debug_frame
AUX scnlen 0x1cc nreloc 20 nlnno 0
[595](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000265 fake
File 
[597](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000091b9 .debug_info
AUX scnlen 0xa8 nreloc 4 nlnno 0
[599](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001787 .debug_abbrev
AUX scnlen 0x14 nreloc 0 nlnno 0
[601](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000015e7 .debug_line
AUX scnlen 0x7a nreloc 1 nlnno 0
[603](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001600 .text
AUX scnlen 0x2a nreloc 0 nlnno 0
[605](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[607](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000424 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[609](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000268 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[611](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000714 .debug_frame
AUX scnlen 0x38 nreloc 2 nlnno 0
[613](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000277 libgcc2.c
File 
[615](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000162c .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[617](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[619](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000424 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[621](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00009261 .debug_info
AUX scnlen 0xcd6 nreloc 4 nlnno 0
[623](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000179b .debug_abbrev
AUX scnlen 0x73 nreloc 0 nlnno 0
[625](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000288 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[627](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001661 .debug_line
AUX scnlen 0xa4 nreloc 0 nlnno 0
[629](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000408 .rdata$zzz
AUX scnlen 0x15 nreloc 0 nlnno 0
[631](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000002ac mingw_matherr.c
File 
[633](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000162c .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[635](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[637](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000424 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[639](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00009f37 .debug_info
AUX scnlen 0xc7 nreloc 3 nlnno 0
[641](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000180e .debug_abbrev
AUX scnlen 0x2a nreloc 0 nlnno 0
[643](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002a0 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[645](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001705 .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[647](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000420 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[649](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000162c .text
[650](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c .data
[651](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 .bss
[652](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000051c .idata$7
[653](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000178 .idata$5
[654](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000b0 .idata$4
[655](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003de .idata$6
[656](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000162c .text
[657](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c .data
[658](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 .bss
[659](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000510 .idata$7
[660](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000016c .idata$5
[661](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000a4 .idata$4
[662](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003bc .idata$6
[663](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000162c .text
[664](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c .data
[665](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 .bss
[666](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000500 .idata$7
[667](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000015c .idata$5
[668](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000094 .idata$4
[669](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000037a .idata$6
[670](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000162c .text
[671](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c .data
[672](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 .bss
[673](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000508 .idata$7
[674](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000164 .idata$5
[675](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000009c .idata$4
[676](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000396 .idata$6
[677](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001634 .text
[678](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000001c .data
[679](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 .bss
[680](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004fc .idata$7
[681](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000158 .idata$5
[682](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000090 .idata$4
[683](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000036a .idata$6
[684](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000369 invalid_parameter_handler.c
File 
[686](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x00001640 _mingw_get_invalid_parameter_handler
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[688](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000424 _handler
[689](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001640 __get_invalid_parameter_handler
[690](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00001650 _mingw_set_invalid_parameter_handler
[691](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001650 __set_invalid_parameter_handler
[692](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001640 .text
AUX scnlen 0x1b nreloc 2 nlnno 0
[694](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000001c .data
AUX scnlen 0x8 nreloc 2 nlnno 0
[696](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000424 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[698](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00009ffe .debug_info
AUX scnlen 0x6d7 nreloc 15 nlnno 0
[700](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001838 .debug_abbrev
AUX scnlen 0x166 nreloc 0 nlnno 0
[702](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000cfb .debug_loc
AUX scnlen 0x23 nreloc 1 nlnno 0
[704](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000002b8 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[706](sec 11)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001769 .debug_line
AUX scnlen 0x18a nreloc 1 nlnno 0
[708](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000434 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[710](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000074c .debug_frame
AUX scnlen 0x34 nreloc 4 nlnno 0
[712](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001660 .text
[713](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[714](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[715](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000550 .idata$7
[716](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001ac .idata$5
[717](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000e4 .idata$4
[718](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000456 .idata$6
[719](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001668 .text
[720](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[721](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[722](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000560 .idata$7
[723](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001bc .idata$5
[724](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000f4 .idata$4
[725](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000047c .idata$6
[726](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001670 .text
[727](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[728](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[729](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000554 .idata$7
[730](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001b0 .idata$5
[731](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000e8 .idata$4
[732](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000460 .idata$6
[733](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001678 .text
[734](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[735](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[736](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000518 .idata$7
[737](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000174 .idata$5
[738](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000ac .idata$4
[739](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003d4 .idata$6
[740](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001680 .text
[741](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[742](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[743](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000514 .idata$7
[744](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000170 .idata$5
[745](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000a8 .idata$4
[746](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003c6 .idata$6
[747](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001688 .text
[748](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[749](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[750](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000520 .idata$7
[751](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000017c .idata$5
[752](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000b4 .idata$4
[753](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003e8 .idata$6
[754](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001690 .text
[755](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[756](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[757](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000053c .idata$7
[758](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000198 .idata$5
[759](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000d0 .idata$4
[760](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000042a .idata$6
[761](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001698 .text
[762](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[763](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[764](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000054c .idata$7
[765](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001a8 .idata$5
[766](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000e0 .idata$4
[767](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000044e .idata$6
[768](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016a0 .text
[769](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[770](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[771](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000558 .idata$7
[772](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001b4 .idata$5
[773](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000ec .idata$4
[774](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000046a .idata$6
[775](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016a8 .text
[776](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[777](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[778](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000052c .idata$7
[779](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000188 .idata$5
[780](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000c0 .idata$4
[781](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000404 .idata$6
[782](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016a8 .text
[783](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[784](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[785](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000528 .idata$7
[786](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000184 .idata$5
[787](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000bc .idata$4
[788](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003fc .idata$6
[789](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016b0 .text
[790](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[791](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[792](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004f8 .idata$7
[793](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000154 .idata$5
[794](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000008c .idata$4
[795](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000035c .idata$6
[796](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016b8 .text
[797](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[798](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[799](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000530 .idata$7
[800](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000018c .idata$5
[801](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000c4 .idata$4
[802](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000040e .idata$6
[803](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016c0 .text
[804](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[805](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[806](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000055c .idata$7
[807](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001b8 .idata$5
[808](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000f0 .idata$4
[809](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000472 .idata$6
[810](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016c8 .text
[811](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[812](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[813](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000524 .idata$7
[814](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000180 .idata$5
[815](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000b8 .idata$4
[816](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003f4 .idata$6
[817](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016c8 .text
[818](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[819](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[820](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000050c .idata$7
[821](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000168 .idata$5
[822](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000a0 .idata$4
[823](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000003a8 .idata$6
[824](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016d0 .text
[825](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[826](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[827](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000540 .idata$7
[828](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000019c .idata$5
[829](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000d4 .idata$4
[830](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000432 .idata$6
[831](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016d8 .text
[832](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[833](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[834](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000548 .idata$7
[835](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001a4 .idata$5
[836](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000dc .idata$4
[837](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000444 .idata$6
[838](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016e0 .text
[839](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[840](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[841](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000568 .idata$7
[842](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001c4 .idata$5
[843](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000fc .idata$4
[844](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000490 .idata$6
[845](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016e8 .text
[846](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[847](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[848](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000534 .idata$7
[849](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000190 .idata$5
[850](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000c8 .idata$4
[851](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000418 .idata$6
[852](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016f0 .text
[853](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[854](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[855](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000538 .idata$7
[856](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000194 .idata$5
[857](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000cc .idata$4
[858](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000420 .idata$6
[859](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000016f8 .text
[860](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[861](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[862](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000544 .idata$7
[863](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001a0 .idata$5
[864](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000d8 .idata$4
[865](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000043c .idata$6
[866](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00001700 .text
[867](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[868](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[869](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000564 .idata$7
[870](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001c0 .idata$5
[871](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000f8 .idata$4
[872](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000486 .idata$6
[873](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000377 fake
File 
[875](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000008c hname
[876](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000154 fthunk
[877](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001708 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[879](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[881](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000428 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[883](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000014 .idata$2
AUX scnlen 0x14 nreloc 3 nlnno 0
[885](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000008c .idata$4
[886](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000154 .idata$5
[887](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000385 fake
File 
[889](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001708 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[891](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[893](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000428 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[895](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000100 .idata$4
AUX scnlen 0x4 nreloc 0 nlnno 0
[897](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000001c8 .idata$5
AUX scnlen 0x4 nreloc 0 nlnno 0
[899](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000056c .idata$7
AUX scnlen 0xb nreloc 0 nlnno 0
[901](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000393 fake
File 
[903](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000003c hname
[904](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000104 fthunk
[905](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001708 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[907](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[909](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000428 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[911](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000 .idata$2
AUX scnlen 0x14 nreloc 3 nlnno 0
[913](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000003c .idata$4
[914](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000104 .idata$5
[915](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000003a1 fake
File 
[917](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001708 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[919](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[921](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000428 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[923](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000088 .idata$4
AUX scnlen 0x4 nreloc 0 nlnno 0
[925](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000150 .idata$5
AUX scnlen 0x4 nreloc 0 nlnno 0
[927](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000004e8 .idata$7
AUX scnlen 0xd nreloc 0 nlnno 0
[929](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000437 crtend.c
File 
[931](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00001708 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[933](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000024 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[935](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000428 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[937](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000448 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[939](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[940](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[941](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[942](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000504 .idata$7
[943](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000160 .idata$5
[944](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000098 .idata$4
[945](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000386 .idata$6
[946](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[947](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[948](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[949](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004d0 .idata$7
[950](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000138 .idata$5
[951](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000070 .idata$4
[952](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000002f4 .idata$6
[953](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[954](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[955](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[956](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004cc .idata$7
[957](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000134 .idata$5
[958](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000006c .idata$4
[959](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000002d6 .idata$6
[960](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[961](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[962](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[963](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004b4 .idata$7
[964](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000011c .idata$5
[965](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000054 .idata$4
[966](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000024c .idata$6
[967](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[968](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[969](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[970](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004e4 .idata$7
[971](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000014c .idata$5
[972](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000084 .idata$4
[973](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000034c .idata$6
[974](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[975](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[976](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[977](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004e0 .idata$7
[978](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000148 .idata$5
[979](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000080 .idata$4
[980](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000033a .idata$6
[981](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[982](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[983](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[984](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004b0 .idata$7
[985](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000118 .idata$5
[986](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000050 .idata$4
[987](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000023c .idata$6
[988](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[989](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[990](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[991](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004b8 .idata$7
[992](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000120 .idata$5
[993](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000058 .idata$4
[994](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000025e .idata$6
[995](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[996](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[997](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[998](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004a8 .idata$7
[999](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000110 .idata$5
[1000](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000048 .idata$4
[1001](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000210 .idata$6
[1002](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1003](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1004](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1005](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004ac .idata$7
[1006](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000114 .idata$5
[1007](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000004c .idata$4
[1008](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000226 .idata$6
[1009](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1010](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1011](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1012](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004bc .idata$7
[1013](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000124 .idata$5
[1014](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000005c .idata$4
[1015](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000278 .idata$6
[1016](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1017](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1018](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1019](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004c8 .idata$7
[1020](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000130 .idata$5
[1021](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000068 .idata$4
[1022](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000002bc .idata$6
[1023](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1024](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1025](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1026](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004dc .idata$7
[1027](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000144 .idata$5
[1028](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000007c .idata$4
[1029](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000031e .idata$6
[1030](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1031](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1032](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1033](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004a4 .idata$7
[1034](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000010c .idata$5
[1035](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000044 .idata$4
[1036](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001fc .idata$6
[1037](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1038](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1039](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1040](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004d4 .idata$7
[1041](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000013c .idata$5
[1042](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000074 .idata$4
[1043](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000002fc .idata$6
[1044](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1045](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1046](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1047](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004a0 .idata$7
[1048](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000108 .idata$5
[1049](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000040 .idata$4
[1050](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001e4 .idata$6
[1051](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1052](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1053](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1054](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004d8 .idata$7
[1055](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000140 .idata$5
[1056](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000078 .idata$4
[1057](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000310 .idata$6
[1058](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1059](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1060](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1061](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004c4 .idata$7
[1062](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000012c .idata$5
[1063](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000064 .idata$4
[1064](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000002a4 .idata$6
[1065](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1066](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1067](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1068](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000049c .idata$7
[1069](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000104 .idata$5
[1070](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000003c .idata$4
[1071](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000001cc .idata$6
[1072](sec  0)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000 .text
[1073](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000024 .data
[1074](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000428 .bss
[1075](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000004c0 .idata$7
[1076](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000128 .idata$5
[1077](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000060 .idata$4
[1078](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000288 .idata$6
[1079](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001678 __cexit
[1080](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _VirtualProtect@16
[1081](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0040445c ___RUNTIME_PSEUDO_RELOC_LIST__
[1082](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _QueryPerformanceCounter@4
[1083](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __data_start__
[1084](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001710 ___DTOR_LIST__
[1085](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000c ___xi_a
[1086](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016f8 _free
[1087](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000148 __imp__VirtualProtect@16
[1088](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000016c __imp___acmdln
[1089](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016c8 ___setusermatherr
[1090](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _UnhandledExceptionFilter@4
[1091](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000188 __imp___onexit
[1092](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000118 __imp__GetLastError@0
[1093](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _SetUnhandledExceptionFilter@4
[1094](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000014c __imp__VirtualQuery@12
[1095](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___tls_start__
[1096](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000438 ___native_startup_lock
[1097](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000140 __imp__TlsGetValue@4
[1098](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000128 __imp__InitializeCriticalSection@4
[1099](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _DeleteCriticalSection@4
[1100](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000045c __rt_psrelocs_start
[1101](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000190 __imp__abort
[1102](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000020 ___xl_c
[1103](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __dll_characteristics__
[1104](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001000 __size_of_stack_commit__
[1105](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000178 __imp___fmode
[1106](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00200000 __size_of_stack_reserve__
[1107](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000004 __major_subsystem_version__
[1108](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000001c ___crt_xl_start__
[1109](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000003c __newmode
[1110](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000c ___crt_xi_start__
[1111](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000170 __imp___amsg_exit
[1112](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000001c ___crt_xi_end__
[1113](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000028 ___xl_z
[1114](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetLastError@0
[1115](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016a0 _puts
[1116](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016b8 __unlock
[1117](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000130 __imp__QueryPerformanceCounter@4
[1118](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _VirtualQuery@12
[1119](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000028 _mingw_initltsdrot_force
[1120](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000180 __imp___iob
[1121](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000040 __dowildcard
[1122](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001c0 __imp__strncmp
[1123](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __bss_start__
[1124](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000045c ___RUNTIME_PSEUDO_RELOC_LIST_END__
[1125](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001000 __size_of_heap_commit__
[1126](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000430 ___onexitend
[1127](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000010c __imp__GetCurrentProcess@0
[1128](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000010 _mingw_pcinit
[1129](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c ___crt_xp_start__
[1130](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000018 __MINGW_INSTALL_DEBUG_MATHERR
[1131](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c ___crt_xp_end__
[1132](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001b8 __imp__signal
[1133](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __dll__
[1134](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001b4 __imp__puts
[1135](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __minor_os_version__
[1136](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016d8 _fwrite
[1137](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001698 _gets
[1138](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetTickCount@0
[1139](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00400000 __image_base__
[1140](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000198 __imp__exit
[1141](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001000 __section_alignment__
[1142](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___xc_a
[1143](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001670 _memcpy
[1144](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000011c __imp__GetStartupInfoA@4
[1145](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001cc __IAT_end__
[1146](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000160 __imp____lconv_init
[1147](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0040445c __RUNTIME_PSEUDO_RELOC_LIST__
[1148](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __tls_start
[1149](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000043c ___native_startup_state
[1150](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c __data_end__
[1151](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001634 ___getmainargs
[1152](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000001c ___xl_a
[1153](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000024 ___xl_d
[1154](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001708 __CTOR_LIST__
[1155](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000434 ___onexitbegin
[1156](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000162c ___set_app_type
[1157](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000014 __CRT_MT
[1158](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000004 __charmax
[1159](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000428 ___mingw_winmain_lpCmdLine
[1160](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000450 __bss_end__
[1161](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000028 ___security_cookie_complement
[1162](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000c ___crt_xc_end__
[1163](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016d0 _fprintf
[1164](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c __tls_index
[1165](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000124 __imp__GetTickCount@0
[1166](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___crt_xc_start__
[1167](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000004e8 __lib32_libkernel32_a_iname
[1168](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001708 ___CTOR_LIST__
[1169](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000110 __imp__GetCurrentProcessId@0
[1170](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000034 _mingw_app_type
[1171](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001688 __initterm
[1172](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016f0 _calloc
[1173](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000013c __imp__TerminateProcess@8
[1174](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000038 __fmode
[1175](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __rt_psrelocs_size
[1176](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetStartupInfoA@4
[1177](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetCurrentProcessId@0
[1178](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000154 __imp____dllonexit
[1179](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001b0 __imp__memcpy
[1180](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000200 __file_alignment__
[1181](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000018c __imp___unlock
[1182](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000014 __head_lib32_libmsvcrt_a
[1183](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000012c __imp__LeaveCriticalSection@4
[1184](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001ac __imp__malloc
[1185](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000014 ___mingw_pinit
[1186](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000004 __major_os_version__
[1187](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000056c __lib32_libmsvcrt_a_iname
[1188](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016a8 __lock
[1189](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000104 __IAT_start__
[1190](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000008 ___xc_z
[1191](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000001c __tls_end
[1192](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001000 __end__
[1193](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000015c __imp____initenv
[1194](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000001c __imp___get_invalid_parameter_handler
[1195](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016b0 ___dllonexit
[1196](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016c0 _signal
[1197](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000184 __imp___lock
[1198](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001660 _malloc
[1199](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001710 __DTOR_LIST__
[1200](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000019c __imp__fprintf
[1201](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _TerminateProcess@8
[1202](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _EnterCriticalSection@4
[1203](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000017c __imp___initterm
[1204](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetCurrentThreadId@0
[1205](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00100000 __size_of_heap_reserve__
[1206](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c ___crt_xt_start__
[1207](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00400000 ___ImageBase
[1208](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000003 __subsystem__
[1209](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001bc __imp__strlen
[1210](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000044 ___mingw_oldexcpt_handler
[1211](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000194 __imp__calloc
[1212](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016e8 _abort
[1213](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000008 ___native_vcclrit_reason
[1214](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000120 __imp__GetSystemTimeAsFileTime@4
[1215](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___lconv_init
[1216](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001680 __amsg_exit
[1217](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000158 __imp____getmainargs
[1218](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___mingw_winmain_nShowCmd
[1219](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000c ___native_dllmain_reason
[1220](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000020 ___tls_end__
[1221](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetSystemTimeAsFileTime@4
[1222](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000004 _mingw_pcppinit
[1223](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000018 ___xi_z
[1224](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _GetCurrentProcess@0
[1225](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000020 _mingw_initltssuo_force
[1226](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001700 _strncmp
[1227](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _InitializeCriticalSection@4
[1228](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001a0 __imp__free
[1229](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000134 __imp__SetUnhandledExceptionFilter@4
[1230](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000020 __imp___set_invalid_parameter_handler
[1231](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000001 __major_image_version__
[1232](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __loader_flags__
[1233](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000144 __imp__UnhandledExceptionFilter@4
[1234](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __head_lib32_libkernel32_a
[1235](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00001600 ___chkstk_ms
[1236](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000045c __rt_psrelocs_end
[1237](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000174 __imp___cexit
[1238](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __minor_subsystem_version__
[1239](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 __minor_image_version__
[1240](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000138 __imp__Sleep@4
[1241](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001c4 __imp__vfprintf
[1242](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001668 _strlen
[1243](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000164 __imp____set_app_type
[1244](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000042c ___mingw_winmain_hInstance
[1245](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000024 _mingw_initltsdyn_force
[1246](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000114 __imp__GetCurrentThreadId@0
[1247](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00001690 _exit
[1248](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _TlsGetValue@4
[1249](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000104 __imp__DeleteCriticalSection@4
[1250](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000024 ___security_cookie
[1251](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _LeaveCriticalSection@4
[1252](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000045c __RUNTIME_PSEUDO_RELOC_LIST_END__
[1253](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 ___dyn_tls_init_callback
[1254](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000 _Sleep@4
[1255](sec  4)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000030 _mingw_initcharmax
[1256](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000168 __imp____setusermatherr
[1257](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000004 __tls_used
[1258](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000002c ___crt_xt_end__
[1259](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x000016e0 _vfprintf
[1260](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000108 __imp__EnterCriticalSection@4
[1261](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001a8 __imp__gets
[1262](sec  5)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000001a4 __imp__fwrite



Disassembly of section .text:

00401000 <___mingw_invalidParameterHandler>:
  401000:	f3 c3                	repz ret 
  401002:	8d b4 26 00          	lea    si,[si+0x26]
  401006:	00 00                	add    BYTE PTR [bx+si],al
  401008:	00 8d bc 27          	add    BYTE PTR [di+0x27bc],cl
  40100c:	00 00                	add    BYTE PTR [bx+si],al
	...

00401010 <_pre_c_init>:
  401010:	83 ec 1c             	sub    sp,0x1c
  401013:	31 c0                	xor    ax,ax
  401015:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  40101c:	4d                   	dec    bp
  40101d:	5a                   	pop    dx
  40101e:	c7 05 28 50          	mov    WORD PTR [di],0x5028
  401022:	40                   	inc    ax
  401023:	00 01                	add    BYTE PTR [bx+di],al
  401025:	00 00                	add    BYTE PTR [bx+si],al
  401027:	00 c7                	add    bh,al
  401029:	05 24 50             	add    ax,0x5024
  40102c:	40                   	inc    ax
  40102d:	00 01                	add    BYTE PTR [bx+di],al
  40102f:	00 00                	add    BYTE PTR [bx+si],al
  401031:	00 c7                	add    bh,al
  401033:	05 20 50             	add    ax,0x5020
  401036:	40                   	inc    ax
  401037:	00 01                	add    BYTE PTR [bx+di],al
  401039:	00 00                	add    BYTE PTR [bx+si],al
  40103b:	00 c7                	add    bh,al
  40103d:	05 30 50             	add    ax,0x5030
  401040:	40                   	inc    ax
  401041:	00 01                	add    BYTE PTR [bx+di],al
  401043:	00 00                	add    BYTE PTR [bx+si],al
  401045:	00 74 68             	add    BYTE PTR [si+0x68],dh
  401048:	a3 08 50             	mov    ds:0x5008,ax
  40104b:	40                   	inc    ax
  40104c:	00 a1 34 50          	add    BYTE PTR [bx+di+0x5034],ah
  401050:	40                   	inc    ax
  401051:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  401055:	4a                   	dec    dx
  401056:	c7 04 24 02          	mov    WORD PTR [si],0x224
  40105a:	00 00                	add    BYTE PTR [bx+si],al
  40105c:	00 e8                	add    al,ch
  40105e:	ca 15 00             	retf   0x15
  401061:	00 c7                	add    bh,al
  401063:	04 24                	add    al,0x24
  401065:	ff                   	(bad)  
  401066:	ff                   	(bad)  
  401067:	ff                   	(bad)  
  401068:	ff                   	(bad)  
  401069:	e8 62 06             	call   4016ce <__decode_pointer+0xe>
  40106c:	00 00                	add    BYTE PTR [bx+si],al
  40106e:	8b 15                	mov    dx,WORD PTR [di]
  401070:	38 50 40             	cmp    BYTE PTR [bx+si+0x40],dl
  401073:	00 a3 30 54          	add    BYTE PTR [bp+di+0x5430],ah
  401077:	40                   	inc    ax
  401078:	00 a3 34 54          	add    BYTE PTR [bp+di+0x5434],ah
  40107c:	40                   	inc    ax
  40107d:	00 a1 78 61          	add    BYTE PTR [bx+di+0x6178],ah
  401081:	40                   	inc    ax
  401082:	00 89 10 e8          	add    BYTE PTR [bx+di-0x17f0],cl
  401086:	d6                   	(bad)  
  401087:	08 00                	or     BYTE PTR [bx+si],al
  401089:	00 83 3d 18          	add    BYTE PTR [bp+di+0x183d],al
  40108d:	30 40 00             	xor    BYTE PTR [bx+si+0x0],al
  401090:	01 74 6d             	add    WORD PTR [si+0x6d],si
  401093:	31 c0                	xor    ax,ax
  401095:	83 c4 1c             	add    sp,0x1c
  401098:	c3                   	ret    
  401099:	8d b4 26 00          	lea    si,[si+0x26]
  40109d:	00 00                	add    BYTE PTR [bx+si],al
  40109f:	00 c7                	add    bh,al
  4010a1:	04 24                	add    al,0x24
  4010a3:	01 00                	add    WORD PTR [bx+si],ax
  4010a5:	00 00                	add    BYTE PTR [bx+si],al
  4010a7:	e8 80 15             	call   40262a <___chkstk_ms+0x2a>
  4010aa:	00 00                	add    BYTE PTR [bx+si],al
  4010ac:	eb b4                	jmp    401062 <_pre_c_init+0x52>
  4010ae:	66 90                	xchg   eax,eax
  4010b0:	8b 15                	mov    dx,WORD PTR [di]
  4010b2:	3c 00                	cmp    al,0x0
  4010b4:	40                   	inc    ax
  4010b5:	00 81 ba 00          	add    BYTE PTR [bx+di+0xba],al
  4010b9:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  4010bc:	50                   	push   ax
  4010bd:	45                   	inc    bp
  4010be:	00 00                	add    BYTE PTR [bx+si],al
  4010c0:	8d 8a 00 00          	lea    cx,[bp+si+0x0]
  4010c4:	40                   	inc    ax
  4010c5:	00 75 80             	add    BYTE PTR [di-0x80],dh
  4010c8:	0f b7 51 18          	movzx  dx,WORD PTR [bx+di+0x18]
  4010cc:	66 81 fa 0b 01 74 3f 	cmp    edx,0x3f74010b
  4010d3:	66 81 fa 0b 02 0f 85 	cmp    edx,0x850f020b
  4010da:	6a ff                	push   0xffff
  4010dc:	ff                   	(bad)  
  4010dd:	ff 83 b9 84          	inc    WORD PTR [bp+di-0x7b47]
  4010e1:	00 00                	add    BYTE PTR [bx+si],al
  4010e3:	00 0e 0f 86          	add    BYTE PTR ds:0x860f,cl
  4010e7:	5d                   	pop    bp
  4010e8:	ff                   	(bad)  
  4010e9:	ff                   	(bad)  
  4010ea:	ff 8b 91 f8          	dec    WORD PTR [bp+di-0x76f]
  4010ee:	00 00                	add    BYTE PTR [bx+si],al
  4010f0:	00 31                	add    BYTE PTR [bx+di],dh
  4010f2:	c0 85 d2 0f 95       	rol    BYTE PTR [di+0xfd2],0x95
  4010f7:	c0 e9 4b             	shr    cl,0x4b
  4010fa:	ff                   	(bad)  
  4010fb:	ff                   	(bad)  
  4010fc:	ff 8d 76 00          	dec    WORD PTR [di+0x76]
  401100:	c7 04 24 d0          	mov    WORD PTR [si],0xd024
  401104:	19 40 00             	sbb    WORD PTR [bx+si+0x0],ax
  401107:	e8 b4 08             	call   4019be <___mingw_raise_matherr+0x4e>
  40110a:	00 00                	add    BYTE PTR [bx+si],al
  40110c:	31 c0                	xor    ax,ax
  40110e:	83 c4 1c             	add    sp,0x1c
  401111:	c3                   	ret    
  401112:	83 79 74 0e          	cmp    WORD PTR [bx+di+0x74],0xe
  401116:	0f 86 2c ff          	jbe    401046 <_pre_c_init+0x36>
  40111a:	ff                   	(bad)  
  40111b:	ff 8b 89 e8          	dec    WORD PTR [bp+di-0x1777]
  40111f:	00 00                	add    BYTE PTR [bx+si],al
  401121:	00 31                	add    BYTE PTR [bx+di],dh
  401123:	c0 85 c9 0f 95       	rol    BYTE PTR [di+0xfc9],0x95
  401128:	c0 e9 1a             	shr    cl,0x1a
  40112b:	ff                   	(bad)  
  40112c:	ff                   	(bad)  
  40112d:	ff 66 90             	jmp    WORD PTR [bp-0x70]

00401130 <_pre_cpp_init>:
  401130:	83 ec 2c             	sub    sp,0x2c
  401133:	a1 3c 50             	mov    ax,ds:0x503c
  401136:	40                   	inc    ax
  401137:	00 c7                	add    bh,al
  401139:	44                   	inc    sp
  40113a:	24 10                	and    al,0x10
  40113c:	00 50 40             	add    BYTE PTR [bx+si+0x40],dl
  40113f:	00 c7                	add    bh,al
  401141:	44                   	inc    sp
  401142:	24 08                	and    al,0x8
  401144:	14 50                	adc    al,0x50
  401146:	40                   	inc    ax
  401147:	00 c7                	add    bh,al
  401149:	44                   	inc    sp
  40114a:	24 04                	and    al,0x4
  40114c:	18 50 40             	sbb    BYTE PTR [bx+si+0x40],dl
  40114f:	00 c7                	add    bh,al
  401151:	04 24                	add    al,0x24
  401153:	1c 50                	sbb    al,0x50
  401155:	40                   	inc    ax
  401156:	00 a3 00 50          	add    BYTE PTR [bp+di+0x5000],ah
  40115a:	40                   	inc    ax
  40115b:	00 a1 40 50          	add    BYTE PTR [bx+di+0x5040],ah
  40115f:	40                   	inc    ax
  401160:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401164:	0c e8                	or     al,0xe8
  401166:	ca 14 00             	retf   0x14
  401169:	00 a3 10 50          	add    BYTE PTR [bp+di+0x5010],ah
  40116d:	40                   	inc    ax
  40116e:	00 83 c4 2c          	add    BYTE PTR [bp+di+0x2cc4],al
  401172:	c3                   	ret    
  401173:	8d b6 00 00          	lea    si,[bp+0x0]
  401177:	00 00                	add    BYTE PTR [bx+si],al
  401179:	8d bc 27 00          	lea    di,[si+0x27]
  40117d:	00 00                	add    BYTE PTR [bx+si],al
	...

00401180 <___tmainCRTStartup>:
  401180:	55                   	push   bp
  401181:	31 c0                	xor    ax,ax
  401183:	b9 11 00             	mov    cx,0x11
  401186:	00 00                	add    BYTE PTR [bx+si],al
  401188:	89 e5                	mov    bp,sp
  40118a:	57                   	push   di
  40118b:	56                   	push   si
  40118c:	8d 55 a4             	lea    dx,[di-0x5c]
  40118f:	53                   	push   bx
  401190:	89 d7                	mov    di,dx
  401192:	83 ec 7c             	sub    sp,0x7c
  401195:	f3 ab                	rep stos WORD PTR es:[di],ax
  401197:	b0 30                	mov    al,0x30
  401199:	e8 62 14             	call   4025fe <___mingw_enum_import_library_names+0x9e>
  40119c:	00 00                	add    BYTE PTR [bx+si],al
  40119e:	29 c4                	sub    sp,ax
  4011a0:	8d 44 24             	lea    ax,[si+0x24]
  4011a3:	1b 83 e0 f0          	sbb    ax,WORD PTR [bp+di-0xf20]
  4011a7:	c7 00 cc cc          	mov    WORD PTR [bx+si],0xcccc
  4011ab:	cc                   	int3   
  4011ac:	cc                   	int3   
  4011ad:	c7 40 04 cc cc       	mov    WORD PTR [bx+si+0x4],0xcccc
  4011b2:	cc                   	int3   
  4011b3:	cc                   	int3   
  4011b4:	c7 40 08 cc cc       	mov    WORD PTR [bx+si+0x8],0xcccc
  4011b9:	cc                   	int3   
  4011ba:	cc                   	int3   
  4011bb:	c7 40 0c cc cc       	mov    WORD PTR [bx+si+0xc],0xcccc
  4011c0:	cc                   	int3   
  4011c1:	cc                   	int3   
  4011c2:	c7 40 10 cc cc       	mov    WORD PTR [bx+si+0x10],0xcccc
  4011c7:	cc                   	int3   
  4011c8:	cc                   	int3   
  4011c9:	c7 40 14 cc cc       	mov    WORD PTR [bx+si+0x14],0xcccc
  4011ce:	cc                   	int3   
  4011cf:	cc                   	int3   
  4011d0:	c7 40 18 cc cc       	mov    WORD PTR [bx+si+0x18],0xcccc
  4011d5:	cc                   	int3   
  4011d6:	cc                   	int3   
  4011d7:	c7 40 1c cc cc       	mov    WORD PTR [bx+si+0x1c],0xcccc
  4011dc:	cc                   	int3   
  4011dd:	cc                   	int3   
  4011de:	83 e4 f0             	and    sp,0xfff0
  4011e1:	8b 35                	mov    si,WORD PTR [di]
  4011e3:	34 50                	xor    al,0x50
  4011e5:	40                   	inc    ax
  4011e6:	00 85 f6 0f          	add    BYTE PTR [di+0xff6],al
  4011ea:	85 81 02 00          	test   WORD PTR [bx+di+0x2],ax
  4011ee:	00 64 a1             	add    BYTE PTR [si-0x5f],ah
  4011f1:	18 00                	sbb    BYTE PTR [bx+si],al
  4011f3:	00 00                	add    BYTE PTR [bx+si],al
  4011f5:	31 f6                	xor    si,si
  4011f7:	8b 58 04             	mov    bx,WORD PTR [bx+si+0x4]
  4011fa:	8b 3d                	mov    di,WORD PTR [di]
  4011fc:	38 61 40             	cmp    BYTE PTR [bx+di+0x40],ah
  4011ff:	00 eb                	add    bl,ch
  401201:	14 39                	adc    al,0x39
  401203:	d8 0f                	fmul   DWORD PTR [bx]
  401205:	84 07                	test   BYTE PTR [bx],al
  401207:	02 00                	add    al,BYTE PTR [bx+si]
  401209:	00 c7                	add    bh,al
  40120b:	04 24                	add    al,0x24
  40120d:	e8 03 00             	call   401213 <___tmainCRTStartup+0x93>
  401210:	00 ff                	add    bh,bh
  401212:	d7                   	xlat   BYTE PTR ds:[bx]
  401213:	83 ec 04             	sub    sp,0x4
  401216:	89 f0                	mov    ax,si
  401218:	f0 0f b1 1d          	lock cmpxchg WORD PTR [di],bx
  40121c:	38 54 40             	cmp    BYTE PTR [si+0x40],dl
  40121f:	00 85 c0 75          	add    BYTE PTR [di+0x75c0],al
  401223:	de a1 3c 54          	fisub  WORD PTR [bx+di+0x543c]
  401227:	40                   	inc    ax
  401228:	00 31                	add    BYTE PTR [bx+di],dh
  40122a:	db 83 f8 01          	fild   DWORD PTR [bp+di+0x1f8]
  40122e:	0f 84 f0 01          	je     401422 <___tmainCRTStartup+0x2a2>
  401232:	00 00                	add    BYTE PTR [bx+si],al
  401234:	a1 3c 54             	mov    ax,ds:0x543c
  401237:	40                   	inc    ax
  401238:	00 85 c0 0f          	add    BYTE PTR [di+0xfc0],al
  40123c:	84 40 02             	test   BYTE PTR [bx+si+0x2],al
  40123f:	00 00                	add    BYTE PTR [bx+si],al
  401241:	c7 05 04 50          	mov    WORD PTR [di],0x5004
  401245:	40                   	inc    ax
  401246:	00 01                	add    BYTE PTR [bx+di],al
  401248:	00 00                	add    BYTE PTR [bx+si],al
  40124a:	00 a1 3c 54          	add    BYTE PTR [bx+di+0x543c],ah
  40124e:	40                   	inc    ax
  40124f:	00 83 f8 01          	add    BYTE PTR [bp+di+0x1f8],al
  401253:	0f 84 e5 01          	je     40143c <___tmainCRTStartup+0x2bc>
  401257:	00 00                	add    BYTE PTR [bx+si],al
  401259:	85 db                	test   bx,bx
  40125b:	0f 84 03 02          	je     401462 <___tmainCRTStartup+0x2e2>
  40125f:	00 00                	add    BYTE PTR [bx+si],al
  401261:	a1 00 40             	mov    ax,ds:0x4000
  401264:	40                   	inc    ax
  401265:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  401269:	1c c7                	sbb    al,0xc7
  40126b:	44                   	inc    sp
  40126c:	24 08                	and    al,0x8
  40126e:	00 00                	add    BYTE PTR [bx+si],al
  401270:	00 00                	add    BYTE PTR [bx+si],al
  401272:	c7 44 24 04 02       	mov    WORD PTR [si+0x24],0x204
  401277:	00 00                	add    BYTE PTR [bx+si],al
  401279:	00 c7                	add    bh,al
  40127b:	04 24                	add    al,0x24
  40127d:	00 00                	add    BYTE PTR [bx+si],al
  40127f:	00 00                	add    BYTE PTR [bx+si],al
  401281:	ff d0                	call   ax
  401283:	83 ec 0c             	sub    sp,0xc
  401286:	e8 45 09             	call   401bce <_mark_section_writable+0x13e>
  401289:	00 00                	add    BYTE PTR [bx+si],al
  40128b:	c7 04 24 c0          	mov    WORD PTR [si],0xc024
  40128f:	17                   	pop    ss
  401290:	40                   	inc    ax
  401291:	00 ff                	add    bh,bh
  401293:	15 34 61             	adc    ax,0x6134
  401296:	40                   	inc    ax
  401297:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  40129b:	a3 44 50             	mov    ds:0x5044,ax
  40129e:	40                   	inc    ax
  40129f:	00 c7                	add    bh,al
  4012a1:	04 24                	add    al,0x24
  4012a3:	00 10                	add    BYTE PTR [bx+si],dl
  4012a5:	40                   	inc    ax
  4012a6:	00 e8                	add    al,ch
  4012a8:	a4                   	movs   BYTE PTR es:[di],BYTE PTR ds:[si]
  4012a9:	13 00                	adc    ax,WORD PTR [bx+si]
  4012ab:	00 e8                	add    al,ch
  4012ad:	df 0b                	fisttp WORD PTR [bp+di]
  4012af:	00 00                	add    BYTE PTR [bx+si],al
  4012b1:	a1 6c 61             	mov    ax,ds:0x616c
  4012b4:	40                   	inc    ax
  4012b5:	00 c7                	add    bh,al
  4012b7:	05 2c 54             	add    ax,0x542c
  4012ba:	40                   	inc    ax
  4012bb:	00 00                	add    BYTE PTR [bx+si],al
  4012bd:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  4012c0:	8b 00                	mov    ax,WORD PTR [bx+si]
  4012c2:	85 c0                	test   ax,ax
  4012c4:	74 4e                	je     401314 <___tmainCRTStartup+0x194>
  4012c6:	31 c9                	xor    cx,cx
  4012c8:	eb 17                	jmp    4012e1 <___tmainCRTStartup+0x161>
  4012ca:	8d b6 00 00          	lea    si,[bp+0x0]
  4012ce:	00 00                	add    BYTE PTR [bx+si],al
  4012d0:	84 d2                	test   dl,dl
  4012d2:	74 3b                	je     40130f <___tmainCRTStartup+0x18f>
  4012d4:	83 e1 01             	and    cx,0x1
  4012d7:	74 2b                	je     401304 <___tmainCRTStartup+0x184>
  4012d9:	b9 01 00             	mov    cx,0x1
  4012dc:	00 00                	add    BYTE PTR [bx+si],al
  4012de:	83 c0 01             	add    ax,0x1
  4012e1:	0f b6 10             	movzx  dx,BYTE PTR [bx+si]
  4012e4:	80 fa 20             	cmp    dl,0x20
  4012e7:	7e e7                	jle    4012d0 <___tmainCRTStartup+0x150>
  4012e9:	89 cb                	mov    bx,cx
  4012eb:	83 f3 01             	xor    bx,0x1
  4012ee:	80 fa 22             	cmp    dl,0x22
  4012f1:	0f 44 cb             	cmove  cx,bx
  4012f4:	eb e8                	jmp    4012de <___tmainCRTStartup+0x15e>
  4012f6:	8d 76 00             	lea    si,[bp+0x0]
  4012f9:	8d bc 27 00          	lea    di,[si+0x27]
  4012fd:	00 00                	add    BYTE PTR [bx+si],al
  4012ff:	00 84 d2 74          	add    BYTE PTR [si+0x74d2],al
  401303:	0b 83 c0 01          	or     ax,WORD PTR [bp+di+0x1c0]
  401307:	0f b6 10             	movzx  dx,BYTE PTR [bx+si]
  40130a:	80 fa 20             	cmp    dl,0x20
  40130d:	7e f1                	jle    401300 <___tmainCRTStartup+0x180>
  40130f:	a3 28 54             	mov    ds:0x5428,ax
  401312:	40                   	inc    ax
  401313:	00 8b 1d 34          	add    BYTE PTR [bp+di+0x341d],cl
  401317:	50                   	push   ax
  401318:	40                   	inc    ax
  401319:	00 85 db 74          	add    BYTE PTR [di+0x74db],al
  40131d:	15 0f b7             	adc    ax,0xb70f
  401320:	55                   	push   bp
  401321:	d4 f6                	aam    0xf6
  401323:	45                   	inc    bp
  401324:	d0 01                	rol    BYTE PTR [bx+di],1
  401326:	b8 0a 00             	mov    ax,0xa
  401329:	00 00                	add    BYTE PTR [bx+si],al
  40132b:	0f 45 c2             	cmovne ax,dx
  40132e:	a3 00 30             	mov    ds:0x3000,ax
  401331:	40                   	inc    ax
  401332:	00 a1 1c 50          	add    BYTE PTR [bx+di+0x501c],ah
  401336:	40                   	inc    ax
  401337:	00 89 45 90          	add    BYTE PTR [bx+di-0x6fbb],cl
  40133b:	89 c6                	mov    si,ax
  40133d:	8d 04                	lea    ax,[si]
  40133f:	85 04                	test   WORD PTR [si],ax
  401341:	00 00                	add    BYTE PTR [bx+si],al
  401343:	00 89 45 8c          	add    BYTE PTR [bx+di-0x73bb],cl
  401347:	89 04                	mov    WORD PTR [si],ax
  401349:	24 e8                	and    al,0xe8
  40134b:	11 13                	adc    WORD PTR [bp+di],dx
  40134d:	00 00                	add    BYTE PTR [bx+si],al
  40134f:	85 f6                	test   si,si
  401351:	89 45 94             	mov    WORD PTR [di-0x6c],ax
  401354:	8b 3d                	mov    di,WORD PTR [di]
  401356:	18 50 40             	sbb    BYTE PTR [bx+si+0x40],dl
  401359:	00 0f                	add    BYTE PTR [bx],cl
  40135b:	8e 44 01             	mov    es,WORD PTR [si+0x1]
  40135e:	00 00                	add    BYTE PTR [bx+si],al
  401360:	31 db                	xor    bx,bx
  401362:	89 fe                	mov    si,di
  401364:	8b 04                	mov    ax,WORD PTR [si]
  401366:	9e                   	sahf   
  401367:	89 04                	mov    WORD PTR [si],ax
  401369:	24 e8                	and    al,0xe8
  40136b:	f9                   	stc    
  40136c:	12 00                	adc    al,BYTE PTR [bx+si]
  40136e:	00 8d 78 01          	add    BYTE PTR [di+0x178],cl
  401372:	89 3c                	mov    WORD PTR [si],di
  401374:	24 e8                	and    al,0xe8
  401376:	e6 12                	out    0x12,al
  401378:	00 00                	add    BYTE PTR [bx+si],al
  40137a:	8b 4d 94             	mov    cx,WORD PTR [di-0x6c]
  40137d:	89 04                	mov    WORD PTR [si],ax
  40137f:	99                   	cwd    
  401380:	8b 0c                	mov    cx,WORD PTR [si]
  401382:	9e                   	sahf   
  401383:	83 c3 01             	add    bx,0x1
  401386:	89 7c 24             	mov    WORD PTR [si+0x24],di
  401389:	08 89 04 24          	or     BYTE PTR [bx+di+0x2404],cl
  40138d:	89 4c 24             	mov    WORD PTR [si+0x24],cx
  401390:	04 e8                	add    al,0xe8
  401392:	da 12                	ficom  DWORD PTR [bp+si]
  401394:	00 00                	add    BYTE PTR [bx+si],al
  401396:	3b 5d 90             	cmp    bx,WORD PTR [di-0x70]
  401399:	75 c9                	jne    401364 <___tmainCRTStartup+0x1e4>
  40139b:	8b 45 8c             	mov    ax,WORD PTR [di-0x74]
  40139e:	83 e8 04             	sub    ax,0x4
  4013a1:	8b 75 94             	mov    si,WORD PTR [di-0x6c]
  4013a4:	c7 04 06 00          	mov    WORD PTR [si],0x6
  4013a8:	00 00                	add    BYTE PTR [bx+si],al
  4013aa:	00 89 35 18          	add    BYTE PTR [bx+di+0x1835],cl
  4013ae:	50                   	push   ax
  4013af:	40                   	inc    ax
  4013b0:	00 e8                	add    al,ch
  4013b2:	6a 0b                	push   0xb
  4013b4:	00 00                	add    BYTE PTR [bx+si],al
  4013b6:	a1 5c 61             	mov    ax,ds:0x615c
  4013b9:	40                   	inc    ax
  4013ba:	00 8b 15 14          	add    BYTE PTR [bp+di+0x1415],cl
  4013be:	50                   	push   ax
  4013bf:	40                   	inc    ax
  4013c0:	00 89 10 a1          	add    BYTE PTR [bx+di-0x5ef0],cl
  4013c4:	14 50                	adc    al,0x50
  4013c6:	40                   	inc    ax
  4013c7:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  4013cb:	08 a1 18 50          	or     BYTE PTR [bx+di+0x5018],ah
  4013cf:	40                   	inc    ax
  4013d0:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  4013d4:	04 a1                	add    al,0xa1
  4013d6:	1c 50                	sbb    al,0x50
  4013d8:	40                   	inc    ax
  4013d9:	00 89 04 24          	add    BYTE PTR [bx+di+0x2404],cl
  4013dd:	e8 69 01             	call   401549 <_getname+0x49>
  4013e0:	00 00                	add    BYTE PTR [bx+si],al
  4013e2:	8b 0d                	mov    cx,WORD PTR [di]
  4013e4:	08 50 40             	or     BYTE PTR [bx+si+0x40],dl
  4013e7:	00 a3 0c 50          	add    BYTE PTR [bp+di+0x500c],ah
  4013eb:	40                   	inc    ax
  4013ec:	00 85 c9 0f          	add    BYTE PTR [di+0xfc9],al
  4013f0:	84 b6 00 00          	test   BYTE PTR [bp+0x0],dh
  4013f4:	00 8b 15 04          	add    BYTE PTR [bp+di+0x415],cl
  4013f8:	50                   	push   ax
  4013f9:	40                   	inc    ax
  4013fa:	00 85 d2 75          	add    BYTE PTR [di+0x75d2],al
  4013fe:	0a e8                	or     ch,al
  401400:	74 12                	je     401414 <___tmainCRTStartup+0x294>
  401402:	00 00                	add    BYTE PTR [bx+si],al
  401404:	a1 0c 50             	mov    ax,ds:0x500c
  401407:	40                   	inc    ax
  401408:	00 8d 65 f4          	add    BYTE PTR [di-0xb9b],cl
  40140c:	5b                   	pop    bx
  40140d:	5e                   	pop    si
  40140e:	5f                   	pop    di
  40140f:	5d                   	pop    bp
  401410:	c3                   	ret    
  401411:	a1 3c 54             	mov    ax,ds:0x543c
  401414:	40                   	inc    ax
  401415:	00 bb 01 00          	add    BYTE PTR [bp+di+0x1],bh
  401419:	00 00                	add    BYTE PTR [bx+si],al
  40141b:	83 f8 01             	cmp    ax,0x1
  40141e:	0f 85 10 fe          	jne    401232 <___tmainCRTStartup+0xb2>
  401422:	ff                   	(bad)  
  401423:	ff c7                	inc    di
  401425:	04 24                	add    al,0x24
  401427:	1f                   	pop    ds
  401428:	00 00                	add    BYTE PTR [bx+si],al
  40142a:	00 e8                	add    al,ch
  40142c:	50                   	push   ax
  40142d:	12 00                	adc    al,BYTE PTR [bx+si]
  40142f:	00 a1 3c 54          	add    BYTE PTR [bx+di+0x543c],ah
  401433:	40                   	inc    ax
  401434:	00 83 f8 01          	add    BYTE PTR [bp+di+0x1f8],al
  401438:	0f 85 1b fe          	jne    401257 <___tmainCRTStartup+0xd7>
  40143c:	ff                   	(bad)  
  40143d:	ff c7                	inc    di
  40143f:	44                   	inc    sp
  401440:	24 04                	and    al,0x4
  401442:	08 70 40             	or     BYTE PTR [bx+si+0x40],dh
  401445:	00 c7                	add    bh,al
  401447:	04 24                	add    al,0x24
  401449:	00 70 40             	add    BYTE PTR [bx+si+0x40],dh
  40144c:	00 e8                	add    al,ch
  40144e:	36 12 00             	adc    al,BYTE PTR ss:[bx+si]
  401451:	00 85 db c7          	add    BYTE PTR [di-0x3825],al
  401455:	05 3c 54             	add    ax,0x543c
  401458:	40                   	inc    ax
  401459:	00 02                	add    BYTE PTR [bp+si],al
  40145b:	00 00                	add    BYTE PTR [bx+si],al
  40145d:	00 0f                	add    BYTE PTR [bx],cl
  40145f:	85 fd                	test   bp,di
  401461:	fd                   	std    
  401462:	ff                   	(bad)  
  401463:	ff 87 1d 38          	inc    WORD PTR [bx+0x381d]
  401467:	54                   	push   sp
  401468:	40                   	inc    ax
  401469:	00 e9                	add    cl,ch
  40146b:	f2 fd                	repnz std 
  40146d:	ff                   	(bad)  
  40146e:	ff 90 89 14          	call   WORD PTR [bx+si+0x1489]
  401472:	24 ff                	and    al,0xff
  401474:	15 1c 61             	adc    ax,0x611c
  401477:	40                   	inc    ax
  401478:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  40147c:	e9 6e fd             	jmp    4011ed <___tmainCRTStartup+0x6d>
  40147f:	ff                   	(bad)  
  401480:	ff c7                	inc    di
  401482:	05 3c 54             	add    ax,0x543c
  401485:	40                   	inc    ax
  401486:	00 01                	add    BYTE PTR [bx+di],al
  401488:	00 00                	add    BYTE PTR [bx+si],al
  40148a:	00 c7                	add    bh,al
  40148c:	44                   	inc    sp
  40148d:	24 04                	and    al,0x4
  40148f:	18 70 40             	sbb    BYTE PTR [bx+si+0x40],dh
  401492:	00 c7                	add    bh,al
  401494:	04 24                	add    al,0x24
  401496:	0c 70                	or     al,0x70
  401498:	40                   	inc    ax
  401499:	00 e8                	add    al,ch
  40149b:	e9 11 00             	jmp    4014af <___tmainCRTStartup+0x32f>
  40149e:	00 e9                	add    cl,ch
  4014a0:	a7                   	cmps   WORD PTR ds:[si],WORD PTR es:[di]
  4014a1:	fd                   	std    
  4014a2:	ff                   	(bad)  
  4014a3:	ff 31                	push   WORD PTR [bx+di]
  4014a5:	c0 e9 f6             	shr    cl,0xf6
  4014a8:	fe                   	(bad)  
  4014a9:	ff                   	(bad)  
  4014aa:	ff 89 04 24          	dec    WORD PTR [bx+di+0x2404]
  4014ae:	e8 dd 11             	call   40268e <__initterm+0x6>
  4014b1:	00 00                	add    BYTE PTR [bx+si],al
  4014b3:	8d b6 00 00          	lea    si,[bp+0x0]
  4014b7:	00 00                	add    BYTE PTR [bx+si],al
  4014b9:	8d bc 27 00          	lea    di,[si+0x27]
  4014bd:	00 00                	add    BYTE PTR [bx+si],al
	...

004014c0 <_WinMainCRTStartup>:
  4014c0:	83 ec 0c             	sub    sp,0xc
  4014c3:	c7 05 34 50          	mov    WORD PTR [di],0x5034
  4014c7:	40                   	inc    ax
  4014c8:	00 01                	add    BYTE PTR [bx+di],al
  4014ca:	00 00                	add    BYTE PTR [bx+si],al
  4014cc:	00 e8                	add    al,ch
  4014ce:	6e                   	outs   dx,BYTE PTR ds:[si]
  4014cf:	0a 00                	or     al,BYTE PTR [bx+si]
  4014d1:	00 83 c4 0c          	add    BYTE PTR [bp+di+0xcc4],al
  4014d5:	e9 a6 fc             	jmp    40117e <_pre_cpp_init+0x4e>
  4014d8:	ff                   	(bad)  
  4014d9:	ff 8d b6 00          	dec    WORD PTR [di+0xb6]
  4014dd:	00 00                	add    BYTE PTR [bx+si],al
	...

004014e0 <_mainCRTStartup>:
  4014e0:	83 ec 0c             	sub    sp,0xc
  4014e3:	c7 05 34 50          	mov    WORD PTR [di],0x5034
  4014e7:	40                   	inc    ax
  4014e8:	00 00                	add    BYTE PTR [bx+si],al
  4014ea:	00 00                	add    BYTE PTR [bx+si],al
  4014ec:	00 e8                	add    al,ch
  4014ee:	4e                   	dec    si
  4014ef:	0a 00                	or     al,BYTE PTR [bx+si]
  4014f1:	00 83 c4 0c          	add    BYTE PTR [bp+di+0xcc4],al
  4014f5:	e9 86 fc             	jmp    40117e <_pre_cpp_init+0x4e>
  4014f8:	ff                   	(bad)  
  4014f9:	ff 90 90 90          	call   WORD PTR [bx+si-0x6f70]
  4014fd:	90                   	nop
  4014fe:	90                   	nop
  4014ff:	90                   	nop

00401500 <_getname>:
  401500:	55                   	push   bp
  401501:	89 e5                	mov    bp,sp
  401503:	83 ec 18             	sub    sp,0x18
  401506:	8b 45 08             	mov    ax,WORD PTR [di+0x8]
  401509:	89 04                	mov    WORD PTR [si],ax
  40150b:	24 e8                	and    al,0xe8
  40150d:	87 11                	xchg   WORD PTR [bx+di],dx
  40150f:	00 00                	add    BYTE PTR [bx+si],al
  401511:	8b 45 08             	mov    ax,WORD PTR [di+0x8]
  401514:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  401517:	84 c0                	test   al,al
  401519:	75 07                	jne    401522 <_getname+0x22>
  40151b:	b8 01 00             	mov    ax,0x1
  40151e:	00 00                	add    BYTE PTR [bx+si],al
  401520:	eb 27                	jmp    401549 <_getname+0x49>
  401522:	8b 45 08             	mov    ax,WORD PTR [di+0x8]
  401525:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  401528:	3c 51                	cmp    al,0x51
  40152a:	75 07                	jne    401533 <_getname+0x33>
  40152c:	b8 01 00             	mov    ax,0x1
  40152f:	00 00                	add    BYTE PTR [bx+si],al
  401531:	eb 16                	jmp    401549 <_getname+0x49>
  401533:	8b 45 08             	mov    ax,WORD PTR [di+0x8]
  401536:	0f b6 00             	movzx  ax,BYTE PTR [bx+si]
  401539:	3c 71                	cmp    al,0x71
  40153b:	75 07                	jne    401544 <_getname+0x44>
  40153d:	b8 01 00             	mov    ax,0x1
  401540:	00 00                	add    BYTE PTR [bx+si],al
  401542:	eb 05                	jmp    401549 <_getname+0x49>
  401544:	b8 00 00             	mov    ax,0x0
  401547:	00 00                	add    BYTE PTR [bx+si],al
  401549:	c9                   	leave  
  40154a:	c3                   	ret    

0040154b <_main>:
  40154b:	55                   	push   bp
  40154c:	89 e5                	mov    bp,sp
  40154e:	83 e4 f0             	and    sp,0xfff0
  401551:	83 ec 40             	sub    sp,0x40
  401554:	e8 c7 09             	call   401f1e <___do_global_ctors+0x4e>
  401557:	00 00                	add    BYTE PTR [bx+si],al
  401559:	c7 44 24 14 50       	mov    WORD PTR [si+0x24],0x5014
  40155e:	6c                   	ins    BYTE PTR es:[di],dx
  40155f:	65 61                	gs popa 
  401561:	c7 44 24 18 73       	mov    WORD PTR [si+0x24],0x7318
  401566:	65 20 49 c7          	and    BYTE PTR gs:[bx+di-0x39],cl
  40156a:	44                   	inc    sp
  40156b:	24 1c                	and    al,0x1c
  40156d:	6e                   	outs   dx,BYTE PTR ds:[si]
  40156e:	70 75                	jo     4015e5 <___dyn_tls_dtor@12+0x15>
  401570:	74 c7                	je     401539 <_getname+0x39>
  401572:	44                   	inc    sp
  401573:	24 20                	and    al,0x20
  401575:	20 41 20             	and    BYTE PTR [bx+di+0x20],al
  401578:	53                   	push   bx
  401579:	c7 44 24 24 74       	mov    WORD PTR [si+0x24],0x7424
  40157e:	75 64                	jne    4015e4 <___dyn_tls_dtor@12+0x14>
  401580:	65 c7 44 24 28 6e    	mov    WORD PTR gs:[si+0x24],0x6e28
  401586:	74 27                	je     4015af <_main+0x64>
  401588:	73 c7                	jae    401551 <_main+0x6>
  40158a:	44                   	inc    sp
  40158b:	24 2c                	and    al,0x2c
  40158d:	20 4e 61             	and    BYTE PTR [bp+0x61],cl
  401590:	6d                   	ins    WORD PTR es:[di],dx
  401591:	66 c7 44 24 30 65 00 	mov    DWORD PTR [si+0x24],0x8d006530
  401598:	8d 
  401599:	44                   	inc    sp
  40159a:	24 14                	and    al,0x14
  40159c:	89 04                	mov    WORD PTR [si],ax
  40159e:	24 e8                	and    al,0xe8
  4015a0:	fc                   	cld    
  4015a1:	10 00                	adc    BYTE PTR [bx+si],al
  4015a3:	00 8d 44 24          	add    BYTE PTR [di+0x2444],cl
  4015a7:	32 89 04 24          	xor    cl,BYTE PTR [bx+di+0x2404]
  4015ab:	e8 50 ff             	call   4014fe <_mainCRTStartup+0x1e>
  4015ae:	ff                   	(bad)  
  4015af:	ff 89 44 24          	dec    WORD PTR [bx+di+0x2444]
  4015b3:	3c 83                	cmp    al,0x83
  4015b5:	7c 24                	jl     4015db <___dyn_tls_dtor@12+0xb>
  4015b7:	3c 00                	cmp    al,0x0
  4015b9:	75 dd                	jne    401598 <_main+0x4d>
  4015bb:	b8 00 00             	mov    ax,0x0
  4015be:	00 00                	add    BYTE PTR [bx+si],al
  4015c0:	c9                   	leave  
  4015c1:	c3                   	ret    
  4015c2:	90                   	nop
  4015c3:	90                   	nop
  4015c4:	66 90                	xchg   eax,eax
  4015c6:	66 90                	xchg   eax,eax
  4015c8:	66 90                	xchg   eax,eax
  4015ca:	66 90                	xchg   eax,eax
  4015cc:	66 90                	xchg   eax,eax
  4015ce:	66 90                	xchg   eax,eax

004015d0 <___dyn_tls_dtor@12>:
  4015d0:	83 ec 1c             	sub    sp,0x1c
  4015d3:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4015d6:	24 85                	and    al,0x85
  4015d8:	c0                   	(bad)  
  4015d9:	74 15                	je     4015f0 <___dyn_tls_dtor@12+0x20>
  4015db:	83 f8 03             	cmp    ax,0x3
  4015de:	74 10                	je     4015f0 <___dyn_tls_dtor@12+0x20>
  4015e0:	b8 01 00             	mov    ax,0x1
  4015e3:	00 00                	add    BYTE PTR [bx+si],al
  4015e5:	83 c4 1c             	add    sp,0x1c
  4015e8:	c2 0c 00             	ret    0xc
  4015eb:	90                   	nop
  4015ec:	8d 74 26             	lea    si,[si+0x26]
  4015ef:	00 8b 54 24          	add    BYTE PTR [bp+di+0x2454],cl
  4015f3:	28 89 44 24          	sub    BYTE PTR [bx+di+0x2444],cl
  4015f7:	04 8b                	add    al,0x8b
  4015f9:	44                   	inc    sp
  4015fa:	24 20                	and    al,0x20
  4015fc:	89 54 24             	mov    WORD PTR [si+0x24],dx
  4015ff:	08 89 04 24          	or     BYTE PTR [bx+di+0x2404],cl
  401603:	e8 08 0c             	call   40220e <____w64_mingwthr_remove_key_dtor+0x9e>
  401606:	00 00                	add    BYTE PTR [bx+si],al
  401608:	b8 01 00             	mov    ax,0x1
  40160b:	00 00                	add    BYTE PTR [bx+si],al
  40160d:	83 c4 1c             	add    sp,0x1c
  401610:	c2 0c 00             	ret    0xc
  401613:	8d b6 00 00          	lea    si,[bp+0x0]
  401617:	00 00                	add    BYTE PTR [bx+si],al
  401619:	8d bc 27 00          	lea    di,[si+0x27]
  40161d:	00 00                	add    BYTE PTR [bx+si],al
	...

00401620 <___dyn_tls_init@12>:
  401620:	53                   	push   bx
  401621:	83 ec 18             	sub    sp,0x18
  401624:	83 3d 14             	cmp    WORD PTR [di],0x14
  401627:	30 40 00             	xor    BYTE PTR [bx+si+0x0],al
  40162a:	02 8b 44 24          	add    cl,BYTE PTR [bp+di+0x2444]
  40162e:	24 74                	and    al,0x74
  401630:	0a c7                	or     al,bh
  401632:	05 14 30             	add    ax,0x3014
  401635:	40                   	inc    ax
  401636:	00 02                	add    BYTE PTR [bp+si],al
  401638:	00 00                	add    BYTE PTR [bx+si],al
  40163a:	00 83 f8 02          	add    BYTE PTR [bp+di+0x2f8],al
  40163e:	74 11                	je     401651 <___dyn_tls_init@12+0x31>
  401640:	83 f8 01             	cmp    ax,0x1
  401643:	74 3b                	je     401680 <___dyn_tls_init@12+0x60>
  401645:	83 c4 18             	add    sp,0x18
  401648:	b8 01 00             	mov    ax,0x1
  40164b:	00 00                	add    BYTE PTR [bx+si],al
  40164d:	5b                   	pop    bx
  40164e:	c2 0c 00             	ret    0xc
  401651:	bb 30 70             	mov    bx,0x7030
  401654:	40                   	inc    ax
  401655:	00 81 fb 30          	add    BYTE PTR [bx+di+0x30fb],al
  401659:	70 40                	jo     40169b <___dyn_tls_init@12+0x7b>
  40165b:	00 74 e7             	add    BYTE PTR [si-0x19],dh
  40165e:	66 90                	xchg   eax,eax
  401660:	8b 03                	mov    ax,WORD PTR [bp+di]
  401662:	85 c0                	test   ax,ax
  401664:	74 02                	je     401668 <___dyn_tls_init@12+0x48>
  401666:	ff d0                	call   ax
  401668:	83 c3 04             	add    bx,0x4
  40166b:	81 fb 30 70          	cmp    bx,0x7030
  40166f:	40                   	inc    ax
  401670:	00 75 ed             	add    BYTE PTR [di-0x13],dh
  401673:	83 c4 18             	add    sp,0x18
  401676:	b8 01 00             	mov    ax,0x1
  401679:	00 00                	add    BYTE PTR [bx+si],al
  40167b:	5b                   	pop    bx
  40167c:	c2 0c 00             	ret    0xc
  40167f:	90                   	nop
  401680:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  401683:	28 c7                	sub    bh,al
  401685:	44                   	inc    sp
  401686:	24 04                	and    al,0x4
  401688:	01 00                	add    WORD PTR [bx+si],ax
  40168a:	00 00                	add    BYTE PTR [bx+si],al
  40168c:	89 44 24             	mov    WORD PTR [si+0x24],ax
  40168f:	08 8b 44 24          	or     BYTE PTR [bp+di+0x2444],cl
  401693:	20 89 04 24          	and    BYTE PTR [bx+di+0x2404],cl
  401697:	e8 74 0b             	call   40220e <____w64_mingwthr_remove_key_dtor+0x9e>
  40169a:	00 00                	add    BYTE PTR [bx+si],al
  40169c:	eb a7                	jmp    401645 <___dyn_tls_init@12+0x25>
  40169e:	66 90                	xchg   eax,eax

004016a0 <___tlregdtor>:
  4016a0:	31 c0                	xor    ax,ax
  4016a2:	c3                   	ret    
  4016a3:	90                   	nop
  4016a4:	90                   	nop
  4016a5:	90                   	nop
  4016a6:	90                   	nop
  4016a7:	90                   	nop
  4016a8:	90                   	nop
  4016a9:	90                   	nop
  4016aa:	90                   	nop
  4016ab:	90                   	nop
  4016ac:	90                   	nop
  4016ad:	90                   	nop
  4016ae:	90                   	nop
  4016af:	90                   	nop

004016b0 <_my_lconv_init>:
  4016b0:	a1 60 61             	mov    ax,ds:0x6160
  4016b3:	40                   	inc    ax
  4016b4:	00 ff                	add    bh,bh
  4016b6:	e0 90                	loopne 401648 <___dyn_tls_init@12+0x28>
  4016b8:	90                   	nop
  4016b9:	90                   	nop
  4016ba:	90                   	nop
  4016bb:	90                   	nop
  4016bc:	90                   	nop
  4016bd:	90                   	nop
  4016be:	90                   	nop
  4016bf:	90                   	nop

004016c0 <__decode_pointer>:
  4016c0:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4016c3:	04 c3                	add    al,0xc3
  4016c5:	8d 74 26             	lea    si,[si+0x26]
  4016c8:	00 8d bc 27          	add    BYTE PTR [di+0x27bc],cl
  4016cc:	00 00                	add    BYTE PTR [bx+si],al
	...

004016d0 <__encode_pointer>:
  4016d0:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4016d3:	04 c3                	add    al,0xc3
  4016d5:	90                   	nop
  4016d6:	90                   	nop
  4016d7:	90                   	nop
  4016d8:	90                   	nop
  4016d9:	90                   	nop
  4016da:	90                   	nop
  4016db:	90                   	nop
  4016dc:	90                   	nop
  4016dd:	90                   	nop
  4016de:	90                   	nop
  4016df:	90                   	nop

004016e0 <_mingw_onexit>:
  4016e0:	53                   	push   bx
  4016e1:	83 ec 28             	sub    sp,0x28
  4016e4:	a1 34 54             	mov    ax,ds:0x5434
  4016e7:	40                   	inc    ax
  4016e8:	00 89 04 24          	add    BYTE PTR [bx+di+0x2404],cl
  4016ec:	e8 cf ff             	call   4016be <_my_lconv_init+0xe>
  4016ef:	ff                   	(bad)  
  4016f0:	ff 83 f8 ff          	inc    WORD PTR [bp+di-0x8]
  4016f4:	89 44 24             	mov    WORD PTR [si+0x24],ax
  4016f7:	18 0f                	sbb    BYTE PTR [bx],cl
  4016f9:	84 82 00 00          	test   BYTE PTR [bp+si+0x0],al
  4016fd:	00 c7                	add    bh,al
  4016ff:	04 24                	add    al,0x24
  401701:	08 00                	or     BYTE PTR [bx+si],al
  401703:	00 00                	add    BYTE PTR [bx+si],al
  401705:	e8 9e 0f             	call   4026a6 <_puts+0x6>
  401708:	00 00                	add    BYTE PTR [bx+si],al
  40170a:	a1 34 54             	mov    ax,ds:0x5434
  40170d:	40                   	inc    ax
  40170e:	00 89 04 24          	add    BYTE PTR [bx+di+0x2404],cl
  401712:	e8 a9 ff             	call   4016be <_my_lconv_init+0xe>
  401715:	ff                   	(bad)  
  401716:	ff 89 44 24          	dec    WORD PTR [bx+di+0x2444]
  40171a:	18 a1 30 54          	sbb    BYTE PTR [bx+di+0x5430],ah
  40171e:	40                   	inc    ax
  40171f:	00 89 04 24          	add    BYTE PTR [bx+di+0x2404],cl
  401723:	e8 98 ff             	call   4016be <_my_lconv_init+0xe>
  401726:	ff                   	(bad)  
  401727:	ff 89 44 24          	dec    WORD PTR [bx+di+0x2444]
  40172b:	1c 8d                	sbb    al,0x8d
  40172d:	44                   	inc    sp
  40172e:	24 1c                	and    al,0x1c
  401730:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401733:	08 8d 44 24          	or     BYTE PTR [di+0x2444],cl
  401737:	18 89 44 24          	sbb    BYTE PTR [bx+di+0x2444],cl
  40173b:	04 8b                	add    al,0x8b
  40173d:	44                   	inc    sp
  40173e:	24 30                	and    al,0x30
  401740:	89 04                	mov    WORD PTR [si],ax
  401742:	24 e8                	and    al,0xe8
  401744:	68 0f 00             	push   0xf
  401747:	00 89 c3 8b          	add    BYTE PTR [bx+di-0x743d],cl
  40174b:	44                   	inc    sp
  40174c:	24 18                	and    al,0x18
  40174e:	89 04                	mov    WORD PTR [si],ax
  401750:	24 e8                	and    al,0xe8
  401752:	7a ff                	jp     401753 <_mingw_onexit+0x73>
  401754:	ff                   	(bad)  
  401755:	ff a3 34 54          	jmp    WORD PTR [bp+di+0x5434]
  401759:	40                   	inc    ax
  40175a:	00 8b 44 24          	add    BYTE PTR [bp+di+0x2444],cl
  40175e:	1c 89                	sbb    al,0x89
  401760:	04 24                	add    al,0x24
  401762:	e8 69 ff             	call   4016ce <__decode_pointer+0xe>
  401765:	ff                   	(bad)  
  401766:	ff c7                	inc    di
  401768:	04 24                	add    al,0x24
  40176a:	08 00                	or     BYTE PTR [bx+si],al
  40176c:	00 00                	add    BYTE PTR [bx+si],al
  40176e:	a3 30 54             	mov    ds:0x5430,ax
  401771:	40                   	inc    ax
  401772:	00 e8                	add    al,ch
  401774:	40                   	inc    ax
  401775:	0f 00 00             	sldt   WORD PTR [bx+si]
  401778:	83 c4 28             	add    sp,0x28
  40177b:	89 d8                	mov    ax,bx
  40177d:	5b                   	pop    bx
  40177e:	c3                   	ret    
  40177f:	90                   	nop
  401780:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  401783:	30 89 04 24          	xor    BYTE PTR [bx+di+0x2404],cl
  401787:	ff 15                	call   WORD PTR [di]
  401789:	88 61 40             	mov    BYTE PTR [bx+di+0x40],ah
  40178c:	00 83 c4 28          	add    BYTE PTR [bp+di+0x28c4],al
  401790:	5b                   	pop    bx
  401791:	c3                   	ret    
  401792:	8d b4 26 00          	lea    si,[si+0x26]
  401796:	00 00                	add    BYTE PTR [bx+si],al
  401798:	00 8d bc 27          	add    BYTE PTR [di+0x27bc],cl
  40179c:	00 00                	add    BYTE PTR [bx+si],al
	...

004017a0 <_atexit>:
  4017a0:	83 ec 1c             	sub    sp,0x1c
  4017a3:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4017a6:	20 89 04 24          	and    BYTE PTR [bx+di+0x2404],cl
  4017aa:	e8 31 ff             	call   4016de <__encode_pointer+0xe>
  4017ad:	ff                   	(bad)  
  4017ae:	ff 85 c0 0f          	inc    WORD PTR [di+0xfc0]
  4017b2:	94                   	xchg   sp,ax
  4017b3:	c0 83 c4 1c 0f       	rol    BYTE PTR [bp+di+0x1cc4],0xf
  4017b8:	b6 c0                	mov    dh,0xc0
  4017ba:	f7 d8                	neg    ax
  4017bc:	c3                   	ret    
  4017bd:	90                   	nop
  4017be:	90                   	nop
  4017bf:	90                   	nop

004017c0 <__gnu_exception_handler@4>:
  4017c0:	55                   	push   bp
  4017c1:	89 e5                	mov    bp,sp
  4017c3:	53                   	push   bx
  4017c4:	83 ec 14             	sub    sp,0x14
  4017c7:	8b 5d 08             	mov    bx,WORD PTR [di+0x8]
  4017ca:	8b 03                	mov    ax,WORD PTR [bp+di]
  4017cc:	8b 00                	mov    ax,WORD PTR [bx+si]
  4017ce:	3d 91 00             	cmp    ax,0x91
  4017d1:	00 c0                	add    al,al
  4017d3:	77 4b                	ja     401820 <__gnu_exception_handler@4+0x60>
  4017d5:	3d 8d 00             	cmp    ax,0x8d
  4017d8:	00 c0                	add    al,al
  4017da:	0f 83 b0 00          	jae    40188e <__gnu_exception_handler@4+0xce>
  4017de:	00 00                	add    BYTE PTR [bx+si],al
  4017e0:	3d 05 00             	cmp    ax,0x5
  4017e3:	00 c0                	add    al,al
  4017e5:	0f 85 d9 00          	jne    4018c2 <__gnu_exception_handler@4+0x102>
  4017e9:	00 00                	add    BYTE PTR [bx+si],al
  4017eb:	c7 44 24 04 00       	mov    WORD PTR [si+0x24],0x4
  4017f0:	00 00                	add    BYTE PTR [bx+si],al
  4017f2:	00 c7                	add    bh,al
  4017f4:	04 24                	add    al,0x24
  4017f6:	0b 00                	or     ax,WORD PTR [bx+si]
  4017f8:	00 00                	add    BYTE PTR [bx+si],al
  4017fa:	e8 c1 0e             	call   4026be <__unlock+0x6>
  4017fd:	00 00                	add    BYTE PTR [bx+si],al
  4017ff:	83 f8 01             	cmp    ax,0x1
  401802:	0f 84 18 01          	je     40191e <__gnu_exception_handler@4+0x15e>
  401806:	00 00                	add    BYTE PTR [bx+si],al
  401808:	85 c0                	test   ax,ax
  40180a:	74 2d                	je     401839 <__gnu_exception_handler@4+0x79>
  40180c:	c7 04 24 0b          	mov    WORD PTR [si],0xb24
  401810:	00 00                	add    BYTE PTR [bx+si],al
  401812:	00 ff                	add    bh,bh
  401814:	d0 eb                	shr    bl,1
  401816:	63 89 f6 8d          	arpl   WORD PTR [bx+di-0x720a],cx
  40181a:	bc 27 00             	mov    sp,0x27
  40181d:	00 00                	add    BYTE PTR [bx+si],al
  40181f:	00 3d                	add    BYTE PTR [di],bh
  401821:	94                   	xchg   sp,ax
  401822:	00 00                	add    BYTE PTR [bx+si],al
  401824:	c0                   	(bad)  
  401825:	74 29                	je     401850 <__gnu_exception_handler@4+0x90>
  401827:	3d 96 00             	cmp    ax,0x96
  40182a:	00 c0                	add    al,al
  40182c:	0f 84 9d 00          	je     4018cd <__gnu_exception_handler@4+0x10d>
  401830:	00 00                	add    BYTE PTR [bx+si],al
  401832:	3d 93 00             	cmp    ax,0x93
  401835:	00 c0                	add    al,al
  401837:	74 57                	je     401890 <__gnu_exception_handler@4+0xd0>
  401839:	a1 44 50             	mov    ax,ds:0x5044
  40183c:	40                   	inc    ax
  40183d:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  401841:	3d 89 5d             	cmp    ax,0x5d89
  401844:	08 8b 5d fc          	or     BYTE PTR [bp+di-0x3a3],cl
  401848:	c9                   	leave  
  401849:	ff e0                	jmp    ax
  40184b:	90                   	nop
  40184c:	8d 74 26             	lea    si,[si+0x26]
  40184f:	00 c7                	add    bh,al
  401851:	44                   	inc    sp
  401852:	24 04                	and    al,0x4
  401854:	00 00                	add    BYTE PTR [bx+si],al
  401856:	00 00                	add    BYTE PTR [bx+si],al
  401858:	c7 04 24 08          	mov    WORD PTR [si],0x824
  40185c:	00 00                	add    BYTE PTR [bx+si],al
  40185e:	00 e8                	add    al,ch
  401860:	5c                   	pop    sp
  401861:	0e                   	push   cs
  401862:	00 00                	add    BYTE PTR [bx+si],al
  401864:	83 f8 01             	cmp    ax,0x1
  401867:	0f 84 d3 00          	je     40193e <__gnu_exception_handler@4+0x17e>
  40186b:	00 00                	add    BYTE PTR [bx+si],al
  40186d:	85 c0                	test   ax,ax
  40186f:	74 c8                	je     401839 <__gnu_exception_handler@4+0x79>
  401871:	c7 04 24 08          	mov    WORD PTR [si],0x824
  401875:	00 00                	add    BYTE PTR [bx+si],al
  401877:	00 ff                	add    bh,bh
  401879:	d0 b8 ff ff          	sar    BYTE PTR [bx+si-0x1],1
  40187d:	ff                   	(bad)  
  40187e:	ff 8b 5d fc          	dec    WORD PTR [bp+di-0x3a3]
  401882:	c9                   	leave  
  401883:	c2 04 00             	ret    0x4
  401886:	8d 76 00             	lea    si,[bp+0x0]
  401889:	8d bc 27 00          	lea    di,[si+0x27]
  40188d:	00 00                	add    BYTE PTR [bx+si],al
  40188f:	00 c7                	add    bh,al
  401891:	44                   	inc    sp
  401892:	24 04                	and    al,0x4
  401894:	00 00                	add    BYTE PTR [bx+si],al
  401896:	00 00                	add    BYTE PTR [bx+si],al
  401898:	c7 04 24 08          	mov    WORD PTR [si],0x824
  40189c:	00 00                	add    BYTE PTR [bx+si],al
  40189e:	00 e8                	add    al,ch
  4018a0:	1c 0e                	sbb    al,0xe
  4018a2:	00 00                	add    BYTE PTR [bx+si],al
  4018a4:	83 f8 01             	cmp    ax,0x1
  4018a7:	75 c4                	jne    40186d <__gnu_exception_handler@4+0xad>
  4018a9:	c7 44 24 04 01       	mov    WORD PTR [si+0x24],0x104
  4018ae:	00 00                	add    BYTE PTR [bx+si],al
  4018b0:	00 c7                	add    bh,al
  4018b2:	04 24                	add    al,0x24
  4018b4:	08 00                	or     BYTE PTR [bx+si],al
  4018b6:	00 00                	add    BYTE PTR [bx+si],al
  4018b8:	e8 03 0e             	call   4026be <__unlock+0x6>
  4018bb:	00 00                	add    BYTE PTR [bx+si],al
  4018bd:	e8 ce 05             	call   401e8e <__pei386_runtime_relocator+0x2be>
  4018c0:	00 00                	add    BYTE PTR [bx+si],al
  4018c2:	eb b6                	jmp    40187a <__gnu_exception_handler@4+0xba>
  4018c4:	3d 1d 00             	cmp    ax,0x1d
  4018c7:	00 c0                	add    al,al
  4018c9:	0f 85 6a ff          	jne    401837 <__gnu_exception_handler@4+0x77>
  4018cd:	ff                   	(bad)  
  4018ce:	ff c7                	inc    di
  4018d0:	44                   	inc    sp
  4018d1:	24 04                	and    al,0x4
  4018d3:	00 00                	add    BYTE PTR [bx+si],al
  4018d5:	00 00                	add    BYTE PTR [bx+si],al
  4018d7:	c7 04 24 04          	mov    WORD PTR [si],0x424
  4018db:	00 00                	add    BYTE PTR [bx+si],al
  4018dd:	00 e8                	add    al,ch
  4018df:	dd 0d                	fisttp QWORD PTR [di]
  4018e1:	00 00                	add    BYTE PTR [bx+si],al
  4018e3:	83 f8 01             	cmp    ax,0x1
  4018e6:	74 18                	je     401900 <__gnu_exception_handler@4+0x140>
  4018e8:	85 c0                	test   ax,ax
  4018ea:	0f 84 49 ff          	je     401837 <__gnu_exception_handler@4+0x77>
  4018ee:	ff                   	(bad)  
  4018ef:	ff c7                	inc    di
  4018f1:	04 24                	add    al,0x24
  4018f3:	04 00                	add    al,0x0
  4018f5:	00 00                	add    BYTE PTR [bx+si],al
  4018f7:	ff d0                	call   ax
  4018f9:	e9 7c ff             	jmp    401878 <__gnu_exception_handler@4+0xb8>
  4018fc:	ff                   	(bad)  
  4018fd:	ff 66 90             	jmp    WORD PTR [bp-0x70]
  401900:	c7 44 24 04 01       	mov    WORD PTR [si+0x24],0x104
  401905:	00 00                	add    BYTE PTR [bx+si],al
  401907:	00 c7                	add    bh,al
  401909:	04 24                	add    al,0x24
  40190b:	04 00                	add    al,0x0
  40190d:	00 00                	add    BYTE PTR [bx+si],al
  40190f:	e8 ac 0d             	call   4026be <__unlock+0x6>
  401912:	00 00                	add    BYTE PTR [bx+si],al
  401914:	e9 61 ff             	jmp    401878 <__gnu_exception_handler@4+0xb8>
  401917:	ff                   	(bad)  
  401918:	ff 8d b4 26          	dec    WORD PTR [di+0x26b4]
  40191c:	00 00                	add    BYTE PTR [bx+si],al
  40191e:	00 00                	add    BYTE PTR [bx+si],al
  401920:	c7 44 24 04 01       	mov    WORD PTR [si+0x24],0x104
  401925:	00 00                	add    BYTE PTR [bx+si],al
  401927:	00 c7                	add    bh,al
  401929:	04 24                	add    al,0x24
  40192b:	0b 00                	or     ax,WORD PTR [bx+si]
  40192d:	00 00                	add    BYTE PTR [bx+si],al
  40192f:	e8 8c 0d             	call   4026be <__unlock+0x6>
  401932:	00 00                	add    BYTE PTR [bx+si],al
  401934:	e9 41 ff             	jmp    401878 <__gnu_exception_handler@4+0xb8>
  401937:	ff                   	(bad)  
  401938:	ff 8d b4 26          	dec    WORD PTR [di+0x26b4]
  40193c:	00 00                	add    BYTE PTR [bx+si],al
  40193e:	00 00                	add    BYTE PTR [bx+si],al
  401940:	c7 44 24 04 01       	mov    WORD PTR [si+0x24],0x104
  401945:	00 00                	add    BYTE PTR [bx+si],al
  401947:	00 c7                	add    bh,al
  401949:	04 24                	add    al,0x24
  40194b:	08 00                	or     BYTE PTR [bx+si],al
  40194d:	00 00                	add    BYTE PTR [bx+si],al
  40194f:	e8 6c 0d             	call   4026be <__unlock+0x6>
  401952:	00 00                	add    BYTE PTR [bx+si],al
  401954:	e9 21 ff             	jmp    401878 <__gnu_exception_handler@4+0xb8>
  401957:	ff                   	(bad)  
  401958:	ff 90 90 90          	call   WORD PTR [bx+si-0x6f70]
  40195c:	90                   	nop
  40195d:	90                   	nop
  40195e:	90                   	nop
  40195f:	90                   	nop

00401960 <__setargv>:
  401960:	31 c0                	xor    ax,ax
  401962:	c3                   	ret    
  401963:	90                   	nop
  401964:	90                   	nop
  401965:	90                   	nop
  401966:	90                   	nop
  401967:	90                   	nop
  401968:	90                   	nop
  401969:	90                   	nop
  40196a:	90                   	nop
  40196b:	90                   	nop
  40196c:	90                   	nop
  40196d:	90                   	nop
  40196e:	90                   	nop
  40196f:	90                   	nop

00401970 <___mingw_raise_matherr>:
  401970:	83 ec 3c             	sub    sp,0x3c
  401973:	a1 48 50             	mov    ax,ds:0x5048
  401976:	40                   	inc    ax
  401977:	00 dd                	add    ch,bl
  401979:	44                   	inc    sp
  40197a:	24 48                	and    al,0x48
  40197c:	dd 44 24             	fld    QWORD PTR [si+0x24]
  40197f:	50                   	push   ax
  401980:	85 c0                	test   ax,ax
  401982:	dd 44 24             	fld    QWORD PTR [si+0x24]
  401985:	58                   	pop    ax
  401986:	74 29                	je     4019b1 <___mingw_raise_matherr+0x41>
  401988:	d9 ca                	fxch   st(2)
  40198a:	8b 54 24             	mov    dx,WORD PTR [si+0x24]
  40198d:	40                   	inc    ax
  40198e:	dd 5c 24             	fstp   QWORD PTR [si+0x24]
  401991:	18 dd                	sbb    ch,bl
  401993:	5c                   	pop    sp
  401994:	24 20                	and    al,0x20
  401996:	89 54 24             	mov    WORD PTR [si+0x24],dx
  401999:	10 8b 54 24          	adc    BYTE PTR [bp+di+0x2454],cl
  40199d:	44                   	inc    sp
  40199e:	dd 5c 24             	fstp   QWORD PTR [si+0x24]
  4019a1:	28 89 54 24          	sub    BYTE PTR [bx+di+0x2454],cl
  4019a5:	14 8d                	adc    al,0x8d
  4019a7:	54                   	push   sp
  4019a8:	24 10                	and    al,0x10
  4019aa:	89 14                	mov    WORD PTR [si],dx
  4019ac:	24 ff                	and    al,0xff
  4019ae:	d0 eb                	shr    bl,1
  4019b0:	06                   	push   es
  4019b1:	dd d8                	fstp   st(0)
  4019b3:	dd d8                	fstp   st(0)
  4019b5:	dd d8                	fstp   st(0)
  4019b7:	83 c4 3c             	add    sp,0x3c
  4019ba:	c3                   	ret    
  4019bb:	90                   	nop
  4019bc:	8d 74 26             	lea    si,[si+0x26]
	...

004019c0 <___mingw_setusermatherr>:
  4019c0:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4019c3:	04 a3                	add    al,0xa3
  4019c5:	48                   	dec    ax
  4019c6:	50                   	push   ax
  4019c7:	40                   	inc    ax
  4019c8:	00 e9                	add    cl,ch
  4019ca:	fa                   	cli    
  4019cb:	0c 00                	or     al,0x0
  4019cd:	00 66 90             	add    BYTE PTR [bp-0x70],ah

004019d0 <__matherr>:
  4019d0:	83 ec 3c             	sub    sp,0x3c
  4019d3:	b9 04 40             	mov    cx,0x4004
  4019d6:	40                   	inc    ax
  4019d7:	00 8b 44 24          	add    BYTE PTR [bp+di+0x2444],cl
  4019db:	40                   	inc    ax
  4019dc:	8b 10                	mov    dx,WORD PTR [bx+si]
  4019de:	83 ea 01             	sub    dx,0x1
  4019e1:	83 fa 05             	cmp    dx,0x5
  4019e4:	77 07                	ja     4019ed <__matherr+0x1d>
  4019e6:	8b 0c                	mov    cx,WORD PTR [si]
  4019e8:	95                   	xchg   bp,ax
  4019e9:	20 41 40             	and    BYTE PTR [bx+di+0x40],al
  4019ec:	00 dd                	add    ch,bl
  4019ee:	40                   	inc    ax
  4019ef:	18 dd                	sbb    ch,bl
  4019f1:	5c                   	pop    sp
  4019f2:	24 20                	and    al,0x20
  4019f4:	dd 40 10             	fld    QWORD PTR [bx+si+0x10]
  4019f7:	dd 5c 24             	fstp   QWORD PTR [si+0x24]
  4019fa:	18 dd                	sbb    ch,bl
  4019fc:	40                   	inc    ax
  4019fd:	08 dd                	or     ch,bl
  4019ff:	5c                   	pop    sp
  401a00:	24 10                	and    al,0x10
  401a02:	8b 40 04             	mov    ax,WORD PTR [bx+si+0x4]
  401a05:	89 4c 24             	mov    WORD PTR [si+0x24],cx
  401a08:	08 c7                	or     bh,al
  401a0a:	44                   	inc    sp
  401a0b:	24 04                	and    al,0x4
  401a0d:	14 40                	adc    al,0x40
  401a0f:	40                   	inc    ax
  401a10:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401a14:	0c a1                	or     al,0xa1
  401a16:	80 61 40 00          	and    BYTE PTR [bx+di+0x40],0x0
  401a1a:	83 c0 40             	add    ax,0x40
  401a1d:	89 04                	mov    WORD PTR [si],ax
  401a1f:	24 e8                	and    al,0xe8
  401a21:	ab                   	stos   WORD PTR es:[di],ax
  401a22:	0c 00                	or     al,0x0
  401a24:	00 31                	add    BYTE PTR [bx+di],dh
  401a26:	c0 83 c4 3c c3       	rol    BYTE PTR [bp+di+0x3cc4],0xc3
  401a2b:	90                   	nop
  401a2c:	90                   	nop
  401a2d:	90                   	nop
  401a2e:	90                   	nop
  401a2f:	90                   	nop

00401a30 <___report_error>:
  401a30:	53                   	push   bx
  401a31:	83 ec 18             	sub    sp,0x18
  401a34:	a1 80 61             	mov    ax,ds:0x6180
  401a37:	40                   	inc    ax
  401a38:	00 c7                	add    bh,al
  401a3a:	44                   	inc    sp
  401a3b:	24 08                	and    al,0x8
  401a3d:	1b 00                	sbb    ax,WORD PTR [bx+si]
  401a3f:	00 00                	add    BYTE PTR [bx+si],al
  401a41:	c7 44 24 04 01       	mov    WORD PTR [si+0x24],0x104
  401a46:	00 00                	add    BYTE PTR [bx+si],al
  401a48:	00 8d 5c 24          	add    BYTE PTR [di+0x245c],cl
  401a4c:	24 c7                	and    al,0xc7
  401a4e:	04 24                	add    al,0x24
  401a50:	38 41 40             	cmp    BYTE PTR [bx+di+0x40],al
  401a53:	00 83 c0 40          	add    BYTE PTR [bp+di+0x40c0],al
  401a57:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401a5a:	0c e8                	or     al,0xe8
  401a5c:	78 0c                	js     401a6a <___report_error+0x3a>
  401a5e:	00 00                	add    BYTE PTR [bx+si],al
  401a60:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  401a63:	20 89 5c 24          	and    BYTE PTR [bx+di+0x245c],cl
  401a67:	08 89 44 24          	or     BYTE PTR [bx+di+0x2444],cl
  401a6b:	04 a1                	add    al,0xa1
  401a6d:	80 61 40 00          	and    BYTE PTR [bx+di+0x40],0x0
  401a71:	83 c0 40             	add    ax,0x40
  401a74:	89 04                	mov    WORD PTR [si],ax
  401a76:	24 e8                	and    al,0xe8
  401a78:	64 0c 00             	fs or  al,0x0
  401a7b:	00 e8                	add    al,ch
  401a7d:	67 0c 00             	addr32 or al,0x0
  401a80:	00 eb                	add    bl,ch
  401a82:	0d 90 90             	or     ax,0x9090
  401a85:	90                   	nop
  401a86:	90                   	nop
  401a87:	90                   	nop
  401a88:	90                   	nop
  401a89:	90                   	nop
  401a8a:	90                   	nop
  401a8b:	90                   	nop
  401a8c:	90                   	nop
  401a8d:	90                   	nop
  401a8e:	90                   	nop
  401a8f:	90                   	nop

00401a90 <_mark_section_writable>:
  401a90:	57                   	push   di
  401a91:	56                   	push   si
  401a92:	53                   	push   bx
  401a93:	83 ec 30             	sub    sp,0x30
  401a96:	8b 35                	mov    si,WORD PTR [di]
  401a98:	50                   	push   ax
  401a99:	50                   	push   ax
  401a9a:	40                   	inc    ax
  401a9b:	00 85 f6 0f          	add    BYTE PTR [di+0xff6],al
  401a9f:	8e d9                	mov    ds,cx
  401aa1:	00 00                	add    BYTE PTR [bx+si],al
  401aa3:	00 8b 3d 54          	add    BYTE PTR [bp+di+0x543d],cl
  401aa7:	50                   	push   ax
  401aa8:	40                   	inc    ax
  401aa9:	00 31                	add    BYTE PTR [bx+di],dh
  401aab:	db 8d 57 04          	fisttp DWORD PTR [di+0x457]
  401aaf:	90                   	nop
  401ab0:	8b 0a                	mov    cx,WORD PTR [bp+si]
  401ab2:	39 c1                	cmp    cx,ax
  401ab4:	77 0e                	ja     401ac4 <_mark_section_writable+0x34>
  401ab6:	8b 7a 04             	mov    di,WORD PTR [bp+si+0x4]
  401ab9:	03 4f 08             	add    cx,WORD PTR [bx+0x8]
  401abc:	39 c8                	cmp    ax,cx
  401abe:	0f 82 b2 00          	jb     401b74 <_mark_section_writable+0xe4>
  401ac2:	00 00                	add    BYTE PTR [bx+si],al
  401ac4:	83 c3 01             	add    bx,0x1
  401ac7:	83 c2 0c             	add    dx,0xc
  401aca:	39 f3                	cmp    bx,si
  401acc:	75 e2                	jne    401ab0 <_mark_section_writable+0x20>
  401ace:	89 04                	mov    WORD PTR [si],ax
  401ad0:	24 89                	and    al,0x89
  401ad2:	c3                   	ret    
  401ad3:	e8 f8 08             	call   4023ce <__FindPESectionByName+0x9e>
  401ad6:	00 00                	add    BYTE PTR [bx+si],al
  401ad8:	85 c0                	test   ax,ax
  401ada:	89 c7                	mov    di,ax
  401adc:	0f 84 d8 00          	je     401bb8 <_mark_section_writable+0x128>
  401ae0:	00 00                	add    BYTE PTR [bx+si],al
  401ae2:	8d 1c                	lea    bx,[si]
  401ae4:	76 8b                	jbe    401a71 <___report_error+0x41>
  401ae6:	35 54 50             	xor    ax,0x5054
  401ae9:	40                   	inc    ax
  401aea:	00 c1                	add    cl,al
  401aec:	e3 02                	jcxz   401af0 <_mark_section_writable+0x60>
  401aee:	01 de                	add    si,bx
  401af0:	89 46 08             	mov    WORD PTR [bp+0x8],ax
  401af3:	c7 06 00 00 00 00    	mov    WORD PTR ds:0x0,0x0
  401af9:	e8 d2 09             	call   4024ce <__FindPESectionExec+0x7e>
  401afc:	00 00                	add    BYTE PTR [bx+si],al
  401afe:	03 47 0c             	add    ax,WORD PTR [bx+0xc]
  401b01:	89 46 04             	mov    WORD PTR [bp+0x4],ax
  401b04:	8d 44 24             	lea    ax,[si+0x24]
  401b07:	14 c7                	adc    al,0xc7
  401b09:	44                   	inc    sp
  401b0a:	24 08                	and    al,0x8
  401b0c:	1c 00                	sbb    al,0x0
  401b0e:	00 00                	add    BYTE PTR [bx+si],al
  401b10:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401b13:	04 a1                	add    al,0xa1
  401b15:	54                   	push   sp
  401b16:	50                   	push   ax
  401b17:	40                   	inc    ax
  401b18:	00 8b 44 18          	add    BYTE PTR [bp+di+0x1844],cl
  401b1c:	04 89                	add    al,0x89
  401b1e:	04 24                	add    al,0x24
  401b20:	ff 15                	call   WORD PTR [di]
  401b22:	4c                   	dec    sp
  401b23:	61                   	popa   
  401b24:	40                   	inc    ax
  401b25:	00 83 ec 0c          	add    BYTE PTR [bp+di+0xcec],al
  401b29:	85 c0                	test   ax,ax
  401b2b:	74 6d                	je     401b9a <_mark_section_writable+0x10a>
  401b2d:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  401b30:	28 8d 50 fc          	sub    BYTE PTR [di-0x3b0],cl
  401b34:	83 e2 fb             	and    dx,0xfffb
  401b37:	74 36                	je     401b6f <_mark_section_writable+0xdf>
  401b39:	83 e8 40             	sub    ax,0x40
  401b3c:	83 e0 bf             	and    ax,0xffbf
  401b3f:	74 2e                	je     401b6f <_mark_section_writable+0xdf>
  401b41:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  401b44:	20 03                	and    BYTE PTR [bp+di],al
  401b46:	1d 54 50             	sbb    ax,0x5054
  401b49:	40                   	inc    ax
  401b4a:	00 c7                	add    bh,al
  401b4c:	44                   	inc    sp
  401b4d:	24 08                	and    al,0x8
  401b4f:	40                   	inc    ax
  401b50:	00 00                	add    BYTE PTR [bx+si],al
  401b52:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401b56:	04 8b                	add    al,0x8b
  401b58:	44                   	inc    sp
  401b59:	24 14                	and    al,0x14
  401b5b:	89 5c 24             	mov    WORD PTR [si+0x24],bx
  401b5e:	0c 89                	or     al,0x89
  401b60:	04 24                	add    al,0x24
  401b62:	ff 15                	call   WORD PTR [di]
  401b64:	48                   	dec    ax
  401b65:	61                   	popa   
  401b66:	40                   	inc    ax
  401b67:	00 83 ec 10          	add    BYTE PTR [bp+di+0x10ec],al
  401b6b:	85 c0                	test   ax,ax
  401b6d:	74 15                	je     401b84 <_mark_section_writable+0xf4>
  401b6f:	83 05 50             	add    WORD PTR [di],0x50
  401b72:	50                   	push   ax
  401b73:	40                   	inc    ax
  401b74:	00 01                	add    BYTE PTR [bx+di],al
  401b76:	83 c4 30             	add    sp,0x30
  401b79:	5b                   	pop    bx
  401b7a:	5e                   	pop    si
  401b7b:	5f                   	pop    di
  401b7c:	c3                   	ret    
  401b7d:	31 f6                	xor    si,si
  401b7f:	e9 4a ff             	jmp    401acc <_mark_section_writable+0x3c>
  401b82:	ff                   	(bad)  
  401b83:	ff                   	(bad)  
  401b84:	ff 15                	call   WORD PTR [di]
  401b86:	18 61 40             	sbb    BYTE PTR [bx+di+0x40],ah
  401b89:	00 c7                	add    bh,al
  401b8b:	04 24                	add    al,0x24
  401b8d:	a8 41                	test   al,0x41
  401b8f:	40                   	inc    ax
  401b90:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401b94:	04 e8                	add    al,0xe8
  401b96:	96                   	xchg   si,ax
  401b97:	fe                   	(bad)  
  401b98:	ff                   	(bad)  
  401b99:	ff a1 54 50          	jmp    WORD PTR [bx+di+0x5054]
  401b9d:	40                   	inc    ax
  401b9e:	00 8b 44 18          	add    BYTE PTR [bp+di+0x1844],cl
  401ba2:	04 89                	add    al,0x89
  401ba4:	44                   	inc    sp
  401ba5:	24 08                	and    al,0x8
  401ba7:	8b 47 08             	mov    ax,WORD PTR [bx+0x8]
  401baa:	c7 04 24 74          	mov    WORD PTR [si],0x7424
  401bae:	41                   	inc    cx
  401baf:	40                   	inc    ax
  401bb0:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401bb4:	04 e8                	add    al,0xe8
  401bb6:	76 fe                	jbe    401bb6 <_mark_section_writable+0x126>
  401bb8:	ff                   	(bad)  
  401bb9:	ff 89 5c 24          	dec    WORD PTR [bx+di+0x245c]
  401bbd:	04 c7                	add    al,0xc7
  401bbf:	04 24                	add    al,0x24
  401bc1:	54                   	push   sp
  401bc2:	41                   	inc    cx
  401bc3:	40                   	inc    ax
  401bc4:	00 e8                	add    al,ch
  401bc6:	66 fe                	data32 (bad) 
  401bc8:	ff                   	(bad)  
  401bc9:	ff 8d b6 00          	dec    WORD PTR [di+0xb6]
  401bcd:	00 00                	add    BYTE PTR [bx+si],al
	...

00401bd0 <__pei386_runtime_relocator>:
  401bd0:	a1 4c 50             	mov    ax,ds:0x504c
  401bd3:	40                   	inc    ax
  401bd4:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  401bd8:	07                   	pop    es
  401bd9:	c3                   	ret    
  401bda:	8d b6 00 00          	lea    si,[bp+0x0]
  401bde:	00 00                	add    BYTE PTR [bx+si],al
  401be0:	55                   	push   bp
  401be1:	89 e5                	mov    bp,sp
  401be3:	57                   	push   di
  401be4:	56                   	push   si
  401be5:	53                   	push   bx
  401be6:	83 ec 4c             	sub    sp,0x4c
  401be9:	c7 05 4c 50          	mov    WORD PTR [di],0x504c
  401bed:	40                   	inc    ax
  401bee:	00 01                	add    BYTE PTR [bx+di],al
  401bf0:	00 00                	add    BYTE PTR [bx+si],al
  401bf2:	00 e8                	add    al,ch
  401bf4:	28 08                	sub    BYTE PTR [bx+si],cl
  401bf6:	00 00                	add    BYTE PTR [bx+si],al
  401bf8:	8d 04                	lea    ax,[si]
  401bfa:	40                   	inc    ax
  401bfb:	8d 04                	lea    ax,[si]
  401bfd:	85 1e 00 00          	test   WORD PTR ds:0x0,bx
  401c01:	00 83 e0 f0          	add    BYTE PTR [bp+di-0xf20],al
  401c05:	e8 f6 09             	call   4025fe <___mingw_enum_import_library_names+0x9e>
  401c08:	00 00                	add    BYTE PTR [bx+si],al
  401c0a:	c7 05 50 50          	mov    WORD PTR [di],0x5050
  401c0e:	40                   	inc    ax
  401c0f:	00 00                	add    BYTE PTR [bx+si],al
  401c11:	00 00                	add    BYTE PTR [bx+si],al
  401c13:	00 29                	add    BYTE PTR [bx+di],ch
  401c15:	c4 8d 44 24          	les    cx,DWORD PTR [di+0x2444]
  401c19:	1f                   	pop    ds
  401c1a:	83 e0 f0             	and    ax,0xfff0
  401c1d:	a3 54 50             	mov    ds:0x5054,ax
  401c20:	40                   	inc    ax
  401c21:	00 b8 5c 44          	add    BYTE PTR [bx+si+0x445c],bh
  401c25:	40                   	inc    ax
  401c26:	00 2d                	add    BYTE PTR [di],ch
  401c28:	5c                   	pop    sp
  401c29:	44                   	inc    sp
  401c2a:	40                   	inc    ax
  401c2b:	00 83 f8 07          	add    BYTE PTR [bp+di+0x7f8],al
  401c2f:	0f 8e 9b 00          	jle    401cce <__pei386_runtime_relocator+0xfe>
  401c33:	00 00                	add    BYTE PTR [bx+si],al
  401c35:	83 f8 0b             	cmp    ax,0xb
  401c38:	0f 8e 55 01          	jle    401d91 <__pei386_runtime_relocator+0x1c1>
  401c3c:	00 00                	add    BYTE PTR [bx+si],al
  401c3e:	a1 5c 44             	mov    ax,ds:0x445c
  401c41:	40                   	inc    ax
  401c42:	00 85 c0 0f          	add    BYTE PTR [di+0xfc0],al
  401c46:	85 8d 00 00          	test   WORD PTR [di+0x0],cx
  401c4a:	00 a1 60 44          	add    BYTE PTR [bx+di+0x4460],ah
  401c4e:	40                   	inc    ax
  401c4f:	00 85 c0 0f          	add    BYTE PTR [di+0xfc0],al
  401c53:	85 80 00 00          	test   WORD PTR [bx+si+0x0],ax
  401c57:	00 8b 3d 64          	add    BYTE PTR [bp+di+0x643d],cl
  401c5b:	44                   	inc    sp
  401c5c:	40                   	inc    ax
  401c5d:	00 bb 68 44          	add    BYTE PTR [bp+di+0x4468],bh
  401c61:	40                   	inc    ax
  401c62:	00 85 ff 0f          	add    BYTE PTR [di+0xfff],al
  401c66:	84 2d                	test   BYTE PTR [di],ch
  401c68:	01 00                	add    WORD PTR [bx+si],ax
  401c6a:	00 bb 5c 44          	add    BYTE PTR [bp+di+0x445c],bh
  401c6e:	40                   	inc    ax
  401c6f:	00 8b 43 08          	add    BYTE PTR [bp+di+0x843],cl
  401c73:	83 f8 01             	cmp    ax,0x1
  401c76:	0f 85 fb 01          	jne    401e75 <__pei386_runtime_relocator+0x2a5>
  401c7a:	00 00                	add    BYTE PTR [bx+si],al
  401c7c:	83 c3 0c             	add    bx,0xc
  401c7f:	81 fb 5c 44          	cmp    bx,0x445c
  401c83:	40                   	inc    ax
  401c84:	00 73 49             	add    BYTE PTR [bp+di+0x49],dh
  401c87:	8b 13                	mov    dx,WORD PTR [bp+di]
  401c89:	8b 4b 04             	mov    cx,WORD PTR [bp+di+0x4]
  401c8c:	8b 82 00 00          	mov    ax,WORD PTR [bp+si+0x0]
  401c90:	40                   	inc    ax
  401c91:	00 8d b1 00          	add    BYTE PTR [di+0xb1],cl
  401c95:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  401c98:	89 45 c4             	mov    WORD PTR [di-0x3c],ax
  401c9b:	0f b6 43 08          	movzx  ax,BYTE PTR [bp+di+0x8]
  401c9f:	83 f8 10             	cmp    ax,0x10
  401ca2:	0f 84 0a 01          	je     401db0 <__pei386_runtime_relocator+0x1e0>
  401ca6:	00 00                	add    BYTE PTR [bx+si],al
  401ca8:	83 f8 20             	cmp    ax,0x20
  401cab:	0f 84 85 01          	je     401e34 <__pei386_runtime_relocator+0x264>
  401caf:	00 00                	add    BYTE PTR [bx+si],al
  401cb1:	83 f8 08             	cmp    ax,0x8
  401cb4:	0f 84 4d 01          	je     401e05 <__pei386_runtime_relocator+0x235>
  401cb8:	00 00                	add    BYTE PTR [bx+si],al
  401cba:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401cbd:	04 c7                	add    al,0xc7
  401cbf:	04 24                	add    al,0x24
  401cc1:	04 42                	add    al,0x42
  401cc3:	40                   	inc    ax
  401cc4:	00 e8                	add    al,ch
  401cc6:	66 fd                	data32 std 
  401cc8:	ff                   	(bad)  
  401cc9:	ff 8d b6 00          	dec    WORD PTR [di+0xb6]
  401ccd:	00 00                	add    BYTE PTR [bx+si],al
  401ccf:	00 8d 65 f4          	add    BYTE PTR [di-0xb9b],cl
  401cd3:	5b                   	pop    bx
  401cd4:	5e                   	pop    si
  401cd5:	5f                   	pop    di
  401cd6:	5d                   	pop    bp
  401cd7:	c3                   	ret    
  401cd8:	bb 5c 44             	mov    bx,0x445c
  401cdb:	40                   	inc    ax
  401cdc:	00 81 fb 5c          	add    BYTE PTR [bx+di+0x5cfb],al
  401ce0:	44                   	inc    sp
  401ce1:	40                   	inc    ax
  401ce2:	00 73 eb             	add    BYTE PTR [bp+di-0x15],dh
  401ce5:	8b 73 04             	mov    si,WORD PTR [bp+di+0x4]
  401ce8:	8b 13                	mov    dx,WORD PTR [bp+di]
  401cea:	83 c3 08             	add    bx,0x8
  401ced:	03 96 00 00          	add    dx,WORD PTR [bp+0x0]
  401cf1:	40                   	inc    ax
  401cf2:	00 8d 86 00          	add    BYTE PTR [di+0x86],cl
  401cf6:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  401cf9:	89 55 cc             	mov    WORD PTR [di-0x34],dx
  401cfc:	e8 8f fd             	call   401a8e <___report_error+0x5e>
  401cff:	ff                   	(bad)  
  401d00:	ff 8b 45 cc          	dec    WORD PTR [bp+di-0x33bb]
  401d04:	81 fb 5c 44          	cmp    bx,0x445c
  401d08:	40                   	inc    ax
  401d09:	00 89 86 00          	add    BYTE PTR [bx+di+0x86],cl
  401d0d:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  401d10:	72 d3                	jb     401ce5 <__pei386_runtime_relocator+0x115>
  401d12:	a1 50 50             	mov    ax,ds:0x5050
  401d15:	40                   	inc    ax
  401d16:	00 31                	add    BYTE PTR [bx+di],dh
  401d18:	db 85 c0 7f          	fild   DWORD PTR [di+0x7fc0]
  401d1c:	0e                   	push   cs
  401d1d:	eb b1                	jmp    401cd0 <__pei386_runtime_relocator+0x100>
  401d1f:	90                   	nop
  401d20:	83 c3 01             	add    bx,0x1
  401d23:	3b 1d                	cmp    bx,WORD PTR [di]
  401d25:	50                   	push   ax
  401d26:	50                   	push   ax
  401d27:	40                   	inc    ax
  401d28:	00 7d a5             	add    BYTE PTR [di-0x5b],bh
  401d2b:	8d 3c                	lea    di,[si]
  401d2d:	5b                   	pop    bx
  401d2e:	a1 54 50             	mov    ax,ds:0x5054
  401d31:	40                   	inc    ax
  401d32:	00 8d 34 bd          	add    BYTE PTR [di-0x42cc],cl
  401d36:	00 00                	add    BYTE PTR [bx+si],al
  401d38:	00 00                	add    BYTE PTR [bx+si],al
  401d3a:	01 f0                	add    ax,si
  401d3c:	8b 10                	mov    dx,WORD PTR [bx+si]
  401d3e:	85 d2                	test   dx,dx
  401d40:	74 de                	je     401d20 <__pei386_runtime_relocator+0x150>
  401d42:	8d 4d cc             	lea    cx,[di-0x34]
  401d45:	c7 44 24 08 1c       	mov    WORD PTR [si+0x24],0x1c08
  401d4a:	00 00                	add    BYTE PTR [bx+si],al
  401d4c:	00 89 4c 24          	add    BYTE PTR [bx+di+0x244c],cl
  401d50:	04 8b                	add    al,0x8b
  401d52:	40                   	inc    ax
  401d53:	04 89                	add    al,0x89
  401d55:	04 24                	add    al,0x24
  401d57:	ff 15                	call   WORD PTR [di]
  401d59:	4c                   	dec    sp
  401d5a:	61                   	popa   
  401d5b:	40                   	inc    ax
  401d5c:	00 83 ec 0c          	add    BYTE PTR [bp+di+0xcec],al
  401d60:	85 c0                	test   ax,ax
  401d62:	0f 84 ea 00          	je     401e50 <__pei386_runtime_relocator+0x280>
  401d66:	00 00                	add    BYTE PTR [bx+si],al
  401d68:	8d 45 c8             	lea    ax,[di-0x38]
  401d6b:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401d6e:	0c a1                	or     al,0xa1
  401d70:	54                   	push   sp
  401d71:	50                   	push   ax
  401d72:	40                   	inc    ax
  401d73:	00 8b 04 b8          	add    BYTE PTR [bp+di-0x47fc],cl
  401d77:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401d7a:	08 8b 45 d8          	or     BYTE PTR [bp+di-0x27bb],cl
  401d7e:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401d81:	04 8b                	add    al,0x8b
  401d83:	45                   	inc    bp
  401d84:	cc                   	int3   
  401d85:	89 04                	mov    WORD PTR [si],ax
  401d87:	24 ff                	and    al,0xff
  401d89:	15 48 61             	adc    ax,0x6148
  401d8c:	40                   	inc    ax
  401d8d:	00 83 ec 10          	add    BYTE PTR [bp+di+0x10ec],al
  401d91:	eb 8d                	jmp    401d20 <__pei386_runtime_relocator+0x150>
  401d93:	bb 5c 44             	mov    bx,0x445c
  401d96:	40                   	inc    ax
  401d97:	00 8b 33 85          	add    BYTE PTR [bp+di-0x7acd],cl
  401d9b:	f6                   	(bad)  
  401d9c:	0f 85 3b ff          	jne    401cdb <__pei386_runtime_relocator+0x10b>
  401da0:	ff                   	(bad)  
  401da1:	ff 8b 4b 04          	dec    WORD PTR [bp+di+0x44b]
  401da5:	85 c9                	test   cx,cx
  401da7:	0f 84 c3 fe          	je     401c6e <__pei386_runtime_relocator+0x9e>
  401dab:	ff                   	(bad)  
  401dac:	ff                   	(bad)  
  401dad:	e9 2b ff             	jmp    401cdb <__pei386_runtime_relocator+0x10b>
  401db0:	ff                   	(bad)  
  401db1:	ff 0f                	dec    WORD PTR [bx]
  401db3:	b7 81                	mov    bh,0x81
  401db5:	00 00                	add    BYTE PTR [bx+si],al
  401db7:	40                   	inc    ax
  401db8:	00 89 4d c0          	add    BYTE PTR [bx+di-0x3fb3],cl
  401dbc:	89 c7                	mov    di,ax
  401dbe:	81 cf 00 00          	or     di,0x0
  401dc2:	ff                   	(bad)  
  401dc3:	ff 66 83             	jmp    WORD PTR [bp-0x7d]
  401dc6:	b9 00 00             	mov    cx,0x0
  401dc9:	40                   	inc    ax
  401dca:	00 00                	add    BYTE PTR [bx+si],al
  401dcc:	0f 48 c7             	cmovs  ax,di
  401dcf:	8b 7d c4             	mov    di,WORD PTR [di-0x3c]
  401dd2:	2d 00 00             	sub    ax,0x0
  401dd5:	40                   	inc    ax
  401dd6:	00 29                	add    BYTE PTR [bx+di],ch
  401dd8:	d0 01                	rol    BYTE PTR [bx+di],1
  401dda:	c7                   	(bad)  
  401ddb:	89 f0                	mov    ax,si
  401ddd:	89 7d cc             	mov    WORD PTR [di-0x34],di
  401de0:	e8 ab fc             	call   401a8e <___report_error+0x5e>
  401de3:	ff                   	(bad)  
  401de4:	ff 0f                	dec    WORD PTR [bx]
  401de6:	b7 45                	mov    bh,0x45
  401de8:	cc                   	int3   
  401de9:	8b 4d c0             	mov    cx,WORD PTR [di-0x40]
  401dec:	66 89 81 00 00       	mov    DWORD PTR [bx+di+0x0],eax
  401df1:	40                   	inc    ax
  401df2:	00 83 c3 0c          	add    BYTE PTR [bp+di+0xcc3],al
  401df6:	81 fb 5c 44          	cmp    bx,0x445c
  401dfa:	40                   	inc    ax
  401dfb:	00 0f                	add    BYTE PTR [bx],cl
  401dfd:	82                   	(bad)  
  401dfe:	85 fe                	test   si,di
  401e00:	ff                   	(bad)  
  401e01:	ff                   	(bad)  
  401e02:	e9 0b ff             	jmp    401d10 <__pei386_runtime_relocator+0x140>
  401e05:	ff                   	(bad)  
  401e06:	ff 0f                	dec    WORD PTR [bx]
  401e08:	b6 06                	mov    dh,0x6
  401e0a:	8b 7d c4             	mov    di,WORD PTR [di-0x3c]
  401e0d:	89 c1                	mov    cx,ax
  401e0f:	81 c9 00 ff          	or     cx,0xff00
  401e13:	ff                   	(bad)  
  401e14:	ff 80 3e 00          	inc    WORD PTR [bx+si+0x3e]
  401e18:	0f 48 c1             	cmovs  ax,cx
  401e1b:	2d 00 00             	sub    ax,0x0
  401e1e:	40                   	inc    ax
  401e1f:	00 29                	add    BYTE PTR [bx+di],ch
  401e21:	d0 01                	rol    BYTE PTR [bx+di],1
  401e23:	c7                   	(bad)  
  401e24:	89 f0                	mov    ax,si
  401e26:	89 7d cc             	mov    WORD PTR [di-0x34],di
  401e29:	e8 62 fc             	call   401a8e <___report_error+0x5e>
  401e2c:	ff                   	(bad)  
  401e2d:	ff 0f                	dec    WORD PTR [bx]
  401e2f:	b6 45                	mov    dh,0x45
  401e31:	cc                   	int3   
  401e32:	88 06 eb bd          	mov    BYTE PTR ds:0xbdeb,al
  401e36:	8b 06 8b 7d          	mov    ax,WORD PTR ds:0x7d8b
  401e3a:	c4 2d                	les    bp,DWORD PTR [di]
  401e3c:	00 00                	add    BYTE PTR [bx+si],al
  401e3e:	40                   	inc    ax
  401e3f:	00 2b                	add    BYTE PTR [bp+di],ch
  401e41:	03 01                	add    ax,WORD PTR [bx+di]
  401e43:	c7                   	(bad)  
  401e44:	89 f0                	mov    ax,si
  401e46:	89 7d cc             	mov    WORD PTR [di-0x34],di
  401e49:	e8 42 fc             	call   401a8e <___report_error+0x5e>
  401e4c:	ff                   	(bad)  
  401e4d:	ff 89 3e eb          	dec    WORD PTR [bx+di-0x14c2]
  401e51:	a1 8b 0d             	mov    ax,ds:0xd8b
  401e54:	54                   	push   sp
  401e55:	50                   	push   ax
  401e56:	40                   	inc    ax
  401e57:	00 01                	add    BYTE PTR [bx+di],al
  401e59:	f1                   	icebp  
  401e5a:	8b 41 04             	mov    ax,WORD PTR [bx+di+0x4]
  401e5d:	89 44 24             	mov    WORD PTR [si+0x24],ax
  401e60:	08 8b 41 08          	or     BYTE PTR [bp+di+0x841],cl
  401e64:	8b 40 08             	mov    ax,WORD PTR [bx+si+0x8]
  401e67:	c7 04 24 74          	mov    WORD PTR [si],0x7424
  401e6b:	41                   	inc    cx
  401e6c:	40                   	inc    ax
  401e6d:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  401e71:	04 e8                	add    al,0xe8
  401e73:	b9 fb ff             	mov    cx,0xfffb
  401e76:	ff 89 44 24          	dec    WORD PTR [bx+di+0x2444]
  401e7a:	04 c7                	add    al,0xc7
  401e7c:	04 24                	add    al,0x24
  401e7e:	d0 41 40             	rol    BYTE PTR [bx+di+0x40],1
  401e81:	00 e8                	add    al,ch
  401e83:	a9 fb ff             	test   ax,0xfffb
  401e86:	ff 90 90 90          	call   WORD PTR [bx+si-0x6f70]
  401e8a:	90                   	nop
  401e8b:	90                   	nop
  401e8c:	90                   	nop
  401e8d:	90                   	nop
  401e8e:	90                   	nop
  401e8f:	90                   	nop

00401e90 <__fpreset>:
  401e90:	db e3                	fninit 
  401e92:	c3                   	ret    
  401e93:	90                   	nop
  401e94:	90                   	nop
  401e95:	90                   	nop
  401e96:	90                   	nop
  401e97:	90                   	nop
  401e98:	90                   	nop
  401e99:	90                   	nop
  401e9a:	90                   	nop
  401e9b:	90                   	nop
  401e9c:	90                   	nop
  401e9d:	90                   	nop
  401e9e:	90                   	nop
  401e9f:	90                   	nop

00401ea0 <___do_global_dtors>:
  401ea0:	a1 10 30             	mov    ax,ds:0x3010
  401ea3:	40                   	inc    ax
  401ea4:	00 8b 00 85          	add    BYTE PTR [bp+di-0x7b00],cl
  401ea8:	c0                   	(bad)  
  401ea9:	74 1f                	je     401eca <___do_global_dtors+0x2a>
  401eab:	83 ec 0c             	sub    sp,0xc
  401eae:	66 90                	xchg   eax,eax
  401eb0:	ff d0                	call   ax
  401eb2:	a1 10 30             	mov    ax,ds:0x3010
  401eb5:	40                   	inc    ax
  401eb6:	00 8d 50 04          	add    BYTE PTR [di+0x450],cl
  401eba:	8b 40 04             	mov    ax,WORD PTR [bx+si+0x4]
  401ebd:	89 15                	mov    WORD PTR [di],dx
  401ebf:	10 30                	adc    BYTE PTR [bx+si],dh
  401ec1:	40                   	inc    ax
  401ec2:	00 85 c0 75          	add    BYTE PTR [di+0x75c0],al
  401ec6:	e9 83 c4             	jmp    40e34c <.debug_info+0x1e1>
  401ec9:	0c f3                	or     al,0xf3
  401ecb:	c3                   	ret    
  401ecc:	8d 74 26             	lea    si,[si+0x26]
	...

00401ed0 <___do_global_ctors>:
  401ed0:	53                   	push   bx
  401ed1:	83 ec 18             	sub    sp,0x18
  401ed4:	8b 1d                	mov    bx,WORD PTR [di]
  401ed6:	08 27                	or     BYTE PTR [bx],ah
  401ed8:	40                   	inc    ax
  401ed9:	00 83 fb ff          	add    BYTE PTR [bp+di-0x5],al
  401edd:	74 21                	je     401f00 <___do_global_ctors+0x30>
  401edf:	85 db                	test   bx,bx
  401ee1:	74 0c                	je     401eef <___do_global_ctors+0x1f>
  401ee3:	ff 14                	call   WORD PTR [si]
  401ee5:	9d                   	popf   
  401ee6:	08 27                	or     BYTE PTR [bx],ah
  401ee8:	40                   	inc    ax
  401ee9:	00 83 eb 01          	add    BYTE PTR [bp+di+0x1eb],al
  401eed:	75 f4                	jne    401ee3 <___do_global_ctors+0x13>
  401eef:	c7 04 24 a0          	mov    WORD PTR [si],0xa024
  401ef3:	1e                   	push   ds
  401ef4:	40                   	inc    ax
  401ef5:	00 e8                	add    al,ch
  401ef7:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
  401ef8:	f8                   	clc    
  401ef9:	ff                   	(bad)  
  401efa:	ff 83 c4 18          	inc    WORD PTR [bp+di+0x18c4]
  401efe:	5b                   	pop    bx
  401eff:	c3                   	ret    
  401f00:	31 db                	xor    bx,bx
  401f02:	eb 02                	jmp    401f06 <___do_global_ctors+0x36>
  401f04:	89 c3                	mov    bx,ax
  401f06:	8d 43 01             	lea    ax,[bp+di+0x1]
  401f09:	8b 14                	mov    dx,WORD PTR [si]
  401f0b:	85 08                	test   WORD PTR [bx+si],cx
  401f0d:	27                   	daa    
  401f0e:	40                   	inc    ax
  401f0f:	00 85 d2 75          	add    BYTE PTR [di+0x75d2],al
  401f13:	f0 eb c9             	lock jmp 401edf <___do_global_ctors+0xf>
  401f16:	8d 76 00             	lea    si,[bp+0x0]
  401f19:	8d bc 27 00          	lea    di,[si+0x27]
  401f1d:	00 00                	add    BYTE PTR [bx+si],al
	...

00401f20 <___main>:
  401f20:	a1 58 50             	mov    ax,ds:0x5058
  401f23:	40                   	inc    ax
  401f24:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  401f28:	07                   	pop    es
  401f29:	f3 c3                	repz ret 
  401f2b:	90                   	nop
  401f2c:	8d 74 26             	lea    si,[si+0x26]
  401f2f:	00 c7                	add    bh,al
  401f31:	05 58 50             	add    ax,0x5058
  401f34:	40                   	inc    ax
  401f35:	00 01                	add    BYTE PTR [bx+di],al
  401f37:	00 00                	add    BYTE PTR [bx+si],al
  401f39:	00 eb                	add    bl,ch
  401f3b:	94                   	xchg   sp,ax
  401f3c:	90                   	nop
  401f3d:	90                   	nop
  401f3e:	90                   	nop
  401f3f:	90                   	nop

00401f40 <___security_init_cookie>:
  401f40:	55                   	push   bp
  401f41:	57                   	push   di
  401f42:	56                   	push   si
  401f43:	53                   	push   bx
  401f44:	83 ec 2c             	sub    sp,0x2c
  401f47:	a1 24 30             	mov    ax,ds:0x3024
  401f4a:	40                   	inc    ax
  401f4b:	00 c7                	add    bh,al
  401f4d:	44                   	inc    sp
  401f4e:	24 10                	and    al,0x10
  401f50:	00 00                	add    BYTE PTR [bx+si],al
  401f52:	00 00                	add    BYTE PTR [bx+si],al
  401f54:	c7 44 24 14 00       	mov    WORD PTR [si+0x24],0x14
  401f59:	00 00                	add    BYTE PTR [bx+si],al
  401f5b:	00 3d                	add    BYTE PTR [di],bh
  401f5d:	4e                   	dec    si
  401f5e:	e6 40                	out    0x40,al
  401f60:	bb 74 0f             	mov    bx,0xf74
  401f63:	f7 d0                	not    ax
  401f65:	a3 28 30             	mov    ds:0x3028,ax
  401f68:	40                   	inc    ax
  401f69:	00 83 c4 2c          	add    BYTE PTR [bp+di+0x2cc4],al
  401f6d:	5b                   	pop    bx
  401f6e:	5e                   	pop    si
  401f6f:	5f                   	pop    di
  401f70:	5d                   	pop    bp
  401f71:	c3                   	ret    
  401f72:	8d 44 24             	lea    ax,[si+0x24]
  401f75:	10 89 04 24          	adc    BYTE PTR [bx+di+0x2404],cl
  401f79:	ff 15                	call   WORD PTR [di]
  401f7b:	20 61 40             	and    BYTE PTR [bx+di+0x40],ah
  401f7e:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  401f82:	8b 5c 24             	mov    bx,WORD PTR [si+0x24]
  401f85:	10 33                	adc    BYTE PTR [bp+di],dh
  401f87:	5c                   	pop    sp
  401f88:	24 14                	and    al,0x14
  401f8a:	ff 15                	call   WORD PTR [di]
  401f8c:	10 61 40             	adc    BYTE PTR [bx+di+0x40],ah
  401f8f:	00 89 c5 ff          	add    BYTE PTR [bx+di-0x3b],cl
  401f93:	15 14 61             	adc    ax,0x6114
  401f96:	40                   	inc    ax
  401f97:	00 89 c7 ff          	add    BYTE PTR [bx+di-0x39],cl
  401f9b:	15 24 61             	adc    ax,0x6124
  401f9e:	40                   	inc    ax
  401f9f:	00 89 c6 8d          	add    BYTE PTR [bx+di-0x723a],cl
  401fa3:	44                   	inc    sp
  401fa4:	24 18                	and    al,0x18
  401fa6:	89 04                	mov    WORD PTR [si],ax
  401fa8:	24 ff                	and    al,0xff
  401faa:	15 30 61             	adc    ax,0x6130
  401fad:	40                   	inc    ax
  401fae:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  401fb2:	33 5c 24             	xor    bx,WORD PTR [si+0x24]
  401fb5:	18 33                	sbb    BYTE PTR [bp+di],dh
  401fb7:	5c                   	pop    sp
  401fb8:	24 1c                	and    al,0x1c
  401fba:	31 eb                	xor    bx,bp
  401fbc:	31 df                	xor    di,bx
  401fbe:	31 fe                	xor    si,di
  401fc0:	81 fe 4e e6          	cmp    si,0xe64e
  401fc4:	40                   	inc    ax
  401fc5:	bb 74 18             	mov    bx,0x1874
  401fc8:	89 f0                	mov    ax,si
  401fca:	f7 d0                	not    ax
  401fcc:	89 35                	mov    WORD PTR [di],si
  401fce:	24 30                	and    al,0x30
  401fd0:	40                   	inc    ax
  401fd1:	00 a3 28 30          	add    BYTE PTR [bp+di+0x3028],ah
  401fd5:	40                   	inc    ax
  401fd6:	00 83 c4 2c          	add    BYTE PTR [bp+di+0x2cc4],al
  401fda:	5b                   	pop    bx
  401fdb:	5e                   	pop    si
  401fdc:	5f                   	pop    di
  401fdd:	5d                   	pop    bp
  401fde:	c3                   	ret    
  401fdf:	90                   	nop
  401fe0:	b8 b0 19             	mov    ax,0x19b0
  401fe3:	bf 44 be             	mov    di,0xbe44
  401fe6:	4f                   	dec    di
  401fe7:	e6 40                	out    0x40,al
  401fe9:	bb eb e0             	mov    bx,0xe0eb
  401fec:	8d 74 26             	lea    si,[si+0x26]
	...

00401ff0 <___report_gsfailure>:
  401ff0:	55                   	push   bp
  401ff1:	89 e5                	mov    bp,sp
  401ff3:	83 ec 28             	sub    sp,0x28
  401ff6:	c7 05 80 53          	mov    WORD PTR [di],0x5380
  401ffa:	40                   	inc    ax
  401ffb:	00 09                	add    BYTE PTR [bx+di],cl
  401ffd:	04 00                	add    al,0x0
  401fff:	c0 8b 45 04 8d       	ror    BYTE PTR [bp+di+0x445],0x8d
  402004:	55                   	push   bp
  402005:	04 c7                	add    al,0xc7
  402007:	05 84 53             	add    ax,0x5384
  40200a:	40                   	inc    ax
  40200b:	00 01                	add    BYTE PTR [bx+di],al
  40200d:	00 00                	add    BYTE PTR [bx+si],al
  40200f:	00 c7                	add    bh,al
  402011:	04 24                	add    al,0x24
  402013:	00 00                	add    BYTE PTR [bx+si],al
  402015:	00 00                	add    BYTE PTR [bx+si],al
  402017:	89 15                	mov    WORD PTR [di],dx
  402019:	44                   	inc    sp
  40201a:	51                   	push   cx
  40201b:	40                   	inc    ax
  40201c:	00 a3 38 51          	add    BYTE PTR [bp+di+0x5138],ah
  402020:	40                   	inc    ax
  402021:	00 a3 8c 53          	add    BYTE PTR [bp+di+0x538c],ah
  402025:	40                   	inc    ax
  402026:	00 8b 45 08          	add    BYTE PTR [bp+di+0x845],cl
  40202a:	a3 2c 51             	mov    ds:0x512c,ax
  40202d:	40                   	inc    ax
  40202e:	00 a1 24 30          	add    BYTE PTR [bx+di+0x3024],ah
  402032:	40                   	inc    ax
  402033:	00 89 45 f0          	add    BYTE PTR [bx+di-0xfbb],cl
  402037:	a1 28 30             	mov    ax,ds:0x3028
  40203a:	40                   	inc    ax
  40203b:	00 89 45 f4          	add    BYTE PTR [bx+di-0xbbb],cl
  40203f:	ff 15                	call   WORD PTR [di]
  402041:	34 61                	xor    al,0x61
  402043:	40                   	inc    ax
  402044:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  402048:	c7 04 24 30          	mov    WORD PTR [si],0x3024
  40204c:	42                   	inc    dx
  40204d:	40                   	inc    ax
  40204e:	00 ff                	add    bh,bh
  402050:	15 44 61             	adc    ax,0x6144
  402053:	40                   	inc    ax
  402054:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  402058:	ff 15                	call   WORD PTR [di]
  40205a:	0c 61                	or     al,0x61
  40205c:	40                   	inc    ax
  40205d:	00 c7                	add    bh,al
  40205f:	44                   	inc    sp
  402060:	24 04                	and    al,0x4
  402062:	09 04                	or     WORD PTR [si],ax
  402064:	00 c0                	add    al,al
  402066:	89 04                	mov    WORD PTR [si],ax
  402068:	24 ff                	and    al,0xff
  40206a:	15 3c 61             	adc    ax,0x613c
  40206d:	40                   	inc    ax
  40206e:	00 83 ec 08          	add    BYTE PTR [bp+di+0x8ec],al
  402072:	e8 71 06             	call   4026e6 <_vfprintf+0x6>
  402075:	00 00                	add    BYTE PTR [bx+si],al
  402077:	90                   	nop
  402078:	90                   	nop
  402079:	90                   	nop
  40207a:	90                   	nop
  40207b:	90                   	nop
  40207c:	90                   	nop
  40207d:	90                   	nop
  40207e:	90                   	nop
  40207f:	90                   	nop

00402080 <___mingwthr_run_key_dtors.part.0>:
  402080:	55                   	push   bp
  402081:	57                   	push   di
  402082:	56                   	push   si
  402083:	53                   	push   bx
  402084:	83 ec 1c             	sub    sp,0x1c
  402087:	c7 04 24 08          	mov    WORD PTR [si],0x824
  40208b:	54                   	push   sp
  40208c:	40                   	inc    ax
  40208d:	00 ff                	add    bh,bh
  40208f:	15 08 61             	adc    ax,0x6108
  402092:	40                   	inc    ax
  402093:	00 8b 1d 00          	add    BYTE PTR [bp+di+0x1d],cl
  402097:	54                   	push   sp
  402098:	40                   	inc    ax
  402099:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  40209d:	8b 2d                	mov    bp,WORD PTR [di]
  40209f:	40                   	inc    ax
  4020a0:	61                   	popa   
  4020a1:	40                   	inc    ax
  4020a2:	00 8b 3d 18          	add    BYTE PTR [bp+di+0x183d],cl
  4020a6:	61                   	popa   
  4020a7:	40                   	inc    ax
  4020a8:	00 85 db 74          	add    BYTE PTR [di+0x74db],al
  4020ac:	28 8d 76 00          	sub    BYTE PTR [di+0x76],cl
  4020b0:	8b 03                	mov    ax,WORD PTR [bp+di]
  4020b2:	89 04                	mov    WORD PTR [si],ax
  4020b4:	24 ff                	and    al,0xff
  4020b6:	d5 83                	aad    0x83
  4020b8:	ec                   	in     al,dx
  4020b9:	04 89                	add    al,0x89
  4020bb:	c6                   	(bad)  
  4020bc:	ff d7                	call   di
  4020be:	85 c0                	test   ax,ax
  4020c0:	75 0c                	jne    4020ce <___mingwthr_run_key_dtors.part.0+0x4e>
  4020c2:	85 f6                	test   si,si
  4020c4:	74 08                	je     4020ce <___mingwthr_run_key_dtors.part.0+0x4e>
  4020c6:	8b 43 04             	mov    ax,WORD PTR [bp+di+0x4]
  4020c9:	89 34                	mov    WORD PTR [si],si
  4020cb:	24 ff                	and    al,0xff
  4020cd:	d0 8b 5b 08          	ror    BYTE PTR [bp+di+0x85b],1
  4020d1:	85 db                	test   bx,bx
  4020d3:	75 db                	jne    4020b0 <___mingwthr_run_key_dtors.part.0+0x30>
  4020d5:	c7 04 24 08          	mov    WORD PTR [si],0x824
  4020d9:	54                   	push   sp
  4020da:	40                   	inc    ax
  4020db:	00 ff                	add    bh,bh
  4020dd:	15 2c 61             	adc    ax,0x612c
  4020e0:	40                   	inc    ax
  4020e1:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  4020e5:	83 c4 1c             	add    sp,0x1c
  4020e8:	5b                   	pop    bx
  4020e9:	5e                   	pop    si
  4020ea:	5f                   	pop    di
  4020eb:	5d                   	pop    bp
  4020ec:	c3                   	ret    
  4020ed:	8d 76 00             	lea    si,[bp+0x0]

004020f0 <____w64_mingwthr_add_key_dtor>:
  4020f0:	a1 04 54             	mov    ax,ds:0x5404
  4020f3:	40                   	inc    ax
  4020f4:	00 85 c0 75          	add    BYTE PTR [di+0x75c0],al
  4020f8:	07                   	pop    es
  4020f9:	c3                   	ret    
  4020fa:	8d b6 00 00          	lea    si,[bp+0x0]
  4020fe:	00 00                	add    BYTE PTR [bx+si],al
  402100:	53                   	push   bx
  402101:	83 ec 18             	sub    sp,0x18
  402104:	c7 44 24 04 0c       	mov    WORD PTR [si+0x24],0xc04
  402109:	00 00                	add    BYTE PTR [bx+si],al
  40210b:	00 c7                	add    bh,al
  40210d:	04 24                	add    al,0x24
  40210f:	01 00                	add    WORD PTR [bx+si],ax
  402111:	00 00                	add    BYTE PTR [bx+si],al
  402113:	e8 d8 05             	call   4026ee <_abort+0x6>
  402116:	00 00                	add    BYTE PTR [bx+si],al
  402118:	85 c0                	test   ax,ax
  40211a:	89 c3                	mov    bx,ax
  40211c:	74 42                	je     402160 <____w64_mingwthr_add_key_dtor+0x70>
  40211e:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  402121:	20 c7                	and    bh,al
  402123:	04 24                	add    al,0x24
  402125:	08 54 40             	or     BYTE PTR [si+0x40],dl
  402128:	00 89 03 8b          	add    BYTE PTR [bx+di-0x74fd],cl
  40212c:	44                   	inc    sp
  40212d:	24 24                	and    al,0x24
  40212f:	89 43 04             	mov    WORD PTR [bp+di+0x4],ax
  402132:	ff 15                	call   WORD PTR [di]
  402134:	08 61 40             	or     BYTE PTR [bx+di+0x40],ah
  402137:	00 a1 00 54          	add    BYTE PTR [bx+di+0x5400],ah
  40213b:	40                   	inc    ax
  40213c:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  402140:	89 1d                	mov    WORD PTR [di],bx
  402142:	00 54 40             	add    BYTE PTR [si+0x40],dl
  402145:	00 c7                	add    bh,al
  402147:	04 24                	add    al,0x24
  402149:	08 54 40             	or     BYTE PTR [si+0x40],dl
  40214c:	00 89 43 08          	add    BYTE PTR [bx+di+0x843],cl
  402150:	ff 15                	call   WORD PTR [di]
  402152:	2c 61                	sub    al,0x61
  402154:	40                   	inc    ax
  402155:	00 31                	add    BYTE PTR [bx+di],dh
  402157:	c0 83 ec 04 83       	rol    BYTE PTR [bp+di+0x4ec],0x83
  40215c:	c4 18                	les    bx,DWORD PTR [bx+si]
  40215e:	5b                   	pop    bx
  40215f:	c3                   	ret    
  402160:	b8 ff ff             	mov    ax,0xffff
  402163:	ff                   	(bad)  
  402164:	ff                   	(bad)  
  402165:	eb f4                	jmp    40215b <____w64_mingwthr_add_key_dtor+0x6b>
  402167:	89 f6                	mov    si,si
  402169:	8d bc 27 00          	lea    di,[si+0x27]
  40216d:	00 00                	add    BYTE PTR [bx+si],al
	...

00402170 <____w64_mingwthr_remove_key_dtor>:
  402170:	53                   	push   bx
  402171:	83 ec 18             	sub    sp,0x18
  402174:	a1 04 54             	mov    ax,ds:0x5404
  402177:	40                   	inc    ax
  402178:	00 8b 5c 24          	add    BYTE PTR [bp+di+0x245c],cl
  40217c:	20 85 c0 75          	and    BYTE PTR [di+0x75c0],al
  402180:	0f 83 c4 18          	jae    403a48 <__data_end__+0xa1c>
  402184:	31 c0                	xor    ax,ax
  402186:	5b                   	pop    bx
  402187:	c3                   	ret    
  402188:	90                   	nop
  402189:	8d b4 26 00          	lea    si,[si+0x26]
  40218d:	00 00                	add    BYTE PTR [bx+si],al
  40218f:	00 c7                	add    bh,al
  402191:	04 24                	add    al,0x24
  402193:	08 54 40             	or     BYTE PTR [si+0x40],dl
  402196:	00 ff                	add    bh,bh
  402198:	15 08 61             	adc    ax,0x6108
  40219b:	40                   	inc    ax
  40219c:	00 8b 15 00          	add    BYTE PTR [bp+di+0x15],cl
  4021a0:	54                   	push   sp
  4021a1:	40                   	inc    ax
  4021a2:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  4021a6:	85 d2                	test   dx,dx
  4021a8:	74 17                	je     4021c1 <____w64_mingwthr_remove_key_dtor+0x51>
  4021aa:	8b 02                	mov    ax,WORD PTR [bp+si]
  4021ac:	39 d8                	cmp    ax,bx
  4021ae:	75 0a                	jne    4021ba <____w64_mingwthr_remove_key_dtor+0x4a>
  4021b0:	eb 4e                	jmp    402200 <____w64_mingwthr_remove_key_dtor+0x90>
  4021b2:	8b 08                	mov    cx,WORD PTR [bx+si]
  4021b4:	39 d9                	cmp    cx,bx
  4021b6:	74 28                	je     4021e0 <____w64_mingwthr_remove_key_dtor+0x70>
  4021b8:	89 c2                	mov    dx,ax
  4021ba:	8b 42 08             	mov    ax,WORD PTR [bp+si+0x8]
  4021bd:	85 c0                	test   ax,ax
  4021bf:	75 f1                	jne    4021b2 <____w64_mingwthr_remove_key_dtor+0x42>
  4021c1:	c7 04 24 08          	mov    WORD PTR [si],0x824
  4021c5:	54                   	push   sp
  4021c6:	40                   	inc    ax
  4021c7:	00 ff                	add    bh,bh
  4021c9:	15 2c 61             	adc    ax,0x612c
  4021cc:	40                   	inc    ax
  4021cd:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  4021d1:	83 c4 18             	add    sp,0x18
  4021d4:	31 c0                	xor    ax,ax
  4021d6:	5b                   	pop    bx
  4021d7:	c3                   	ret    
  4021d8:	90                   	nop
  4021d9:	8d b4 26 00          	lea    si,[si+0x26]
  4021dd:	00 00                	add    BYTE PTR [bx+si],al
  4021df:	00 8b 48 08          	add    BYTE PTR [bp+di+0x848],cl
  4021e3:	89 4a 08             	mov    WORD PTR [bp+si+0x8],cx
  4021e6:	89 04                	mov    WORD PTR [si],ax
  4021e8:	24 e8                	and    al,0xe8
  4021ea:	0a 05                	or     al,BYTE PTR [di]
  4021ec:	00 00                	add    BYTE PTR [bx+si],al
  4021ee:	c7 04 24 08          	mov    WORD PTR [si],0x824
  4021f2:	54                   	push   sp
  4021f3:	40                   	inc    ax
  4021f4:	00 ff                	add    bh,bh
  4021f6:	15 2c 61             	adc    ax,0x612c
  4021f9:	40                   	inc    ax
  4021fa:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  4021fe:	eb d1                	jmp    4021d1 <____w64_mingwthr_remove_key_dtor+0x61>
  402200:	89 d0                	mov    ax,dx
  402202:	8b 52 08             	mov    dx,WORD PTR [bp+si+0x8]
  402205:	89 15                	mov    WORD PTR [di],dx
  402207:	00 54 40             	add    BYTE PTR [si+0x40],dl
  40220a:	00 eb                	add    bl,ch
  40220c:	d9 8d 76 00          	(bad)  [di+0x76]

00402210 <___mingw_TLScallback>:
  402210:	83 ec 1c             	sub    sp,0x1c
  402213:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  402216:	24 83                	and    al,0x83
  402218:	f8                   	clc    
  402219:	01 74 48             	add    WORD PTR [si+0x48],si
  40221c:	72 17                	jb     402235 <___mingw_TLScallback+0x25>
  40221e:	83 f8 03             	cmp    ax,0x3
  402221:	75 09                	jne    40222c <___mingw_TLScallback+0x1c>
  402223:	a1 04 54             	mov    ax,ds:0x5404
  402226:	40                   	inc    ax
  402227:	00 85 c0 75          	add    BYTE PTR [di+0x75c0],al
  40222b:	66 b8 01 00 00 00    	mov    eax,0x1
  402231:	83 c4 1c             	add    sp,0x1c
  402234:	c3                   	ret    
  402235:	a1 04 54             	mov    ax,ds:0x5404
  402238:	40                   	inc    ax
  402239:	00 85 c0 75          	add    BYTE PTR [di+0x75c0],al
  40223d:	62 a1 04 54          	bound  sp,DWORD PTR [bx+di+0x5404]
  402241:	40                   	inc    ax
  402242:	00 83 f8 01          	add    BYTE PTR [bp+di+0x1f8],al
  402246:	75 e4                	jne    40222c <___mingw_TLScallback+0x1c>
  402248:	c7 05 04 54          	mov    WORD PTR [di],0x5404
  40224c:	40                   	inc    ax
  40224d:	00 00                	add    BYTE PTR [bx+si],al
  40224f:	00 00                	add    BYTE PTR [bx+si],al
  402251:	00 c7                	add    bh,al
  402253:	04 24                	add    al,0x24
  402255:	08 54 40             	or     BYTE PTR [si+0x40],dl
  402258:	00 ff                	add    bh,bh
  40225a:	15 04 61             	adc    ax,0x6104
  40225d:	40                   	inc    ax
  40225e:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  402262:	eb c8                	jmp    40222c <___mingw_TLScallback+0x1c>
  402264:	a1 04 54             	mov    ax,ds:0x5404
  402267:	40                   	inc    ax
  402268:	00 85 c0 74          	add    BYTE PTR [di+0x74c0],al
  40226c:	13 c7                	adc    ax,di
  40226e:	05 04 54             	add    ax,0x5404
  402271:	40                   	inc    ax
  402272:	00 01                	add    BYTE PTR [bx+di],al
  402274:	00 00                	add    BYTE PTR [bx+si],al
  402276:	00 b8 01 00          	add    BYTE PTR [bx+si+0x1],bh
  40227a:	00 00                	add    BYTE PTR [bx+si],al
  40227c:	83 c4 1c             	add    sp,0x1c
  40227f:	c3                   	ret    
  402280:	c7 04 24 08          	mov    WORD PTR [si],0x824
  402284:	54                   	push   sp
  402285:	40                   	inc    ax
  402286:	00 ff                	add    bh,bh
  402288:	15 28 61             	adc    ax,0x6128
  40228b:	40                   	inc    ax
  40228c:	00 83 ec 04          	add    BYTE PTR [bp+di+0x4ec],al
  402290:	eb db                	jmp    40226d <___mingw_TLScallback+0x5d>
  402292:	e8 e9 fd             	call   40207e <___report_gsfailure+0x8e>
  402295:	ff                   	(bad)  
  402296:	ff                   	(bad)  
  402297:	eb 93                	jmp    40222c <___mingw_TLScallback+0x1c>
  402299:	8d b4 26 00          	lea    si,[si+0x26]
  40229d:	00 00                	add    BYTE PTR [bx+si],al
  40229f:	00 e8                	add    al,ch
  4022a1:	db fd                	(bad)  
  4022a3:	ff                   	(bad)  
  4022a4:	ff                   	(bad)  
  4022a5:	eb 97                	jmp    40223e <___mingw_TLScallback+0x2e>
  4022a7:	90                   	nop
  4022a8:	90                   	nop
  4022a9:	90                   	nop
  4022aa:	90                   	nop
  4022ab:	90                   	nop
  4022ac:	90                   	nop
  4022ad:	90                   	nop
  4022ae:	90                   	nop
  4022af:	90                   	nop

004022b0 <__ValidateImageBase.part.0>:
  4022b0:	03 40 3c             	add    ax,WORD PTR [bx+si+0x3c]
  4022b3:	81 38 50 45          	cmp    WORD PTR [bx+si],0x4550
  4022b7:	00 00                	add    BYTE PTR [bx+si],al
  4022b9:	74 05                	je     4022c0 <__ValidateImageBase.part.0+0x10>
  4022bb:	31 c0                	xor    ax,ax
  4022bd:	c3                   	ret    
  4022be:	66 90                	xchg   eax,eax
  4022c0:	66 81 78 18 0b 01 0f 	cmp    DWORD PTR [bx+si+0x18],0x940f010b
  4022c7:	94 
  4022c8:	c0 0f b6             	ror    BYTE PTR [bx],0xb6
  4022cb:	c0 c3 8d             	rol    bl,0x8d
  4022ce:	76 00                	jbe    4022d0 <__ValidateImageBase>

004022d0 <__ValidateImageBase>:
  4022d0:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  4022d3:	04 66                	add    al,0x66
  4022d5:	81 38 4d 5a          	cmp    WORD PTR [bx+si],0x5a4d
  4022d9:	74 05                	je     4022e0 <__ValidateImageBase+0x10>
  4022db:	31 c0                	xor    ax,ax
  4022dd:	c3                   	ret    
  4022de:	66 90                	xchg   eax,eax
  4022e0:	eb ce                	jmp    4022b0 <__ValidateImageBase.part.0>
  4022e2:	8d b4 26 00          	lea    si,[si+0x26]
  4022e6:	00 00                	add    BYTE PTR [bx+si],al
  4022e8:	00 8d bc 27          	add    BYTE PTR [di+0x27bc],cl
  4022ec:	00 00                	add    BYTE PTR [bx+si],al
	...

004022f0 <__FindPESection>:
  4022f0:	56                   	push   si
  4022f1:	53                   	push   bx
  4022f2:	8b 54 24             	mov    dx,WORD PTR [si+0x24]
  4022f5:	0c 8b                	or     al,0x8b
  4022f7:	5c                   	pop    sp
  4022f8:	24 10                	and    al,0x10
  4022fa:	03 52 3c             	add    dx,WORD PTR [bp+si+0x3c]
  4022fd:	0f b7 72 06          	movzx  si,WORD PTR [bp+si+0x6]
  402301:	0f b7 42 14          	movzx  ax,WORD PTR [bp+si+0x14]
  402305:	85 f6                	test   si,si
  402307:	8d 44 02             	lea    ax,[si+0x2]
  40230a:	18 74 1b             	sbb    BYTE PTR [si+0x1b],dh
  40230d:	31 c9                	xor    cx,cx
  40230f:	90                   	nop
  402310:	8b 50 0c             	mov    dx,WORD PTR [bx+si+0xc]
  402313:	39 da                	cmp    dx,bx
  402315:	77 07                	ja     40231e <__FindPESection+0x2e>
  402317:	03 50 08             	add    dx,WORD PTR [bx+si+0x8]
  40231a:	39 d3                	cmp    bx,dx
  40231c:	72 0c                	jb     40232a <__FindPESection+0x3a>
  40231e:	83 c1 01             	add    cx,0x1
  402321:	83 c0 28             	add    ax,0x28
  402324:	39 f1                	cmp    cx,si
  402326:	75 e8                	jne    402310 <__FindPESection+0x20>
  402328:	31 c0                	xor    ax,ax
  40232a:	5b                   	pop    bx
  40232b:	5e                   	pop    si
  40232c:	c3                   	ret    
  40232d:	8d 76 00             	lea    si,[bp+0x0]

00402330 <__FindPESectionByName>:
  402330:	55                   	push   bp
  402331:	57                   	push   di
  402332:	56                   	push   si
  402333:	53                   	push   bx
  402334:	31 f6                	xor    si,si
  402336:	83 ec 1c             	sub    sp,0x1c
  402339:	8b 7c 24             	mov    di,WORD PTR [si+0x24]
  40233c:	30 89 3c 24          	xor    BYTE PTR [bx+di+0x243c],cl
  402340:	e8 23 03             	call   402666 <_malloc+0x6>
  402343:	00 00                	add    BYTE PTR [bx+si],al
  402345:	83 f8 08             	cmp    ax,0x8
  402348:	77 0b                	ja     402355 <__FindPESectionByName+0x25>
  40234a:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  402351:	4d                   	dec    bp
  402352:	5a                   	pop    dx
  402353:	74 0b                	je     402360 <__FindPESectionByName+0x30>
  402355:	83 c4 1c             	add    sp,0x1c
  402358:	89 f0                	mov    ax,si
  40235a:	5b                   	pop    bx
  40235b:	5e                   	pop    si
  40235c:	5f                   	pop    di
  40235d:	5d                   	pop    bp
  40235e:	c3                   	ret    
  40235f:	90                   	nop
  402360:	b8 00 00             	mov    ax,0x0
  402363:	40                   	inc    ax
  402364:	00 e8                	add    al,ch
  402366:	46                   	inc    si
  402367:	ff                   	(bad)  
  402368:	ff                   	(bad)  
  402369:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  40236d:	e7 a1                	out    0xa1,ax
  40236f:	3c 00                	cmp    al,0x0
  402371:	40                   	inc    ax
  402372:	00 8d 90 00          	add    BYTE PTR [di+0x90],cl
  402376:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  402379:	0f b7 80 14 00       	movzx  ax,WORD PTR [bx+si+0x14]
  40237e:	40                   	inc    ax
  40237f:	00 0f                	add    BYTE PTR [bx],cl
  402381:	b7 6a                	mov    bh,0x6a
  402383:	06                   	push   es
  402384:	8d 5c 02             	lea    bx,[si+0x2]
  402387:	18 85 ed 75          	sbb    BYTE PTR [di+0x75ed],al
  40238b:	0e                   	push   cs
  40238c:	eb c7                	jmp    402355 <__FindPESectionByName+0x25>
  40238e:	66 90                	xchg   eax,eax
  402390:	83 c6 01             	add    si,0x1
  402393:	83 c3 28             	add    bx,0x28
  402396:	39 ee                	cmp    si,bp
  402398:	74 26                	je     4023c0 <__FindPESectionByName+0x90>
  40239a:	c7 44 24 08 08       	mov    WORD PTR [si+0x24],0x808
  40239f:	00 00                	add    BYTE PTR [bx+si],al
  4023a1:	00 89 7c 24          	add    BYTE PTR [bx+di+0x247c],cl
  4023a5:	04 89                	add    al,0x89
  4023a7:	1c 24                	sbb    al,0x24
  4023a9:	e8 52 03             	call   4026fe <_free+0x6>
  4023ac:	00 00                	add    BYTE PTR [bx+si],al
  4023ae:	85 c0                	test   ax,ax
  4023b0:	75 de                	jne    402390 <__FindPESectionByName+0x60>
  4023b2:	83 c4 1c             	add    sp,0x1c
  4023b5:	89 de                	mov    si,bx
  4023b7:	89 f0                	mov    ax,si
  4023b9:	5b                   	pop    bx
  4023ba:	5e                   	pop    si
  4023bb:	5f                   	pop    di
  4023bc:	5d                   	pop    bp
  4023bd:	c3                   	ret    
  4023be:	66 90                	xchg   eax,eax
  4023c0:	83 c4 1c             	add    sp,0x1c
  4023c3:	31 f6                	xor    si,si
  4023c5:	5b                   	pop    bx
  4023c6:	89 f0                	mov    ax,si
  4023c8:	5e                   	pop    si
  4023c9:	5f                   	pop    di
  4023ca:	5d                   	pop    bp
  4023cb:	c3                   	ret    
  4023cc:	8d 74 26             	lea    si,[si+0x26]
	...

004023d0 <___mingw_GetSectionForAddress>:
  4023d0:	53                   	push   bx
  4023d1:	31 db                	xor    bx,bx
  4023d3:	83 ec 08             	sub    sp,0x8
  4023d6:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  4023dd:	4d                   	dec    bp
  4023de:	5a                   	pop    dx
  4023df:	74 0f                	je     4023f0 <___mingw_GetSectionForAddress+0x20>
  4023e1:	83 c4 08             	add    sp,0x8
  4023e4:	89 d8                	mov    ax,bx
  4023e6:	5b                   	pop    bx
  4023e7:	c3                   	ret    
  4023e8:	90                   	nop
  4023e9:	8d b4 26 00          	lea    si,[si+0x26]
  4023ed:	00 00                	add    BYTE PTR [bx+si],al
  4023ef:	00 b8 00 00          	add    BYTE PTR [bx+si+0x0],bh
  4023f3:	40                   	inc    ax
  4023f4:	00 e8                	add    al,ch
  4023f6:	b6 fe                	mov    dh,0xfe
  4023f8:	ff                   	(bad)  
  4023f9:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  4023fd:	e3 8b                	jcxz   40238a <__FindPESectionByName+0x5a>
  4023ff:	44                   	inc    sp
  402400:	24 10                	and    al,0x10
  402402:	c7 04 24 00          	mov    WORD PTR [si],0x24
  402406:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  402409:	2d 00 00             	sub    ax,0x0
  40240c:	40                   	inc    ax
  40240d:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  402411:	04 e8                	add    al,0xe8
  402413:	d9 fe                	fsin   
  402415:	ff                   	(bad)  
  402416:	ff 83 c4 08          	inc    WORD PTR [bp+di+0x8c4]
  40241a:	89 c3                	mov    bx,ax
  40241c:	89 d8                	mov    ax,bx
  40241e:	5b                   	pop    bx
  40241f:	c3                   	ret    

00402420 <___mingw_GetSectionCount>:
  402420:	31 c0                	xor    ax,ax
  402422:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  402429:	4d                   	dec    bp
  40242a:	5a                   	pop    dx
  40242b:	74 03                	je     402430 <___mingw_GetSectionCount+0x10>
  40242d:	f3 c3                	repz ret 
  40242f:	90                   	nop
  402430:	b8 00 00             	mov    ax,0x0
  402433:	40                   	inc    ax
  402434:	00 e8                	add    al,ch
  402436:	76 fe                	jbe    402436 <___mingw_GetSectionCount+0x16>
  402438:	ff                   	(bad)  
  402439:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  40243d:	ef                   	out    dx,ax
  40243e:	a1 3c 00             	mov    ax,ds:0x3c
  402441:	40                   	inc    ax
  402442:	00 0f                	add    BYTE PTR [bx],cl
  402444:	b7 80                	mov    bh,0x80
  402446:	06                   	push   es
  402447:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  40244a:	c3                   	ret    
  40244b:	90                   	nop
  40244c:	8d 74 26             	lea    si,[si+0x26]
	...

00402450 <__FindPESectionExec>:
  402450:	56                   	push   si
  402451:	31 f6                	xor    si,si
  402453:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  40245a:	4d                   	dec    bp
  40245b:	5a                   	pop    dx
  40245c:	53                   	push   bx
  40245d:	8b 5c 24             	mov    bx,WORD PTR [si+0x24]
  402460:	0c 74                	or     al,0x74
  402462:	0d 89 f0             	or     ax,0xf089
  402465:	5b                   	pop    bx
  402466:	5e                   	pop    si
  402467:	c3                   	ret    
  402468:	90                   	nop
  402469:	8d b4 26 00          	lea    si,[si+0x26]
  40246d:	00 00                	add    BYTE PTR [bx+si],al
  40246f:	00 b8 00 00          	add    BYTE PTR [bx+si+0x0],bh
  402473:	40                   	inc    ax
  402474:	00 e8                	add    al,ch
  402476:	36 fe                	ss (bad) 
  402478:	ff                   	(bad)  
  402479:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  40247d:	e5 a1                	in     ax,0xa1
  40247f:	3c 00                	cmp    al,0x0
  402481:	40                   	inc    ax
  402482:	00 8d 88 00          	add    BYTE PTR [di+0x88],cl
  402486:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  402489:	0f b7 80 14 00       	movzx  ax,WORD PTR [bx+si+0x14]
  40248e:	40                   	inc    ax
  40248f:	00 8d 54 01          	add    BYTE PTR [di+0x154],cl
  402493:	18 0f                	sbb    BYTE PTR [bx],cl
  402495:	b7 49                	mov    bh,0x49
  402497:	06                   	push   es
  402498:	85 c9                	test   cx,cx
  40249a:	74 c7                	je     402463 <__FindPESectionExec+0x13>
  40249c:	31 c0                	xor    ax,ax
  40249e:	66 90                	xchg   eax,eax
  4024a0:	f6 42 27 20          	test   BYTE PTR [bp+si+0x27],0x20
  4024a4:	74 07                	je     4024ad <__FindPESectionExec+0x5d>
  4024a6:	85 db                	test   bx,bx
  4024a8:	74 16                	je     4024c0 <__FindPESectionExec+0x70>
  4024aa:	83 eb 01             	sub    bx,0x1
  4024ad:	83 c0 01             	add    ax,0x1
  4024b0:	83 c2 28             	add    dx,0x28
  4024b3:	39 c8                	cmp    ax,cx
  4024b5:	75 e9                	jne    4024a0 <__FindPESectionExec+0x50>
  4024b7:	31 f6                	xor    si,si
  4024b9:	89 f0                	mov    ax,si
  4024bb:	5b                   	pop    bx
  4024bc:	5e                   	pop    si
  4024bd:	c3                   	ret    
  4024be:	66 90                	xchg   eax,eax
  4024c0:	89 d6                	mov    si,dx
  4024c2:	89 f0                	mov    ax,si
  4024c4:	5b                   	pop    bx
  4024c5:	5e                   	pop    si
  4024c6:	c3                   	ret    
  4024c7:	89 f6                	mov    si,si
  4024c9:	8d bc 27 00          	lea    di,[si+0x27]
  4024cd:	00 00                	add    BYTE PTR [bx+si],al
	...

004024d0 <__GetPEImageBase>:
  4024d0:	53                   	push   bx
  4024d1:	31 db                	xor    bx,bx
  4024d3:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  4024da:	4d                   	dec    bp
  4024db:	5a                   	pop    dx
  4024dc:	74 04                	je     4024e2 <__GetPEImageBase+0x12>
  4024de:	89 d8                	mov    ax,bx
  4024e0:	5b                   	pop    bx
  4024e1:	c3                   	ret    
  4024e2:	b8 00 00             	mov    ax,0x0
  4024e5:	40                   	inc    ax
  4024e6:	00 e8                	add    al,ch
  4024e8:	c4                   	(bad)  
  4024e9:	fd                   	std    
  4024ea:	ff                   	(bad)  
  4024eb:	ff 85 c0 b8          	inc    WORD PTR [di-0x4740]
  4024ef:	00 00                	add    BYTE PTR [bx+si],al
  4024f1:	40                   	inc    ax
  4024f2:	00 0f                	add    BYTE PTR [bx],cl
  4024f4:	45                   	inc    bp
  4024f5:	d8 89 d8 5b          	fmul   DWORD PTR [bx+di+0x5bd8]
  4024f9:	c3                   	ret    
  4024fa:	8d b6 00 00          	lea    si,[bp+0x0]
	...

00402500 <__IsNonwritableInCurrentImage>:
  402500:	31 c0                	xor    ax,ax
  402502:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  402509:	4d                   	dec    bp
  40250a:	5a                   	pop    dx
  40250b:	74 03                	je     402510 <__IsNonwritableInCurrentImage+0x10>
  40250d:	c3                   	ret    
  40250e:	66 90                	xchg   eax,eax
  402510:	83 ec 08             	sub    sp,0x8
  402513:	b8 00 00             	mov    ax,0x0
  402516:	40                   	inc    ax
  402517:	00 e8                	add    al,ch
  402519:	93                   	xchg   bx,ax
  40251a:	fd                   	std    
  40251b:	ff                   	(bad)  
  40251c:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  402520:	25 8b 44             	and    ax,0x448b
  402523:	24 0c                	and    al,0xc
  402525:	c7 04 24 00          	mov    WORD PTR [si],0x24
  402529:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  40252c:	2d 00 00             	sub    ax,0x0
  40252f:	40                   	inc    ax
  402530:	00 89 44 24          	add    BYTE PTR [bx+di+0x2444],cl
  402534:	04 e8                	add    al,0xe8
  402536:	b6 fd                	mov    dh,0xfd
  402538:	ff                   	(bad)  
  402539:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  40253d:	12 8b 40 24          	adc    cl,BYTE PTR [bp+di+0x2440]
  402541:	f7 d0                	not    ax
  402543:	c1 e8 1f             	shr    ax,0x1f
  402546:	83 c4 08             	add    sp,0x8
  402549:	c3                   	ret    
  40254a:	8d b6 00 00          	lea    si,[bp+0x0]
  40254e:	00 00                	add    BYTE PTR [bx+si],al
  402550:	31 c0                	xor    ax,ax
  402552:	eb f2                	jmp    402546 <__IsNonwritableInCurrentImage+0x46>
  402554:	8d b6 00 00          	lea    si,[bp+0x0]
  402558:	00 00                	add    BYTE PTR [bx+si],al
  40255a:	8d bf 00 00          	lea    di,[bx+0x0]
	...

00402560 <___mingw_enum_import_library_names>:
  402560:	57                   	push   di
  402561:	56                   	push   si
  402562:	31 ff                	xor    di,di
  402564:	53                   	push   bx
  402565:	83 ec 08             	sub    sp,0x8
  402568:	66 81 3d 00 00 40 00 	cmp    DWORD PTR [di],0x400000
  40256f:	4d                   	dec    bp
  402570:	5a                   	pop    dx
  402571:	8b 74 24             	mov    si,WORD PTR [si+0x24]
  402574:	18 74 09             	sbb    BYTE PTR [si+0x9],dh
  402577:	83 c4 08             	add    sp,0x8
  40257a:	89 f8                	mov    ax,di
  40257c:	5b                   	pop    bx
  40257d:	5e                   	pop    si
  40257e:	5f                   	pop    di
  40257f:	c3                   	ret    
  402580:	b8 00 00             	mov    ax,0x0
  402583:	40                   	inc    ax
  402584:	00 e8                	add    al,ch
  402586:	26 fd                	es std 
  402588:	ff                   	(bad)  
  402589:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  40258d:	e9 a1 3c             	jmp    406231 <.idata$6+0xb>
  402590:	00 40 00             	add    BYTE PTR [bx+si+0x0],al
  402593:	8b 98 80 00          	mov    bx,WORD PTR [bx+si+0x80]
  402597:	40                   	inc    ax
  402598:	00 85 db 74          	add    BYTE PTR [di+0x74db],al
  40259c:	da 89 5c 24          	fimul  DWORD PTR [bx+di+0x245c]
  4025a0:	04 c7                	add    al,0xc7
  4025a2:	04 24                	add    al,0x24
  4025a4:	00 00                	add    BYTE PTR [bx+si],al
  4025a6:	40                   	inc    ax
  4025a7:	00 e8                	add    al,ch
  4025a9:	43                   	inc    bx
  4025aa:	fd                   	std    
  4025ab:	ff                   	(bad)  
  4025ac:	ff 85 c0 74          	inc    WORD PTR [di+0x74c0]
  4025b0:	c6 81 c3 00 00       	mov    BYTE PTR [bx+di+0xc3],0x0
  4025b5:	40                   	inc    ax
  4025b6:	00 89 da 75          	add    BYTE PTR [bx+di+0x75da],cl
  4025ba:	0b eb                	or     bp,bx
  4025bc:	ba 8d 76             	mov    dx,0x768d
  4025bf:	00 83 ee 01          	add    BYTE PTR [bp+di+0x1ee],al
  4025c3:	83 c2 14             	add    dx,0x14
  4025c6:	8b 4a 04             	mov    cx,WORD PTR [bp+si+0x4]
  4025c9:	85 c9                	test   cx,cx
  4025cb:	75 07                	jne    4025d4 <___mingw_enum_import_library_names+0x74>
  4025cd:	8b 42 0c             	mov    ax,WORD PTR [bp+si+0xc]
  4025d0:	85 c0                	test   ax,ax
  4025d2:	74 1c                	je     4025f0 <___mingw_enum_import_library_names+0x90>
  4025d4:	85 f6                	test   si,si
  4025d6:	7f e8                	jg     4025c0 <___mingw_enum_import_library_names+0x60>
  4025d8:	8b 7a 0c             	mov    di,WORD PTR [bp+si+0xc]
  4025db:	83 c4 08             	add    sp,0x8
  4025de:	5b                   	pop    bx
  4025df:	5e                   	pop    si
  4025e0:	81 c7 00 00          	add    di,0x0
  4025e4:	40                   	inc    ax
  4025e5:	00 89 f8 5f          	add    BYTE PTR [bx+di+0x5ff8],cl
  4025e9:	c3                   	ret    
  4025ea:	8d b6 00 00          	lea    si,[bp+0x0]
  4025ee:	00 00                	add    BYTE PTR [bx+si],al
  4025f0:	83 c4 08             	add    sp,0x8
  4025f3:	31 ff                	xor    di,di
  4025f5:	89 f8                	mov    ax,di
  4025f7:	5b                   	pop    bx
  4025f8:	5e                   	pop    si
  4025f9:	5f                   	pop    di
  4025fa:	c3                   	ret    
  4025fb:	90                   	nop
  4025fc:	90                   	nop
  4025fd:	90                   	nop
  4025fe:	90                   	nop
  4025ff:	90                   	nop

00402600 <___chkstk_ms>:
  402600:	51                   	push   cx
  402601:	50                   	push   ax
  402602:	3d 00 10             	cmp    ax,0x1000
  402605:	00 00                	add    BYTE PTR [bx+si],al
  402607:	8d 4c 24             	lea    cx,[si+0x24]
  40260a:	0c 72                	or     al,0x72
  40260c:	15 81 e9             	adc    ax,0xe981
  40260f:	00 10                	add    BYTE PTR [bx+si],dl
  402611:	00 00                	add    BYTE PTR [bx+si],al
  402613:	83 09 00             	or     WORD PTR [bx+di],0x0
  402616:	2d 00 10             	sub    ax,0x1000
  402619:	00 00                	add    BYTE PTR [bx+si],al
  40261b:	3d 00 10             	cmp    ax,0x1000
  40261e:	00 00                	add    BYTE PTR [bx+si],al
  402620:	77 eb                	ja     40260d <___chkstk_ms+0xd>
  402622:	29 c1                	sub    cx,ax
  402624:	83 09 00             	or     WORD PTR [bx+di],0x0
  402627:	58                   	pop    ax
  402628:	59                   	pop    cx
  402629:	c3                   	ret    
  40262a:	90                   	nop
  40262b:	90                   	nop

0040262c <___set_app_type>:
  40262c:	ff 25                	jmp    WORD PTR [di]
  40262e:	64 61                	fs popa 
  402630:	40                   	inc    ax
  402631:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402634 <___getmainargs>:
  402634:	ff 25                	jmp    WORD PTR [di]
  402636:	58                   	pop    ax
  402637:	61                   	popa   
  402638:	40                   	inc    ax
  402639:	00 90 90 66          	add    BYTE PTR [bx+si+0x6690],dl
  40263d:	90                   	nop
  40263e:	66 90                	xchg   eax,eax

00402640 <__get_invalid_parameter_handler>:
  402640:	a1 24 54             	mov    ax,ds:0x5424
  402643:	40                   	inc    ax
  402644:	00 c3                	add    bl,al
  402646:	8d 76 00             	lea    si,[bp+0x0]
  402649:	8d bc 27 00          	lea    di,[si+0x27]
  40264d:	00 00                	add    BYTE PTR [bx+si],al
	...

00402650 <__set_invalid_parameter_handler>:
  402650:	8b 44 24             	mov    ax,WORD PTR [si+0x24]
  402653:	04 87                	add    al,0x87
  402655:	05 24 54             	add    ax,0x5424
  402658:	40                   	inc    ax
  402659:	00 c3                	add    bl,al
  40265b:	90                   	nop
  40265c:	90                   	nop
  40265d:	90                   	nop
  40265e:	90                   	nop
  40265f:	90                   	nop

00402660 <_malloc>:
  402660:	ff 25                	jmp    WORD PTR [di]
  402662:	ac                   	lods   al,BYTE PTR ds:[si]
  402663:	61                   	popa   
  402664:	40                   	inc    ax
  402665:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402668 <_strlen>:
  402668:	ff 25                	jmp    WORD PTR [di]
  40266a:	bc 61 40             	mov    sp,0x4061
  40266d:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402670 <_memcpy>:
  402670:	ff 25                	jmp    WORD PTR [di]
  402672:	b0 61                	mov    al,0x61
  402674:	40                   	inc    ax
  402675:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402678 <__cexit>:
  402678:	ff 25                	jmp    WORD PTR [di]
  40267a:	74 61                	je     4026dd <_fwrite+0x5>
  40267c:	40                   	inc    ax
  40267d:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402680 <__amsg_exit>:
  402680:	ff 25                	jmp    WORD PTR [di]
  402682:	70 61                	jo     4026e5 <_vfprintf+0x5>
  402684:	40                   	inc    ax
  402685:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402688 <__initterm>:
  402688:	ff 25                	jmp    WORD PTR [di]
  40268a:	7c 61                	jl     4026ed <_abort+0x5>
  40268c:	40                   	inc    ax
  40268d:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402690 <_exit>:
  402690:	ff 25                	jmp    WORD PTR [di]
  402692:	98                   	cbw    
  402693:	61                   	popa   
  402694:	40                   	inc    ax
  402695:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402698 <_gets>:
  402698:	ff 25                	jmp    WORD PTR [di]
  40269a:	a8 61                	test   al,0x61
  40269c:	40                   	inc    ax
  40269d:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026a0 <_puts>:
  4026a0:	ff 25                	jmp    WORD PTR [di]
  4026a2:	b4 61                	mov    ah,0x61
  4026a4:	40                   	inc    ax
  4026a5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026a8 <__lock>:
  4026a8:	ff 25                	jmp    WORD PTR [di]
  4026aa:	84 61 40             	test   BYTE PTR [bx+di+0x40],ah
  4026ad:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026b0 <___dllonexit>:
  4026b0:	ff 25                	jmp    WORD PTR [di]
  4026b2:	54                   	push   sp
  4026b3:	61                   	popa   
  4026b4:	40                   	inc    ax
  4026b5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026b8 <__unlock>:
  4026b8:	ff 25                	jmp    WORD PTR [di]
  4026ba:	8c 61 40             	mov    WORD PTR [bx+di+0x40],fs
  4026bd:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026c0 <_signal>:
  4026c0:	ff 25                	jmp    WORD PTR [di]
  4026c2:	b8 61 40             	mov    ax,0x4061
  4026c5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026c8 <___setusermatherr>:
  4026c8:	ff 25                	jmp    WORD PTR [di]
  4026ca:	68 61 40             	push   0x4061
  4026cd:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026d0 <_fprintf>:
  4026d0:	ff 25                	jmp    WORD PTR [di]
  4026d2:	9c                   	pushf  
  4026d3:	61                   	popa   
  4026d4:	40                   	inc    ax
  4026d5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026d8 <_fwrite>:
  4026d8:	ff 25                	jmp    WORD PTR [di]
  4026da:	a4                   	movs   BYTE PTR es:[di],BYTE PTR ds:[si]
  4026db:	61                   	popa   
  4026dc:	40                   	inc    ax
  4026dd:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026e0 <_vfprintf>:
  4026e0:	ff 25                	jmp    WORD PTR [di]
  4026e2:	c4 61 40             	les    sp,DWORD PTR [bx+di+0x40]
  4026e5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026e8 <_abort>:
  4026e8:	ff 25                	jmp    WORD PTR [di]
  4026ea:	90                   	nop
  4026eb:	61                   	popa   
  4026ec:	40                   	inc    ax
  4026ed:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026f0 <_calloc>:
  4026f0:	ff 25                	jmp    WORD PTR [di]
  4026f2:	94                   	xchg   sp,ax
  4026f3:	61                   	popa   
  4026f4:	40                   	inc    ax
  4026f5:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

004026f8 <_free>:
  4026f8:	ff 25                	jmp    WORD PTR [di]
  4026fa:	a0 61 40             	mov    al,ds:0x4061
  4026fd:	00 90 90 ff          	add    BYTE PTR [bx+si-0x70],dl

00402700 <_strncmp>:
  402700:	ff 25                	jmp    WORD PTR [di]
  402702:	c0 61 40 00          	shl    BYTE PTR [bx+di+0x40],0x0
  402706:	90                   	nop
  402707:	90                   	nop

00402708 <__CTOR_LIST__>:
  402708:	ff                   	(bad)  
  402709:	ff                   	(bad)  
  40270a:	ff                   	(bad)  
  40270b:	ff 00                	inc    WORD PTR [bx+si]
  40270d:	00 00                	add    BYTE PTR [bx+si],al
	...

00402710 <__DTOR_LIST__>:
  402710:	ff                   	(bad)  
  402711:	ff                   	(bad)  
  402712:	ff                   	(bad)  
  402713:	ff 00                	inc    WORD PTR [bx+si]
  402715:	00 00                	add    BYTE PTR [bx+si],al
	...
