#pragma debug scope 1 1
#line 24 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
__stm0ah EQU [02dH]
__stm0al EQU [02cH]
__stm0dh EQU [02bH]
__stm0dl EQU [02aH]
__stm0c1 EQU [029H]
__stm0c0 EQU [028H]
__pasr EQU [026H]
__rstc EQU [025H]
__sadc2 EQU [024H]
__sadc1 EQU [023H]
__sadc0 EQU [022H]
__sadoh EQU [021H]
__sadol EQU [020H]
__eed EQU [01fH]
__eea EQU [01eH]
__smod1 EQU [01cH]
__tbc EQU [01bH]
__wdtc EQU [019H]
__ifs0 EQU [018H]
__pawu EQU [017H]
__papu EQU [016H]
__pac EQU [015H]
__pa EQU [014H]
__mfi0 EQU [011H]
__intc1 EQU [0fH]
__intc0 EQU [0eH]
__integ EQU [0dH]
__smod EQU [0bH]
__status EQU [0aH]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__bp EQU [04H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@@INT_ISR .SECTION AT 04H 'CODE'
JMP _INT_ISR
@INT_ISR .SECTION 'CODE'
_INT_ISR PROC
MOV V1A,A
MOV A,[0AH]
MOV V1S,A
MOV A,[03H]
MOV V1MP1,A
MOV A,[04H]
MOV V1BP,A
#pragma debug scope 2 1 ; 25 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 25 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 26 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SZ [014H].2
JMP L6
#pragma debug scope 3 2 ; 27 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 27 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [028H].3
#line 28 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].3
#line 29 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [028H].7
#line 30 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 2 1 ; 30 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L7
L6:
#pragma debug scope 4 2 ; 32 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 32 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].7
#line 33 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,__stm0dh
MOV b0_1[1],A
CLR b0_1
MOV A,__stm0dl
MOV b1_1,A
CLR b1_1[1]
MOV A,b0_1
OR A,b1_1
MOV b0_1,A
MOV A,b0_1[1]
OR A,b1_1[1]
MOV b0_1[1],A
MOV A,BANK _t1
MOV [04H],A
MOV A,OFFSET _t1
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
#line 34 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [028H].3
#line 35 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].3
#line 36 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _t1
MOV [04H],A
MOV A,OFFSET _t1
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
SUB A,083h
SNZ [0AH].0
JMP L8
SNZ [0AH].2
JMP L43
MOV A,00h
SUB A,b0_1
SZ [0AH].0
JMP L8
L43:
#pragma debug scope 5 4 ; 37 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 37 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 38 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 39 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 39 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L9
L8:
#line 39 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _t1
MOV [04H],A
MOV A,OFFSET _t1
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
SUB A,082h
SNZ [0AH].0
JMP L10
SNZ [0AH].2
JMP L44
MOV A,00h
SUB A,b0_1
SZ [0AH].0
JMP L10
L44:
#pragma debug scope 6 4 ; 40 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 40 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 41 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 42 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 42 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L11
L10:
#line 42 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _t1
MOV [04H],A
MOV A,OFFSET _t1
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
SUB A,081h
SNZ [0AH].0
JMP L12
SNZ [0AH].2
JMP L45
MOV A,00h
SUB A,b0_1
SZ [0AH].0
JMP L12
L45:
#pragma debug scope 7 4 ; 42 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 42 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L12:
L11:
L9:
#line 43 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 43 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
XOR A,01h
SNZ [0AH].2
JMP L14
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L14
#pragma debug scope 8 4 ; 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L16
#pragma debug scope 9 8 ; 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _dev
MOV [04H],A
MOV A,OFFSET _dev
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 8 4 ; 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L17
L16:
#pragma debug scope 10 8 ; 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 44 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _dev
MOV [04H],A
MOV A,OFFSET _dev
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L17:
L14:
#line 46 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 46 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
XOR A,02h
SNZ [0AH].2
JMP L18
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L18
#pragma debug scope 11 4 ; 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L20
#pragma debug scope 12 11 ; 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _f
MOV [04H],A
MOV A,OFFSET _f
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 11 4 ; 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L21
L20:
#pragma debug scope 13 11 ; 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 47 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _f
MOV [04H],A
MOV A,OFFSET _f
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L21:
L18:
#line 49 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 49 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
XOR A,03h
SNZ [0AH].2
JMP L22
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L22
#pragma debug scope 14 4 ; 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L24
#pragma debug scope 15 14 ; 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _b
MOV [04H],A
MOV A,OFFSET _b
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 14 4 ; 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L25
L24:
#pragma debug scope 16 14 ; 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 50 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _b
MOV [04H],A
MOV A,OFFSET _b
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L25:
L22:
#line 52 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 52 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
XOR A,04h
SNZ [0AH].2
JMP L26
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L26
#pragma debug scope 17 4 ; 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L28
#pragma debug scope 18 17 ; 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _h
MOV [04H],A
MOV A,OFFSET _h
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 17 4 ; 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L29
L28:
#pragma debug scope 19 17 ; 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 53 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _h
MOV [04H],A
MOV A,OFFSET _h
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L29:
L26:
#line 55 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 4 2 ; 55 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
XOR A,04h
SNZ [0AH].2
JMP L30
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L30
#pragma debug scope 20 4 ; 56 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 56 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SZ [014H].5
JMP L35
MOV A,01h
MOV CR1,A
JMP L36
L35:
CLR CR1
L36:
MOV A,CR1
MOV b0_1,A
CLR b0_1[1]
MOV A,BANK _dev
MOV [04H],A
MOV A,OFFSET _dev
MOV [03H],A
MOV A,[02H]
AND A,b0_1
MOV b0_1,A
INC [03H]
MOV A,[02H]
AND A,b0_1[1]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L32
#pragma debug scope 21 20 ; 56 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 56 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 20 4 ; 56 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L33
L32:
#pragma debug scope 22 20 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _f
MOV [04H],A
MOV A,OFFSET _f
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L37
#pragma debug scope 23 22 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _turn_right
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_on
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 22 20 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L38
L37:
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _b
MOV [04H],A
MOV A,OFFSET _b
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L39
#pragma debug scope 24 22 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _turn_left
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_on
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 22 20 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L40
L39:
#pragma debug scope 25 22 ; 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _stop
#line 57 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_off
L40:
L38:
#line 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 22 20 ; 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _h
MOV [04H],A
MOV A,OFFSET _h
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L41
#pragma debug scope 26 22 ; 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 22 20 ; 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L42
L41:
#pragma debug scope 27 22 ; 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 58 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L42:
L33:
L30:
L7:
L5:
MOV A,V1MP1
MOV [03H],A
MOV A,V1BP
MOV [04H],A
MOV A,V1S
MOV [0AH],A
MOV A,V1A
RETI
_INT_ISR ENDP
RAMBANK 0 @INT_ISR
@INT_ISR .SECTION 'DATA'
b0_1 DB 2 DUP(?)
b1_1 DB 2 DUP(?)
CR1 DB ? ; 34
#line 85 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@@TB0_ISR .SECTION AT 08H 'CODE'
JMP _TB0_ISR
@TB0_ISR .SECTION 'CODE'
_TB0_ISR PROC
MOV V2A,A
MOV A,[0AH]
MOV V2S,A
MOV A,[03H]
MOV V2MP1,A
MOV A,[04H]
MOV V2BP,A
#pragma debug scope 28 1 ; 87 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 87 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
MOV A,[02H]
MOV b0_2,A
INC [03H]
MOV A,[02H]
MOV b0_2[1],A
MOV A,b0_2
OR A,b0_2[1]
SZ [0AH].2
JMP L47
#pragma debug scope 29 28 ; 88 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 88 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,1<<7
XORM A,[014H]
#line 89 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 28 1 ; 89 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L48
L47:
#pragma debug scope 30 28 ; 90 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 90 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].7
L48:
#line 91 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 28 1 ; 91 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [0EH].6
L46:
MOV A,V2MP1
MOV [03H],A
MOV A,V2BP
MOV [04H],A
MOV A,V2S
MOV [0AH],A
MOV A,V2A
RETI
_TB0_ISR ENDP
RAMBANK 0 @TB0_ISR
@TB0_ISR .SECTION 'DATA'
b0_2 DB 2 DUP(?)
#line 98 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@@TB1_ISR .SECTION AT 0cH 'CODE'
JMP _TB1_ISR
@TB1_ISR .SECTION 'CODE'
_TB1_ISR PROC
MOV V3A,A
MOV A,[0AH]
MOV V3S,A
#pragma debug scope 31 1 ; 99 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 99 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].7
#line 100 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [028H].3
#line 101 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].3
#line 102 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [0EH].5
L49:
MOV A,V3S
MOV [0AH],A
MOV A,V3A
RETI
_TB1_ISR ENDP
RAMBANK 0 @TB1_ISR
@TB1_ISR .SECTION 'DATA'
#line 109 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 32 1 ; 110 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 110 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].6
#line 111 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [015H].0
#line 112 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [015H].1
#line 113 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [015H].7
#line 114 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [015H].6
#line 115 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [015H].2
#line 116 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [015H].5
#line 117 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [016H].0
#line 118 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [016H].1
#line 119 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [016H].2
#line 120 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [016H].5
#line 121 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [017H].2
#line 122 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _SysClockDivision_Init
#line 124 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,0a8h
MOV __wdtc,A
#line 125 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _STM_Init
#line 126 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [028H].3
#line 127 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [028H].7
#line 131 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [01BH].7
#line 132 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [0EH].2
#line 133 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [0EH].5
#line 134 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [0EH].3
#line 135 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [0EH].6
#line 136 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _TimeBase_Init
#line 138 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_on
#line 139 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Buzzing
#line 140 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_off
#line 141 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _EXIT_Init
#line 142 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [0EH].1
#line 143 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [0EH].0
#line 144 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _t0
MOV [04H],A
MOV A,OFFSET _t0
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 145 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 146 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _stop
#line 146 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L52
L51:
#pragma debug scope 33 32 ; 149 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 149 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 150 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
MOV A,[02H]
MOV b0_4,A
INC [03H]
MOV A,[02H]
MOV b0_4[1],A
MOV A,80h
XOR A,b0_4[1]
SUB A,0ceh
SNZ [0AH].0
JMP L54
SNZ [0AH].2
JMP L56
MOV A,020h
SUB A,b0_4
SZ [0AH].0
JMP L54
L56:
#pragma debug scope 34 33 ; 152 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 152 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 153 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].0
#line 153 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].1
#line 154 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CALL _Led_off
#line 155 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 156 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,02H
MOV RH,A
MOV A,0f8H
CALL __DELAYY1
#line 157 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
HALT
L54:
L52:
#line 148 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 32 1 ; 148 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP L51
L50:
#line 160 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
JMP $
LOCAL b0_4 DB 2 DUP(?)
_main ENDP
#line 164 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@turn_right .SECTION 'CODE'
PUBLIC _turn_right
_turn_right PROC
#pragma debug scope 35 1 ; 165 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 165 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].0
#line 166 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].1
L57:
RET
_turn_right ENDP
#line 168 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@turn_left .SECTION 'CODE'
PUBLIC _turn_left
_turn_left PROC
#pragma debug scope 36 1 ; 169 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 169 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].0
#line 170 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].1
L58:
RET
_turn_left ENDP
#line 173 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@stop .SECTION 'CODE'
PUBLIC _stop
_stop PROC
#pragma debug scope 37 1 ; 174 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 174 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].0
#line 175 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].1
L59:
RET
_stop ENDP
#line 178 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@Led_on .SECTION 'CODE'
PUBLIC _Led_on
_Led_on PROC
#pragma debug scope 38 1 ; 179 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 179 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].6
L60:
RET
_Led_on ENDP
#line 181 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@Led_off .SECTION 'CODE'
PUBLIC _Led_off
_Led_off PROC
#pragma debug scope 39 1 ; 182 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 182 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].6
L61:
RET
_Led_off ENDP
#line 184 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@Buzzing .SECTION 'CODE'
PUBLIC _Buzzing
_Buzzing PROC
#pragma debug scope 40 1 ; 196 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 196 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L63:
#pragma debug scope 41 40 ; 197 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 197 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].7
#line 198 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,01H
MOV RH,A
MOV A,04H
CALL __DELAYY3
#line 199 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].7
#line 200 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,01H
MOV RH,A
MOV A,04H
CALL __DELAYY3
L64:
#line 196 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 40 1 ; 196 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 196 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_10,A
INC [03H]
MOV A,[02H]
MOV b0_10[1],A
MOV A,80h
XOR A,b0_10[1]
SUB A,081h
SNZ [0AH].0
JMP L63
SNZ [0AH].2
JMP L71
MOV A,b0_10
SUB A,02ch
SNZ [0AH].0
JMP L63
L71:
#line 202 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L67:
#pragma debug scope 42 40 ; 203 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#line 203 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
SET [014H].7
#line 204 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,01H
MOV RH,A
MOV A,061H
CALL __DELAYY1
#line 205 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
CLR [014H].7
#line 206 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,01H
MOV RH,A
MOV A,061H
CALL __DELAYY1
L68:
#line 202 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
#pragma debug scope 40 1 ; 202 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 202 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_10,A
INC [03H]
MOV A,[02H]
MOV b0_10[1],A
MOV A,80h
XOR A,b0_10[1]
SUB A,080h
SNZ [0AH].0
JMP L67
SNZ [0AH].2
JMP L72
MOV A,b0_10
SUB A,0dch
SNZ [0AH].0
JMP L67
L72:
L62:
RET
LOCAL b0_10 DB 2 DUP(?)
_Buzzing ENDP
#line 14 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _h
@h .SECTION 'DATA'
_h DB 2 DUP (?) ;h
#pragma debug variable 11 1 _h h
#line 14 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _b
@b .SECTION 'DATA'
_b DB 2 DUP (?) ;b
#pragma debug variable 11 1 _b b
#line 14 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _f
@f .SECTION 'DATA'
_f DB 2 DUP (?) ;f
#pragma debug variable 11 1 _f f
#line 14 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _bit_in
@bit_in .SECTION 'DATA'
_bit_in DB 2 DUP (?) ;bit_in
#pragma debug variable 11 1 _bit_in bit_in
#line 14 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _dev
@dev .SECTION 'DATA'
_dev DB 2 DUP (?) ;dev
#pragma debug variable 11 1 _dev dev
#line 13 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _diff
@diff .SECTION 'DATA'
_diff DB 2 DUP (?) ;diff
#pragma debug variable 11 1 _diff diff
#line 12 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _cnt
@cnt .SECTION 'DATA'
_cnt DB 2 DUP (?) ;cnt
#pragma debug variable 11 1 _cnt cnt
#line 12 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _buzz
@buzz .SECTION 'DATA'
_buzz DB 2 DUP (?) ;buzz
#pragma debug variable 11 1 _buzz buzz
#line 12 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _t1
@t1 .SECTION 'DATA'
_t1 DB 2 DUP (?) ;t1
#pragma debug variable 11 1 _t1 t1
#line 12 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _t0
@t0 .SECTION 'DATA'
_t0 DB 2 DUP (?) ;t0
#pragma debug variable 11 1 _t0 t0
#line 11 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _p
@p .SECTION 'DATA'
_p DB 2 DUP (?) ;p
#pragma debug variable 11 1 _p p
#line 11 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _j
@j .SECTION 'DATA'
_j DB 2 DUP (?) ;j
#pragma debug variable 11 1 _j j
#line 11 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
PUBLIC _i
@i .SECTION 'DATA'
_i DB 2 DUP (?) ;i
#pragma debug variable 11 1 _i i
EXTERN _TimeBase_Init:NEAR
EXTERN _STM_Init:NEAR
EXTERN _EXIT_Init:NEAR
EXTERN _SysClockDivision_Init:NEAR
#line 108 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN V1MP1:BYTE
EXTERN V1BP:BYTE
EXTERN V2A:BYTE
EXTERN V2S:BYTE
EXTERN V2MP1:BYTE
EXTERN V2BP:BYTE
EXTERN V3A:BYTE
EXTERN V3S:BYTE
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 108 "C:\Users\111\Documents\HTK_Project\car2\car2.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
