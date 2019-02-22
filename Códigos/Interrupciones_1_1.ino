int amarillo=50;
void setup() {
  pinMode(amarillo, OUTPUT);
}

void loop() {
  digitalWrite(amarillo, HIGH);
  delay(500);
  digitalWrite(amarillo, LOW);
  delay(500);
}
