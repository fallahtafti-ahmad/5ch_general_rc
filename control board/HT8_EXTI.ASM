#pragma debug scope 1 1
#line 43 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
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
@EXIT_Init .SECTION 'CODE'
PUBLIC _EXIT_Init
_EXIT_Init PROC
#pragma debug scope 2 1 ; 55 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
#line 55 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
SET [0DH].1
#line 55 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
SET [0DH].0
#line 65 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
CLR [018H].1
#line 65 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
SET [018H].0
#line 66 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
SET [015H].2
#line 66 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
SET [016H].2
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
CLR [026H].5
#line 67 "d:\work4\2_motor_general\5ch_general_rc\control board\HT8_EXTI.c"
CLR [026H].4
L5:
RET
_EXIT_Init ENDP
