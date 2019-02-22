int pinLed = 52;
int isON = 0;

void setup() {
  pinMode(pinLed, OUTPUT);
  cli();
  TCCR1B = 0; TCCR1A = 0;
  TCCR1B |= (1 << CS12);
  TCCR1B |= (1 << CS10);
  TCNT1 = 57724;
  TIMSK1 |= (1 << TOIE1);
  sei();

}
ISR(TIMER1_OVF_vect)
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
