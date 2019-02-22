void setup(){
  DDRB = DDRB | B1000000
  Serial.begin(9600);

}
void loop(){
  int var_out = 0;
  asm volatile (    
    "ldi r16, 0xa \n"
    "ldi r17, 0x14 \n"
    "ldi r18, 0x1e \n"   
    "muls r18, r16 \n" //ac
    "lsl r1 \n"
    "lsl r0 \n"       //2ac
    "brcc label \n"
    "inc r1 \n"
    "label: \n"
    "lsl r1 \n"
    "lsl r0 \n"     //4ac
    "brcc label1 \n"
    "inc r1 \n"  
    "label1: \n"
    "mov r11, r1 \n"
    "mov r10, r0 \n"
    "muls r17, r17 \n"  //b²
    "mov r13, r1 \n"
    "mov r12, r0 \n"
    "sub r12, r10 \n"  //b²-4ac
    "sbc r13, r11 \n"  
    "movw %0, r12 \n\t"
     : "=r" (var_out)
    
    );
    
    if(var_out == -800){
      Serial.print("S");
    }
      
}


