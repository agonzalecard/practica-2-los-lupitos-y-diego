void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  int i,suma, num; 
  int arreglo[] = {2, 4, 8, 3, 6}; 
  double tam = 5;
  suma = 0;
  i = 0;
  double prom = 0; 
   
  for(i; i<tam ;i = 1+i) {
    num = arreglo[i];
    suma = suma + num;        
  }
  
  prom = suma/tam;
  Serial.print(prom, DEC);
}

void loop() {
  // put your main code here, to run repeatedly:

}
