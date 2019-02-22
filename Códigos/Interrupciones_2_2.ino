const int fdPin = 2;
const int ledPin = 12;

int cont = 0;
int fdA = 0;
int fdP = 0;

void setup()
{
  pinMode(fdPin, INPUT_PULLUP);
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
  cli();
  DDRD &= ~(1 << DDD1);
  PORTD |= (1 << PORTD1);
  EICRA |= (1 << ISC10);
  EIMSK |= (1 << INT1);
  sei();
}
ISR(INT1_vect)
{
  digitalWrite(ledPin, HIGH);
  fdA= digitalRead(fdPin);
  
  if (fdA != fdP) {
      cont++;
      if (fdA== HIGH){
        digitalWrite(ledPin, HIGH);
      }
   }
    
  fdP = fdA;
  Serial.print(cont/2);
}
void loop() {
  
}
