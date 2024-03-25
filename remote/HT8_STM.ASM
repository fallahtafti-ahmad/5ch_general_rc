#pragma debug scope 1 1
#line 41 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
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
@STM_Init .SECTION 'CODE'
PUBLIC _STM_Init
_STM_Init PROC
#pragma debug scope 2 1 ; 79 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 79 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].7
#line 79 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].6
#line 82 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [026H].5
#line 82 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [026H].4
#line 88 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [026H].7
#line 88 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [026H].6
#line 114 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [028H].6
#line 114 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [028H].5
#line 114 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [028H].4
#line 152 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].0
L5:
RET
_STM_Init ENDP
#line 169 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_PwmOutputConfig .SECTION 'CODE'
PUBLIC _STM_PwmOutputConfig
_STM_PwmOutputConfig PROC
#pragma debug scope 3 1 ; 174 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 174 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].3
#line 180 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].2
#line 190 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].1
L6:
RET
_STM_PwmOutputConfig ENDP
#line 203 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_PwmUpdate .SECTION 'CODE'
PUBLIC _STM_PwmUpdate
_STM_PwmUpdate PROC
#pragma debug scope 4 1
#line 202 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
PUBLIC STM_PwmUpdate0
LOCAL STM_PwmUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 4 STM_PwmUpdate0 TempCCRA
#line 202 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
PUBLIC STM_PwmUpdate1
LOCAL STM_PwmUpdate1 DB ? ; TempCCRP
#pragma debug variable 8 4 STM_PwmUpdate1 TempCCRP
#pragma debug scope 4 1 ; 204 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 204 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_PwmUpdate0
AND A,0ffh
MOV b0_3,A
MOV A,STM_PwmUpdate0[1]
AND A,00h
MOV b0_3[1],A
MOV A,b0_3
MOV __stm0al,A
#line 205 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_PwmUpdate0[1]
MOV b0_3,A
CLR b0_3[1]
MOV A,b0_3
MOV __stm0ah,A
#line 207 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [0AH].0
RRCA STM_PwmUpdate1
MOV b0_3,A
CLR [0AH].0
RRC b0_3
MOV A,01h
ANDM A,b0_3
MOV A,[028H]
CLR [05H].2
SZ b0_3
SET [05H].2
MOV [028H],A
#line 208 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [0AH].0
RRCA STM_PwmUpdate1
MOV b0_3,A
MOV A,01h
ANDM A,b0_3
MOV A,[028H]
CLR [05H].1
SZ b0_3
SET [05H].1
MOV [028H],A
#line 209 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_PwmUpdate1
AND A,01h
MOV b0_3,A
MOV A,[028H]
CLR [05H].0
SZ b0_3
SET [05H].0
MOV [028H],A
L7:
RET
LOCAL b0_3 DB 2 DUP(?)
_STM_PwmUpdate ENDP
#line 223 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_SinglePulseOutputConfig .SECTION 'CODE'
PUBLIC _STM_SinglePulseOutputConfig
_STM_SinglePulseOutputConfig PROC
#pragma debug scope 5 1 ; 228 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 228 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].3
#line 234 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].2
L8:
RET
_STM_SinglePulseOutputConfig ENDP
#line 262 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_SinglePulseUpdate .SECTION 'CODE'
PUBLIC _STM_SinglePulseUpdate
_STM_SinglePulseUpdate PROC
#pragma debug scope 6 1
#line 261 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
PUBLIC STM_SinglePulseUpdate0
LOCAL STM_SinglePulseUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 6 STM_SinglePulseUpdate0 TempCCRA
#pragma debug scope 6 1 ; 263 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 263 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_SinglePulseUpdate0
AND A,0ffh
MOV b0_5,A
MOV A,STM_SinglePulseUpdate0[1]
AND A,00h
MOV b0_5[1],A
MOV A,b0_5
MOV __stm0al,A
#line 264 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_SinglePulseUpdate0[1]
MOV b0_5,A
CLR b0_5[1]
MOV A,b0_5
MOV __stm0ah,A
L9:
RET
LOCAL b0_5 DB 2 DUP(?)
_STM_SinglePulseUpdate ENDP
#line 274 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_CounterModeConfig .SECTION 'CODE'
PUBLIC _STM_CounterModeConfig
_STM_CounterModeConfig PROC
#pragma debug scope 7 1
#line 273 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
PUBLIC STM_CounterModeConfig0
LOCAL STM_CounterModeConfig0 DB 2 DUP (?) ; TempPeriod
#pragma debug variable 12 7 STM_CounterModeConfig0 TempPeriod
#pragma debug scope 7 1 ; 276 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 276 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_CounterModeConfig0
AND A,0ffh
MOV b0_6,A
MOV A,STM_CounterModeConfig0[1]
AND A,00h
MOV b0_6[1],A
MOV A,b0_6
MOV __stm0al,A
#line 277 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_CounterModeConfig0[1]
MOV b0_6,A
CLR b0_6[1]
MOV A,b0_6
MOV __stm0ah,A
L10:
RET
LOCAL b0_6 DB 2 DUP(?)
_STM_CounterModeConfig ENDP
#line 296 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_CompareMatchOutputConfig .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputConfig
_STM_CompareMatchOutputConfig PROC
#pragma debug scope 8 1 ; 308 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 308 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].5
#line 308 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
SET [029H].4
#line 314 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].3
#line 322 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
CLR [029H].2
L11:
RET
_STM_CompareMatchOutputConfig ENDP
#line 336 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
@STM_CompareMatchOutputUpdate .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputUpdate
_STM_CompareMatchOutputUpdate PROC
#pragma debug scope 9 1
#line 335 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
PUBLIC STM_CompareMatchOutputUpdate0
LOCAL STM_CompareMatchOutputUpdate0 DB 2 DUP (?) ; TempMatchTime
#pragma debug variable 12 9 STM_CompareMatchOutputUpdate0 TempMatchTime
#pragma debug scope 9 1 ; 338 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
#line 338 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_CompareMatchOutputUpdate0
AND A,0ffh
MOV b0_8,A
MOV A,STM_CompareMatchOutputUpdate0[1]
AND A,00h
MOV b0_8[1],A
MOV A,b0_8
MOV __stm0al,A
#line 339 "d:\work4\2_motor_general\5ch_general_rc\remote\src\HT8_STM.c"
MOV A,STM_CompareMatchOutputUpdate0[1]
MOV b0_8,A
CLR b0_8[1]
MOV A,b0_8
MOV __stm0ah,A
L12:
RET
LOCAL b0_8 DB 2 DUP(?)
_STM_CompareMatchOutputUpdate ENDP
