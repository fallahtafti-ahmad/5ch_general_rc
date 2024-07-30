#include "HT8_MCU_IP_SEL.h"
#define C1 _pa0
#define C2 _pa1
#define C3 _pa7
#define C4 _pa6
#define C5 _pa5
#define sig _pa2



int p;
int t0,t1,buzz,cnt,time,tdd,td;
int diff;
bool fl,bit_in,fr,bl,br,h,dance;
bool ddance;
void turn_rightr();
void turn_leftr();
void turn_rightl();
void turn_leftl();
void stopr();
void stopl();
void Led_on();
void Led_off();
//void Buzzing();

#pragma vector INT_ISR @ 0x04
void INT_ISR(void)
{
	cnt=0;
	if(!sig){
		STM_DISABLE();
		STM_ENABLE();
		STM_RUN();
		}else{
			
			STM_PAUSE();
			t1=STM_GET_COUNTER_VALUE();
			STM_DISABLE();
			STM_ENABLE();
			if(t1>768){
				p++;
				bit_in=1;
				}else if(t1>512){
					p++;
					bit_in=0;
					}else if(t1>150){p=0;}
			if(p==1){
				//if(bit_in){fr=1;}else{fr=0;}
				fr=bit_in;
				}
			if(p==2){
				//if(bit_in){fl=1;}else{fl=0;}
				fl=bit_in;
				}
			if(p==3){
				//if(bit_in){br=1;}else{br=0;}
				br=bit_in;
				}
			if(p==4){
				//if(bit_in){bl=1;}else{bl=0;}
				bl=bit_in;
				}
			if(p==5){
				//if(bit_in){h=1;}else{h=0;}
				h=bit_in;
				}
			if(p==5){
					if(fr){turn_rightr();}else if(br){turn_leftr();}else{stopr();}
					if(fl){turn_rightl();}else if(bl){turn_leftl();}else{stopl();}
					if(h){buzz=1;}else{buzz=0;}
					if(fr && br && fl && bl){dance=1;}else{dance=0;}
					p=0;
				}
		}
			/*
			if(t1>512){
				//Led_on();
				t1=t1-512;
				if(d){
				if(t1 >256){t1=t1-256;
					if(t1>128){Led_on();turn_right();t1=t1-128;}else if(t1>64){Led_on();turn_left();t1=t1-64;}else{Led_off();stop();}
					if(t1>32){buzz=1;}else{buzz=0;}
					}
				}else{
				if(t1 <256){
					if(t1>128){Led_on();turn_right();t1=t1-128;}else if(t1>64){Led_on();turn_left();t1=t1-64;}else{Led_off();stop();}
					if(t1>32){buzz=1;}else{buzz=0;}
					}
					}
				} 
			}*/
	
	
}

#pragma vector TB0_ISR @ 0x08
void TB0_ISR(void)
{
	
	if(buzz){
		time++;
		if (time>1000){C3=~C3;time=0;}
		}else{
			time=0;}
	/*if(dance){
		td++;
		if (td>2000){ddance=~ddance;td=0;}
		}else{
			td=0;}
	if(ddance){
		tdd++;
		if(tdd<1500){stopl();stopr();C3=1;}
		if(tdd==1500){C3=0;stopl();stopr();turn_leftl();turn_rightr();}
		if(tdd==3000){stopl();stopr();turn_leftr();turn_leftl();}
		if(tdd==4500){tdd=0;}
		}else{
			tdd=0;}*/
	TB1_CLEAR_FLAG();

}


#pragma vector TB1_ISR @ 0x0C
void TB1_ISR(void)
{
	STM_PAUSE();
	STM_DISABLE();
	STM_ENABLE();
	TB0_CLEAR_FLAG();
	
}



void main()
{
	C1=0;
	C2=0;
	C3=0;
	C4=0;
	C5=0;
	_pac0=0;
	_pac1=0;
	_pac7=0;
	_pac6=0;
	_pac5=0;
	_pac2=1;

	_papu0=1;
	_papu1=1;
	_papu2=1;
	_papu5=1;
	_papu6=1;
	_papu7=1;
	_pawu2=1;
	SysClockDivision_Init();
	//EXIT_Init();
	WDT_DISABLE();
	STM_Init();
	STM_ENABLE();
	STM_RUN();
	//STM_PAUSE();
//	INT_ISR_ENABLE();
//	EMI_ENABLE();
	TB_ENABLE();
	TB0_ISR_ENABLE();
	TB0_CLEAR_FLAG();
	TB1_ISR_ENABLE();
	TB1_CLEAR_FLAG();
	TimeBase_Init();
	//stop();
	/*Led_on();
	Buzzing();
	Led_off();*/
	EXIT_Init();
	INT_ISR_ENABLE();
	EMI_ENABLE();
	t0=0;
	buzz=0;
	/*turn_leftl();
	_delay(263690);
	turn_leftr();
	_delay(263690);
	turn_rightl();
	_delay(263690);
	turn_rightr();
	_delay(263690);*/
	stopr();
	stopl();
	ddance=0;
	while(1){
		cnt++;
		if(cnt>20000)
		{
			cnt=0;
			C1=0;C2=0;
			C4=0;C5=0;
		
		buzz=0;
		dance=0;
		_delay(3050);
		_halt();}
		}

}



void turn_rightr(){
	C1=0;
	C2=1;
}
void turn_leftr(){
	C1=1;
	C2=0;
	
}
void turn_rightl(){
	C4=0;
	C5=1;
}
void turn_leftl(){
	C4=1;
	C5=0;
	
}
void stopr(){
	C1=0;
	C2=0;

}
void stopl(){
	C4=0;
	C5=0;	

}
void Led_on(){
	C4=1;
	}
void Led_off(){
	C4=0;
	}
/*void Buzzing(){
	/*for(i=0;i<1000;i++){
		C3=1;
		_delay(2000);
		C3=0;
		_delay(2000);
		C3=1;
		_delay(2460);
		C3=0;
		_delay(2460);
		}
	
	for(i=0;i<300;i++){
		C3=1;
		_delay(1050);
		C3=0;
		_delay(1050);
		}
	for(i=0;i<220;i++){
		C3=1;
		_delay(1420);
		C3=0;
		_delay(1420);
		}

}*/
