const int buttonPin = 2;
const int ledPin = 12;

int cont = 0;
int buttonState = 0;
int lastButtonState = 0;

void setup() {
    pinMode(buttonPin, INPUT_PULLUP);
    pinMode(ledPin, OUTPUT);
    Serial.begin(9600);
}

void loop() {
  digitalWrite(ledPin, HIGH);
  buttonState= digitalRead(buttonPin);
  
  if (buttonState != lastButtonState) {
      cont++;
      if (buttonState== HIGH){
        digitalWrite(ledPin, HIGH);
      }
   }
    
  lastButtonState = buttonState;
  Serial.print(cont/2);
}
