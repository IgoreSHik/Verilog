

#include <msp430x14x.h>
#define BUTTON1 BIT4&P4IN
#define BUTTON2 BIT5&P4IN
#define BUTTON3 BIT6&P4IN
#define BUTTON4 BIT7&P4IN

void main( void )
{
  unsigned int i;
  // Stop watchdog timer to prevent time out reset
  WDTCTL = WDTPW + WDTHOLD;
  P1DIR |= BIT6;
  P1DIR |= BIT5;
  P2DIR |= BIT1;
  BCSCTL1 |= XTS + DIVA1 + DIVA0;
  do{IFG1 &= ~OFIFG;
  for(i = 0xFF; i > 0; i--);
  } while((IFG1 & OFIFG));
  WDTCTL = WDTPW + WDTCNTCL + WDTTMSEL +WDTSSEL ;
  IE1 |= WDTIE;
  _EINT();
  for(;;);
}

void ustaw_przyciski() {
  P4DIR &= ~BIT4;
  P4DIR &= ~BIT5;
  P4DIR &= ~BIT6;
  P4DIR &= ~BIT7;
}

#pragma vector=WDT_VECTOR
__interrupt void watchdog_timer(void){
  long int a;
  
  while (1==1){
  if(!(BUTTON1))
  {
    P1OUT ^= BIT6;
  }
  if(!(BUTTON2))
  {
    P1OUT ^= BIT5;
  }
  if(!(BUTTON3))
  {
    P2OUT ^= BIT1;
  }
  }
  /*
  long int a;
  long int b;
  long int c;
  for(c=0;c<2;c++){
  for(b=0;b<2;b++){
  for(a=0;a<62500;a++);
  P1OUT ^= BIT6;}
  P1OUT ^= BIT5;}
  P2OUT ^= BIT1;
  */
  /*
  if(!BUTTON1)
  {
    P1OUT ^= BIT6;
  }
  if(!BUTTON2)
  {
    P1OUT ^= BIT5;
  }
  if(!BUTTON3)
  {
    P2OUT ^= BIT1;
  }
  */
}