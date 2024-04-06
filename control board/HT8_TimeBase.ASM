#pragma debug scope 1 1
#line 38 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
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
@TimeBase_Init .SECTION 'CODE'
PUBLIC _TimeBase_Init
_TimeBase_Init PROC
#pragma debug scope 2 1 ; 48 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
#pragma debug scope 3 2 ; 48 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
#line 48 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
SET [01BH].6
#pragma debug scope 4 2 ; 73 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
#line 73 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
CLR [01BH].2
#line 73 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
SET [01BH].1
#line 73 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
SET [01BH].0
#pragma debug scope 5 2 ; 118 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
#line 118 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
SET [01BH].5
#line 118 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_TimeBase.c"
SET [01BH].4
L5:
RET
_TimeBase_Init ENDP
