int a = 10;
int b = 20;
int c = 30;
int det = 0;
boolean res;

void setup() {
  // put your setup code here, to run once:
  det = (b*b)-(4*a*c);
  if(det>=0){
    res = true;
  }
  else {
    res = false;
  }

}

void loop() {
  // put your main code here, to run repeatedly:

}
