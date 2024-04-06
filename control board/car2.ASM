#pragma debug scope 1 1
#line 27 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#pragma debug scope 2 1 ; 28 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 28 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 29 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SZ [014H].2
JMP L6
#pragma debug scope 3 2 ; 30 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 30 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [028H].3
#line 31 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].3
#line 32 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [028H].7
#line 33 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 2 1 ; 33 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L7
L6:
#pragma debug scope 4 2 ; 35 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 35 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].7
#line 36 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#line 37 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [028H].3
#line 38 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].3
#line 39 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L36
MOV A,00h
SUB A,b0_1
SZ [0AH].0
JMP L8
L36:
#pragma debug scope 5 4 ; 40 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 40 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 41 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 42 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 42 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L9
L8:
#line 42 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L37
MOV A,00h
SUB A,b0_1
SZ [0AH].0
JMP L10
L37:
#pragma debug scope 6 4 ; 43 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 43 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 44 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 45 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 45 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L11
L10:
#line 45 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
SUB A,080h
SNZ [0AH].0
JMP L12
SNZ [0AH].2
JMP L38
MOV A,096h
SUB A,b0_1
SZ [0AH].0
JMP L12
L38:
#pragma debug scope 7 4 ; 45 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 45 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#line 46 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 46 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#pragma debug scope 8 4 ; 48 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 48 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _fr
MOV [04H],A
MOV A,OFFSET _fr
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
L14:
#line 50 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 50 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L16
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L16
#pragma debug scope 9 4 ; 52 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 52 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _fl
MOV [04H],A
MOV A,OFFSET _fl
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
L16:
#line 54 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 54 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L18
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L18
#pragma debug scope 10 4 ; 56 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 56 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _br
MOV [04H],A
MOV A,OFFSET _br
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
L18:
#line 58 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 58 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L20
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L20
#pragma debug scope 11 4 ; 60 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 60 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _bl
MOV [04H],A
MOV A,OFFSET _bl
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
L20:
#line 62 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 62 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
XOR A,05h
SNZ [0AH].2
JMP L22
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L22
#pragma debug scope 12 4 ; 64 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 64 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bit_in
MOV [04H],A
MOV A,OFFSET _bit_in
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _h
MOV [04H],A
MOV A,OFFSET _h
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
L22:
#line 66 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 4 2 ; 66 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
XOR A,05h
SNZ [0AH].2
JMP L24
MOV A,b0_1[1]
XOR A,00h
SNZ [0AH].2
JMP L24
#pragma debug scope 13 4 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _fr
MOV [04H],A
MOV A,OFFSET _fr
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L26
#pragma debug scope 14 13 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_rightr
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L27
L26:
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _br
MOV [04H],A
MOV A,OFFSET _br
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
#pragma debug scope 15 13 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_leftr
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L29
L28:
#pragma debug scope 16 13 ; 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _stopr
L29:
L27:
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _fl
MOV [04H],A
MOV A,OFFSET _fl
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L30
#pragma debug scope 17 13 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_rightl
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L31
L30:
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _bl
MOV [04H],A
MOV A,OFFSET _bl
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,b0_1
OR A,b0_1[1]
SZ [0AH].2
JMP L32
#pragma debug scope 18 13 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_leftl
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L33
L32:
#pragma debug scope 19 13 ; 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 68 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _stopl
L33:
L31:
#line 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L34
#pragma debug scope 20 13 ; 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
MOV A,01h
MOV [02H],A
INC [03H]
CLR [02H]
#line 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L35
L34:
#pragma debug scope 21 13 ; 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 69 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L35:
#line 70 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 13 4 ; 70 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _p
MOV [04H],A
MOV A,OFFSET _p
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L24:
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
#line 96 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#pragma debug scope 22 1 ; 98 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 98 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L40
#pragma debug scope 23 22 ; 99 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 99 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,1<<7
XORM A,[014H]
#line 100 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 22 1 ; 100 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L41
L40:
#pragma debug scope 24 22 ; 101 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 101 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].7
L41:
#line 102 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 22 1 ; 102 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [0EH].6
L39:
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
#line 109 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@@TB1_ISR .SECTION AT 0cH 'CODE'
JMP _TB1_ISR
@TB1_ISR .SECTION 'CODE'
_TB1_ISR PROC
MOV V3A,A
MOV A,[0AH]
MOV V3S,A
#pragma debug scope 25 1 ; 110 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 110 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].7
#line 111 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [028H].3
#line 112 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].3
#line 113 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [0EH].5
L42:
MOV A,V3S
MOV [0AH],A
MOV A,V3A
RETI
_TB1_ISR ENDP
RAMBANK 0 @TB1_ISR
@TB1_ISR .SECTION 'DATA'
#line 120 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 26 1 ; 121 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 121 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].0
#line 122 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].1
#line 123 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].7
#line 124 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].6
#line 125 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].5
#line 126 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [015H].0
#line 127 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [015H].1
#line 128 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [015H].7
#line 129 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [015H].6
#line 130 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [015H].5
#line 131 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [015H].2
#line 133 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].0
#line 134 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].1
#line 135 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].2
#line 136 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].5
#line 137 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].6
#line 138 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [016H].7
#line 139 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [017H].2
#line 140 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _SysClockDivision_Init
#line 142 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,0a8h
MOV __wdtc,A
#line 143 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _STM_Init
#line 144 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [028H].3
#line 145 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [028H].7
#line 149 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [01BH].7
#line 150 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [0EH].2
#line 151 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [0EH].5
#line 152 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [0EH].3
#line 153 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [0EH].6
#line 154 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _TimeBase_Init
#line 159 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _EXIT_Init
#line 160 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [0EH].1
#line 161 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [0EH].0
#line 162 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _t0
MOV [04H],A
MOV A,OFFSET _t0
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 163 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 164 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_leftl
#line 165 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,0100H
MOV RH,A
MOV A,00H
CALL __DELAYY5
#line 166 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_leftr
#line 167 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,0100H
MOV RH,A
MOV A,00H
CALL __DELAYY5
#line 168 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_rightl
#line 169 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,0100H
MOV RH,A
MOV A,00H
CALL __DELAYY5
#line 170 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _turn_rightr
#line 171 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,0100H
MOV RH,A
MOV A,00H
CALL __DELAYY5
#line 172 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _stopr
#line 173 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CALL _stopl
#line 173 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L45
L44:
#pragma debug scope 27 26 ; 175 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 175 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 176 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
JMP L47
SNZ [0AH].2
JMP L49
MOV A,020h
SUB A,b0_4
SZ [0AH].0
JMP L47
L49:
#pragma debug scope 28 27 ; 178 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 178 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _cnt
MOV [04H],A
MOV A,OFFSET _cnt
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 179 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].0
#line 179 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].1
#line 180 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].6
#line 180 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].5
#line 182 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _buzz
MOV [04H],A
MOV A,OFFSET _buzz
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 183 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,02H
MOV RH,A
MOV A,0f8H
CALL __DELAYY1
#line 184 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
HALT
L47:
L45:
#line 174 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 26 1 ; 174 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP L44
L43:
#line 187 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
JMP $
LOCAL b0_4 DB 2 DUP(?)
_main ENDP
#line 191 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@turn_rightr .SECTION 'CODE'
PUBLIC _turn_rightr
_turn_rightr PROC
#pragma debug scope 29 1 ; 192 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 192 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].0
#line 193 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].1
L50:
RET
_turn_rightr ENDP
#line 195 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@turn_leftr .SECTION 'CODE'
PUBLIC _turn_leftr
_turn_leftr PROC
#pragma debug scope 30 1 ; 196 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 196 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].0
#line 197 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].1
L51:
RET
_turn_leftr ENDP
#line 200 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@turn_rightl .SECTION 'CODE'
PUBLIC _turn_rightl
_turn_rightl PROC
#pragma debug scope 31 1 ; 201 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 201 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].6
#line 202 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].5
L52:
RET
_turn_rightl ENDP
#line 204 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@turn_leftl .SECTION 'CODE'
PUBLIC _turn_leftl
_turn_leftl PROC
#pragma debug scope 32 1 ; 205 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 205 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].6
#line 206 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].5
L53:
RET
_turn_leftl ENDP
#line 209 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@stopr .SECTION 'CODE'
PUBLIC _stopr
_stopr PROC
#pragma debug scope 33 1 ; 210 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 210 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].0
#line 211 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].1
L54:
RET
_stopr ENDP
#line 214 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@stopl .SECTION 'CODE'
PUBLIC _stopl
_stopl PROC
#pragma debug scope 34 1 ; 215 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 215 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].6
#line 216 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].5
L55:
RET
_stopl ENDP
#line 219 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@Led_on .SECTION 'CODE'
PUBLIC _Led_on
_Led_on PROC
#pragma debug scope 35 1 ; 220 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 220 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].6
L56:
RET
_Led_on ENDP
#line 222 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@Led_off .SECTION 'CODE'
PUBLIC _Led_off
_Led_off PROC
#pragma debug scope 36 1 ; 223 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 223 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].6
L57:
RET
_Led_off ENDP
#line 225 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@Buzzing .SECTION 'CODE'
PUBLIC _Buzzing
_Buzzing PROC
#pragma debug scope 37 1 ; 237 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 237 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L59:
#pragma debug scope 38 37 ; 238 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 238 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].7
#line 239 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,01H
MOV RH,A
MOV A,04H
CALL __DELAYY3
#line 240 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].7
#line 241 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,01H
MOV RH,A
MOV A,04H
CALL __DELAYY3
L60:
#line 237 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 37 1 ; 237 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 237 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_13,A
INC [03H]
MOV A,[02H]
MOV b0_13[1],A
MOV A,80h
XOR A,b0_13[1]
SUB A,081h
SNZ [0AH].0
JMP L59
SNZ [0AH].2
JMP L67
MOV A,b0_13
SUB A,02ch
SNZ [0AH].0
JMP L59
L67:
#line 243 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L63:
#pragma debug scope 39 37 ; 244 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#line 244 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
SET [014H].7
#line 245 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,01H
MOV RH,A
MOV A,061H
CALL __DELAYY1
#line 246 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
CLR [014H].7
#line 247 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,01H
MOV RH,A
MOV A,061H
CALL __DELAYY1
L64:
#line 243 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
#pragma debug scope 37 1 ; 243 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 243 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_13,A
INC [03H]
MOV A,[02H]
MOV b0_13[1],A
MOV A,80h
XOR A,b0_13[1]
SUB A,080h
SNZ [0AH].0
JMP L63
SNZ [0AH].2
JMP L68
MOV A,b0_13
SUB A,0dch
SNZ [0AH].0
JMP L63
L68:
L58:
RET
LOCAL b0_13 DB 2 DUP(?)
_Buzzing ENDP
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _h
@h .SECTION 'DATA'
_h DB 2 DUP (?) ;h
#pragma debug variable 11 1 _h h
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _br
@br .SECTION 'DATA'
_br DB 2 DUP (?) ;br
#pragma debug variable 11 1 _br br
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _bl
@bl .SECTION 'DATA'
_bl DB 2 DUP (?) ;bl
#pragma debug variable 11 1 _bl bl
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _fr
@fr .SECTION 'DATA'
_fr DB 2 DUP (?) ;fr
#pragma debug variable 11 1 _fr fr
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _bit_in
@bit_in .SECTION 'DATA'
_bit_in DB 2 DUP (?) ;bit_in
#pragma debug variable 11 1 _bit_in bit_in
#line 14 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _fl
@fl .SECTION 'DATA'
_fl DB 2 DUP (?) ;fl
#pragma debug variable 11 1 _fl fl
#line 13 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _diff
@diff .SECTION 'DATA'
_diff DB 2 DUP (?) ;diff
#pragma debug variable 11 1 _diff diff
#line 12 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _cnt
@cnt .SECTION 'DATA'
_cnt DB 2 DUP (?) ;cnt
#pragma debug variable 11 1 _cnt cnt
#line 12 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _buzz
@buzz .SECTION 'DATA'
_buzz DB 2 DUP (?) ;buzz
#pragma debug variable 11 1 _buzz buzz
#line 12 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _t1
@t1 .SECTION 'DATA'
_t1 DB 2 DUP (?) ;t1
#pragma debug variable 11 1 _t1 t1
#line 12 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _t0
@t0 .SECTION 'DATA'
_t0 DB 2 DUP (?) ;t0
#pragma debug variable 11 1 _t0 t0
#line 11 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _p
@p .SECTION 'DATA'
_p DB 2 DUP (?) ;p
#pragma debug variable 11 1 _p p
#line 11 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _j
@j .SECTION 'DATA'
_j DB 2 DUP (?) ;j
#pragma debug variable 11 1 _j j
#line 11 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
PUBLIC _i
@i .SECTION 'DATA'
_i DB 2 DUP (?) ;i
#pragma debug variable 11 1 _i i
EXTERN _TimeBase_Init:NEAR
EXTERN _STM_Init:NEAR
EXTERN _EXIT_Init:NEAR
EXTERN _SysClockDivision_Init:NEAR
#line 119 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
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
#line 119 "d:\work4\2_motor_general\5ch_general_rc\control board\car2.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
