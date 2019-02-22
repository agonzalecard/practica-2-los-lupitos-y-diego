int verde = 52;
int amarillo = 46;
int rojo = 48;
int bandera = 0;

void setup() {
  pinMode(verde, OUTPUT);
  pinMode(amarillo, OUTPUT);
  pinMode(rojo, OUTPUT);
  
  cli();
  TCCR1B = 0; TCCR1A = 0;
  TCCR1B |= (1 << CS12);
  TCCR1B |= (1 << CS10);
  TCNT1 = 49911;
  TIMSK1 |= (1 << TOIE1);
  sei();

  digitalWrite(rojo, HIGH);
}

ISR(TIMER1_OVF_vect)
{
  if(bandera == 10){
    digitalWrite(rojo, LOW);
    digitalWrite(verde, HIGH);
  }
  if(bandera == 22){
    digitalWrite(amarillo, HIGH);
  }
  if(bandera == 25){
    digitalWrite(amarillo, LOW);
    digitalWrite(verde, LOW);
    digitalWrite(rojo, HIGH);
    bandera=0;
  }
  TCNT1 = 49911;
  bandera++;
}

void loop(){



























































































































































































































































  
}

