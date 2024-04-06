#pragma debug scope 1 1
#line 57 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
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
#pragma debug scope 2 1 ; 58 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 58 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [019H].0
#line 59 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [019H].1
#line 60 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [019H].2
#line 63 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [017H].6
#line 64 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [017H].7
#line 65 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [017H].1
#line 66 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [017H].0
#line 68 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [015H].6
#line 69 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [016H].6
#line 70 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [015H].7
#line 71 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [016H].7
#line 72 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [015H].1
#line 73 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [015H].0
#line 74 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [016H].1
#line 75 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [016H].0
#line 78 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _STM_Init
#line 80 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _g_nCCRA
MOV [04H],A
MOV A,OFFSET _g_nCCRA
MOV [03H],A
MOV A,069h
MOV [02H],A
INC [03H]
CLR [02H]
#line 81 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _g_nCCRP
MOV [04H],A
MOV A,OFFSET _g_nCCRP
MOV [03H],A
MOV A,02h
MOV [02H],A
INC [03H]
CLR [02H]
#line 93 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _STM_CompareMatchOutputConfig
#line 94 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
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
#line 95 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,013H
MOV RH,A
MOV A,07dH
CALL __DELAYY1
#line 96 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [017H].5
#line 97 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [015H].5
#line 98 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [016H].5
#line 98 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 102 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 102 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
MOV A,1
MOV [02H],A
#line 204 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_sink
#line 206 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SZ [014H].0
JMP L9
#pragma debug scope 4 3 ; 207 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 207 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 208 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 209 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_one
#line 211 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 211 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L10
L9:
#pragma debug scope 5 3 ; 212 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 212 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_zero
L10:
#line 215 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 215 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SZ [014H].6
JMP L11
#pragma debug scope 6 3 ; 216 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 216 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 217 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 218 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_one
#line 220 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 220 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L12
L11:
#pragma debug scope 7 3 ; 221 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 221 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_zero
L12:
#line 224 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 224 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SZ [014H].1
JMP L13
#pragma debug scope 8 3 ; 225 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 225 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 226 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 227 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_one
#line 229 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 229 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L14
L13:
#pragma debug scope 9 3 ; 230 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 230 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_zero
L14:
#line 233 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 233 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SZ [014H].5
JMP L15
#pragma debug scope 10 3 ; 234 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 234 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 235 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 236 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_one
#line 238 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 238 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L16
L15:
#pragma debug scope 11 3 ; 239 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 239 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_zero
L16:
#line 242 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 242 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SZ [014H].7
JMP L17
#pragma debug scope 12 3 ; 243 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 243 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _stop
MOV [04H],A
MOV A,OFFSET _stop
MOV [03H],A
CLR [02H]
#line 244 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,BANK _r
MOV [04H],A
MOV A,OFFSET _r
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 245 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_one
#line 247 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 247 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L18
L17:
#pragma debug scope 13 3 ; 248 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 248 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CALL _send_zero
L18:
#line 252 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 3 2 ; 252 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,0c2H
MOV RH,A
MOV A,0edH
CALL __DELAYY3
#line 290 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CLR WDT
L7:
#line 100 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#pragma debug scope 2 1 ; 100 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP L6
L5:
#line 293 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
JMP $
_main ENDP
#line 294 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
@send_one .SECTION 'CODE'
PUBLIC _send_one
_send_one PROC
#pragma debug scope 14 1 ; 295 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 295 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [028H].3
#line 296 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,0cH
MOV RH,A
MOV A,0aaH
CALL __DELAYY3
#line 297 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CLR [028H].3
#line 298 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L19:
RET
_send_one ENDP
#line 300 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
@send_zero .SECTION 'CODE'
PUBLIC _send_zero
_send_zero PROC
#pragma debug scope 15 1 ; 301 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 301 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [028H].3
#line 302 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,07H
MOV RH,A
MOV A,0cbH
CALL __DELAYY1
#line 303 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CLR [028H].3
#line 304 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L20:
RET
_send_zero ENDP
#line 306 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
@send_sink .SECTION 'CODE'
PUBLIC _send_sink
_send_sink PROC
#pragma debug scope 16 1 ; 307 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
#line 307 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
SET [028H].3
#line 308 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,03H
MOV RH,A
MOV A,0e5H
CALL __DELAYY1
#line 309 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
CLR [028H].3
#line 310 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
MOV A,02H
MOV RH,A
MOV A,0ebH
CALL __DELAYY3
L21:
RET
_send_sink ENDP
EXTERN STM_CompareMatchOutputUpdate0:BYTE
#line 44 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
PUBLIC _g_nCCRP
@g_nCCRP .SECTION 'DATA'
_g_nCCRP DB 2 DUP (?) ;g_nCCRP
#pragma debug variable 12 1 _g_nCCRP g_nCCRP
#line 43 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
PUBLIC _g_nCCRA
@g_nCCRA .SECTION 'DATA'
_g_nCCRA DB 2 DUP (?) ;g_nCCRA
#pragma debug variable 12 1 _g_nCCRA g_nCCRA
#line 42 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
PUBLIC _r
@r .SECTION 'DATA'
_r DB 2 DUP (?) ;r
#pragma debug variable 11 1 _r r
#line 41 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
PUBLIC _stop
@stop .SECTION 'DATA'
_stop DB ? ; stop
#pragma debug variable 4 1 _stop stop
EXTERN _STM_CompareMatchOutputUpdate:NEAR
EXTERN _STM_CompareMatchOutputConfig:NEAR
EXTERN _STM_Init:NEAR
#line 56 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
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
#line 56 "d:\work4\2_motor_general\5ch_general_rc\remote\pwm_test.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
