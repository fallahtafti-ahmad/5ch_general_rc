/**
  ******************************************************************************
  * @file STM\main.c
  * @brief This file contains the main function for the STM PWM output example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-12
  ******************************************************************************
  * MCU 				: HT66F002/HT66F0025
  * Operating Voltage 	: 5.0v
  * System Clock 		: 8MHz
  ******************************************************************************
  * @attention
  *
  * Firmware Disclaimer Information
  *
  * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
  *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
  *    other intellectual property laws.
  *
  * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
  *    other than HOLTEK and the customer.
  *
  * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
  *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
  *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
  *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
  *
  * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
  ************************************************************************************************************/

#include "HT8_MCU_IP_SEL.h"

#define fl _pa6
#define h _pa7
#define fr _pa0
#define br _pa1
#define bl _pa5
bool stop;
int r;
u16	g_nCCRA ;		
u16	g_nCCRP ;		

/**
  * @brief STM PWM output main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void send_one(void);
void send_zero(void);
void send_sink(void);
void main()
{
	_ws0=1;
	_ws1=1;
	_ws2=1;
	
	//GPIO Init
	_pawu6=1;
	_pawu7=1;
	_pawu1=1;
	_pawu0=1;
	_pac6=1;
	_papu6=1;
	_pac7=1;
	_papu7=1;
	_pac1=1;
	_pac0=1;
	_papu1=1;
	_papu0=1;
	_pac5=1;
	_papu5=1;
	/* initialization STM IP */
	STM_Init();
	
	g_nCCRA = 105;	//PWM duty set 128
	g_nCCRP = 2;	//PWM period set 4*128
	
	/* Configure pwm function */
	//STM_PwmOutputConfig();
	
	/* setting pwm duty and period 
	 * param1: CCRA value,pwm duty;
	 * param2: CCRP value,pwm period;
	 */
	//STM_PwmUpdate(g_nCCRA,g_nCCRP);
	
//	STM_ENABLE();		//enable STM
	STM_CompareMatchOutputConfig();
	STM_CompareMatchOutputUpdate(g_nCCRA);
	_delay(20000);	//wait system stable
	
	//system loop
	while(1)
	{
		stop=1;
		/*
		send_one();
		send_one();
		send_zero();
		send_zero();
		_delay(263690);
		*/
	/* PWM will be output by STP0(PA2) pin and STP0B(PA5) pin  */
		/*
		if(!f){
		stop=0;
		r=0;
		send_sink();
		//send sink
		if (d){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		//send forward
		send_one();//f
		//send_zero();//~f
		send_zero();//b
		//send_one();//~b
		//send h
		if(!h){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
			}
		//send sink
		//send_sink();
		_delay(200000);
		if (d){
			_delay(40000);
		}
		}
		if(!b){
		stop=0;
		r=0;
		send_sink();
		//send sink
		if (d){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		//send forward
		send_zero();//f
		//send_one();//~f
		send_one();//b
		//send_zero();//~b
		//send h
		if(!h){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
			}
		//send sink
		//send_sink();
		_delay(200000);
		if (d){
			_delay(40000);
		}
		}
		if(!h && f && b){
		stop=0;
		r=0;
		send_sink();
		//send sink
		if (d){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		//send forward
		send_zero();//f
		//send_one();//~f
		send_zero();//b
		//send_one();//~b
		//send h
		send_one();
		//send_zero();
		//send sink
		//send_sink();
		_delay(200000);
		if (d){
			_delay(40000);
		}
		}
		*/
		send_sink();
		send_sink();
		if (!fr){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		if (!fl){
			stop=0;
			r=0;
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		if (!br){
			stop=0;
			r=0;
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		if (!bl){
			stop=0;
			r=0;
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		if (!h){
			stop=0;
			r=0;
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		
		_delay(200000);
		
		
		if(stop){
		if(r<3){
		r++;
		/*
		send_sink();
		//send sink
		if (d){
			send_one();
			//send_zero();
			}else{
				send_zero();
				//send_one();
				}
		//send forward
		send_zero();//f
		//send_one();//~f
		send_zero();//b
		//send_one();//~b
		//send h
		send_zero();
		//send_one();
		//send sink
		//send_sink();
		_delay(120000);
		*/
			}else{
		_idlen=0;
		_wdtc=175;
		_halt();
		_delay(240000);
		_wdtc=80;
		}
		}
		//
			
		_clrwdt();
	}
	
}
void send_one(void){
		STM_ENABLE();
		_delay(13000);
		STM_DISABLE();
		_delay(3000);
	}
void send_zero(void){
		STM_ENABLE();
		_delay(8000);
		STM_DISABLE();
		_delay(3000);
	}
void send_sink(void){
		STM_ENABLE();
		_delay(4000);
		STM_DISABLE();
		_delay(3000);
	}
/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/