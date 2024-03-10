

#include <msp430x14x.h>

void main( void )
{
  unsigned int i;
  // Stop watchdog timer to prevent time out reset
  WDTCTL = WDTPW + WDTHOLD;
  P1DIR |= BIT6;
  BCSCTL1 |= XTS + DIVA1 + DIVA0;
  do{IFG1 &= ~OFIFG;
  for(i = 0xFF; i > 0; i--);
  } while((IFG1 & OFIFG));
  WDTCTL = WDTPW + WDTCNTCL + WDTTMSEL +WDTSSEL ;
  IE1 |= WDTIE;
  _EINT();
  for(;;);
}

#pragma vector=WDT_VECTOR
__interrupt void watchdog_timer(void){
  long int a;
  for(a=0;a<62500;a++);
  P1OUT ^= BIT6;
}