#pragma debug scope 1 1
#line 56 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
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
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 57 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 57 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [019H].0
#line 58 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [019H].1
#line 59 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [019H].2
#line 62 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [017H].6
#line 63 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [017H].7
#line 64 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [017H].1
#line 65 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [015H].6
#line 66 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [016H].6
#line 67 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [015H].7
#line 68 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [016H].7
#line 69 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [015H].1
#line 70 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [016H].1
#line 71 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [015H].5
#line 72 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [016H].5
#line 74 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _STM_Init
#line 76 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _g_nCCRA
MOV [04H],A
MOV A,OFFSET _g_nCCRA
MOV [03H],A
MOV A,069h
MOV [02H],A
INC [03H]
CLR [02H]
#line 77 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _g_nCCRP
MOV [04H],A
MOV A,OFFSET _g_nCCRP
MOV [03H],A
MOV A,02h
MOV [02H],A
INC [03H]
CLR [02H]
#line 89 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _STM_CompareMatchOutputConfig
#line 90 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _g_nCCRA
MOV [04H],A
MOV A,OFFSET _g_nCCRA
MOV [03H],A
MOV A,[02H]
MOV STM_CompareMatchOutputUpdate0,A
INC [03H]
MOV A,[02H]
MOV STM_CompareMatchOutputUpdate0[1],A
CALL _STM_CompareMatchOutputUpdate
#line 91 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,013H
MOV RH,A
MOV A,07dH
CALL __DELAYY1
#line 91 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 96 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 96 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
MOV A,1
MOV [02H],A
#line 198 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_sink
#line 199 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_sink
#line 200 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SNZ [014H].5
JMP L9
#pragma debug scope 4 3 ; 201 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 201 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_one
#line 203 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 203 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L10
L9:
#pragma debug scope 5 3 ; 204 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 204 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_zero
L10:
#line 207 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 207 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SZ [014H].6
JMP L11
#pragma debug scope 6 3 ; 208 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 208 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 209 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 210 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_one
#line 212 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 212 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L12
L11:
#pragma debug scope 7 3 ; 213 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 213 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_zero
L12:
#line 216 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 216 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SZ [014H].7
JMP L13
#pragma debug scope 8 3 ; 217 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 217 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 218 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 219 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_one
#line 221 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 221 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L14
L13:
#pragma debug scope 9 3 ; 222 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 222 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_zero
L14:
#line 225 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 225 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SZ [014H].1
JMP L15
#pragma debug scope 10 3 ; 226 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 226 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 227 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 228 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_one
#line 230 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 230 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L16
L15:
#pragma debug scope 11 3 ; 231 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 231 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CALL _send_zero
L16:
#line 235 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 235 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,0c2H
MOV RH,A
MOV A,0edH
CALL __DELAYY3
#line 236 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SNZ [014H].5
JMP L17
#pragma debug scope 12 3 ; 237 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 237 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,026H
MOV RH,A
MOV A,0fbH
CALL __DELAYY3
L17:
#line 240 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 240 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
SZ [02H]
JMP L23
JMP L19
L23:
#pragma debug scope 13 3 ; 241 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 241 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
MOV RH,A
MOV A,080h
SUB A,RH
SNZ [0AH].0
JMP L21
SNZ [0AH].2
JMP L24
MOV A,b0_1
SUB A,03h
SZ [0AH].0
JMP L21
L24:
#pragma debug scope 14 13 ; 242 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 242 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 265 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 13 3 ; 265 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L22
L21:
#pragma debug scope 15 13 ; 266 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 266 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CLR [0BH].1
#line 267 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,0afh
MOV __wdtc,A
#line 268 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
HALT
#line 269 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,0e9H
MOV RH,A
MOV A,0eaH
CALL __DELAYY1
#line 270 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,050h
MOV __wdtc,A
L22:
L19:
#line 275 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 3 2 ; 275 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CLR WDT
L7:
#line 94 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#pragma debug scope 2 1 ; 94 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP L6
L5:
#line 278 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
JMP $
LOCAL b0_1 DB 2 DUP(?)
_main ENDP
#line 279 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
@send_one .SECTION 'CODE'
PUBLIC _send_one
_send_one PROC
#pragma debug scope 16 1 ; 280 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 280 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [028H].3
#line 281 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,0cH
MOV RH,A
MOV A,0aaH
CALL __DELAYY3
#line 282 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CLR [028H].3
#line 283 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L25:
RET
_send_one ENDP
#line 285 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
@send_zero .SECTION 'CODE'
PUBLIC _send_zero
_send_zero PROC
#pragma debug scope 17 1 ; 286 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 286 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [028H].3
#line 287 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,07H
MOV RH,A
MOV A,0cbH
CALL __DELAYY1
#line 288 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CLR [028H].3
#line 289 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L26:
RET
_send_zero ENDP
#line 291 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
@send_sink .SECTION 'CODE'
PUBLIC _send_sink
_send_sink PROC
#pragma debug scope 18 1 ; 292 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
#line 292 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
SET [028H].3
#line 293 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,03H
MOV RH,A
MOV A,0e5H
CALL __DELAYY1
#line 294 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
CLR [028H].3
#line 295 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L27:
RET
_send_sink ENDP
EXTERN STM_CompareMatchOutputUpdate0:BYTE
#line 43 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
PUBLIC _g_nCCRP
@g_nCCRP .SECTION 'DATA'
_g_nCCRP DB 2 DUP (?) ;g_nCCRP
#pragma debug variable 12 1 _g_nCCRP g_nCCRP
#line 42 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
PUBLIC _g_nCCRA
@g_nCCRA .SECTION 'DATA'
_g_nCCRA DB 2 DUP (?) ;g_nCCRA
#pragma debug variable 12 1 _g_nCCRA g_nCCRA
#line 41 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
PUBLIC _r
@r .SECTION 'DATA'
_r DB 2 DUP (?) ;r
#pragma debug variable 11 1 _r r
#line 40 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
PUBLIC _stop
@stop .SECTION 'DATA'
_stop DB ? ; stop
#pragma debug variable 4 1 _stop stop
EXTERN _STM_CompareMatchOutputUpdate:NEAR
EXTERN _STM_CompareMatchOutputConfig:NEAR
EXTERN _STM_Init:NEAR
#line 55 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 55 "C:\Users\111\Documents\HTK_Project\pwm_test - final\pwm_test.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
