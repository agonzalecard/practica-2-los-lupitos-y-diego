int pinLed = 52;
int isON = 0;

void setup() {
  pinMode(pinLed, OUTPUT);
  cli();
  TCCR1B = 0; TCCR1A = 0;
  TCCR1B |= (1 << WGM12);
  TCCR1B |= (1 << CS12);
  OCR1AH = 0x3D; OCR1AL = 0X09;
  TIMSK1 |= (1 << OCIE1A);
  sei();

}
ISR(TIMER1_COMPA_vect)
{
  if(isON == 0){
    digitalWrite(pinLed, HIGH);
    isON =1;
  }else{
    digitalWrite(pinLed, LOW);
    isON = 0;
  }
  TCNT1 = 57724;
  
}

void loop() { 
 
}
