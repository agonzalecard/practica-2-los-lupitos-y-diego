
DiscriminanteC.cpp.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 91 00 	jmp	0x122	; 0x122 <__vector_16>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e0 e3       	ldi	r30, 0x30	; 48
  7c:	f2 e0       	ldi	r31, 0x02	; 2
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a6 30       	cpi	r26, 0x06	; 6
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1
  8c:	a6 e0       	ldi	r26, 0x06	; 6
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a2 31       	cpi	r26, 0x12	; 18
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 84 00 	call	0x108	; 0x108 <main>
  9e:	0c 94 16 01 	jmp	0x22c	; 0x22c <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <setup>:
  a6:	1f 93       	push	r17
  a8:	20 91 02 01 	lds	r18, 0x0102
  ac:	30 91 03 01 	lds	r19, 0x0103
  b0:	22 9f       	mul	r18, r18
  b2:	a0 01       	movw	r20, r0
  b4:	23 9f       	mul	r18, r19
  b6:	50 0d       	add	r21, r0
  b8:	50 0d       	add	r21, r0
  ba:	11 24       	eor	r1, r1
  bc:	20 91 04 01 	lds	r18, 0x0104
  c0:	30 91 05 01 	lds	r19, 0x0105
  c4:	1c ef       	ldi	r17, 0xFC	; 252
  c6:	12 03       	mulsu	r17, r18
  c8:	b0 01       	movw	r22, r0
  ca:	13 9f       	mul	r17, r19
  cc:	70 0d       	add	r23, r0
  ce:	11 24       	eor	r1, r1
  d0:	20 91 00 01 	lds	r18, 0x0100
  d4:	30 91 01 01 	lds	r19, 0x0101
  d8:	62 9f       	mul	r22, r18
  da:	c0 01       	movw	r24, r0
  dc:	63 9f       	mul	r22, r19
  de:	90 0d       	add	r25, r0
  e0:	72 9f       	mul	r23, r18
  e2:	90 0d       	add	r25, r0
  e4:	11 24       	eor	r1, r1
  e6:	84 0f       	add	r24, r20
  e8:	95 1f       	adc	r25, r21
  ea:	90 93 08 01 	sts	0x0108, r25
  ee:	80 93 07 01 	sts	0x0107, r24
  f2:	97 fd       	sbrc	r25, 7
  f4:	04 c0       	rjmp	.+8      	; 0xfe <setup+0x58>
  f6:	81 e0       	ldi	r24, 0x01	; 1
  f8:	80 93 06 01 	sts	0x0106, r24
  fc:	02 c0       	rjmp	.+4      	; 0x102 <setup+0x5c>
  fe:	10 92 06 01 	sts	0x0106, r1
 102:	1f 91       	pop	r17
 104:	08 95       	ret

00000106 <loop>:
 106:	08 95       	ret

00000108 <main>:
#include <Arduino.h>

int main(void)
{
	init();
 108:	0e 94 db 00 	call	0x1b6	; 0x1b6 <init>

#if defined(USBCON)
	USBDevice.attach();
#endif
	
	setup();
 10c:	0e 94 53 00 	call	0xa6	; 0xa6 <setup>
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
 110:	c0 e0       	ldi	r28, 0x00	; 0
 112:	d0 e0       	ldi	r29, 0x00	; 0
#endif
	
	setup();
    
	for (;;) {
		loop();
 114:	0e 94 83 00 	call	0x106	; 0x106 <loop>
		if (serialEventRun) serialEventRun();
 118:	20 97       	sbiw	r28, 0x00	; 0
 11a:	e1 f3       	breq	.-8      	; 0x114 <main+0xc>
 11c:	0e 94 00 00 	call	0	; 0x0 <__vectors>
 120:	f9 cf       	rjmp	.-14     	; 0x114 <main+0xc>

00000122 <__vector_16>:
#if defined(__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny84__)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
 122:	1f 92       	push	r1
 124:	0f 92       	push	r0
 126:	0f b6       	in	r0, 0x3f	; 63
 128:	0f 92       	push	r0
 12a:	11 24       	eor	r1, r1
 12c:	2f 93       	push	r18
 12e:	3f 93       	push	r19
 130:	8f 93       	push	r24
 132:	9f 93       	push	r25
 134:	af 93       	push	r26
 136:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
 138:	80 91 0a 01 	lds	r24, 0x010A
 13c:	90 91 0b 01 	lds	r25, 0x010B
 140:	a0 91 0c 01 	lds	r26, 0x010C
 144:	b0 91 0d 01 	lds	r27, 0x010D
	unsigned char f = timer0_fract;
 148:	30 91 09 01 	lds	r19, 0x0109

	m += MILLIS_INC;
	f += FRACT_INC;
 14c:	23 e0       	ldi	r18, 0x03	; 3
 14e:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 150:	2d 37       	cpi	r18, 0x7D	; 125
 152:	20 f4       	brcc	.+8      	; 0x15c <__vector_16+0x3a>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
 154:	01 96       	adiw	r24, 0x01	; 1
 156:	a1 1d       	adc	r26, r1
 158:	b1 1d       	adc	r27, r1
 15a:	05 c0       	rjmp	.+10     	; 0x166 <__vector_16+0x44>
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
 15c:	26 e8       	ldi	r18, 0x86	; 134
 15e:	23 0f       	add	r18, r19
		m += 1;
 160:	02 96       	adiw	r24, 0x02	; 2
 162:	a1 1d       	adc	r26, r1
 164:	b1 1d       	adc	r27, r1
	}

	timer0_fract = f;
 166:	20 93 09 01 	sts	0x0109, r18
	timer0_millis = m;
 16a:	80 93 0a 01 	sts	0x010A, r24
 16e:	90 93 0b 01 	sts	0x010B, r25
 172:	a0 93 0c 01 	sts	0x010C, r26
 176:	b0 93 0d 01 	sts	0x010D, r27
	timer0_overflow_count++;
 17a:	80 91 0e 01 	lds	r24, 0x010E
 17e:	90 91 0f 01 	lds	r25, 0x010F
 182:	a0 91 10 01 	lds	r26, 0x0110
 186:	b0 91 11 01 	lds	r27, 0x0111
 18a:	01 96       	adiw	r24, 0x01	; 1
 18c:	a1 1d       	adc	r26, r1
 18e:	b1 1d       	adc	r27, r1
 190:	80 93 0e 01 	sts	0x010E, r24
 194:	90 93 0f 01 	sts	0x010F, r25
 198:	a0 93 10 01 	sts	0x0110, r26
 19c:	b0 93 11 01 	sts	0x0111, r27
}
 1a0:	bf 91       	pop	r27
 1a2:	af 91       	pop	r26
 1a4:	9f 91       	pop	r25
 1a6:	8f 91       	pop	r24
 1a8:	3f 91       	pop	r19
 1aa:	2f 91       	pop	r18
 1ac:	0f 90       	pop	r0
 1ae:	0f be       	out	0x3f, r0	; 63
 1b0:	0f 90       	pop	r0
 1b2:	1f 90       	pop	r1
 1b4:	18 95       	reti

000001b6 <init>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
 1b6:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 1b8:	84 b5       	in	r24, 0x24	; 36
 1ba:	82 60       	ori	r24, 0x02	; 2
 1bc:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 1be:	84 b5       	in	r24, 0x24	; 36
 1c0:	81 60       	ori	r24, 0x01	; 1
 1c2:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 1c4:	85 b5       	in	r24, 0x25	; 37
 1c6:	82 60       	ori	r24, 0x02	; 2
 1c8:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 1ca:	85 b5       	in	r24, 0x25	; 37
 1cc:	81 60       	ori	r24, 0x01	; 1
 1ce:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 1d0:	ee e6       	ldi	r30, 0x6E	; 110
 1d2:	f0 e0       	ldi	r31, 0x00	; 0
 1d4:	80 81       	ld	r24, Z
 1d6:	81 60       	ori	r24, 0x01	; 1
 1d8:	80 83       	st	Z, r24
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 1da:	e1 e8       	ldi	r30, 0x81	; 129
 1dc:	f0 e0       	ldi	r31, 0x00	; 0
 1de:	10 82       	st	Z, r1

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 1e0:	80 81       	ld	r24, Z
 1e2:	82 60       	ori	r24, 0x02	; 2
 1e4:	80 83       	st	Z, r24
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 1e6:	80 81       	ld	r24, Z
 1e8:	81 60       	ori	r24, 0x01	; 1
 1ea:	80 83       	st	Z, r24
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 1ec:	e0 e8       	ldi	r30, 0x80	; 128
 1ee:	f0 e0       	ldi	r31, 0x00	; 0
 1f0:	80 81       	ld	r24, Z
 1f2:	81 60       	ori	r24, 0x01	; 1
 1f4:	80 83       	st	Z, r24

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 1f6:	e1 eb       	ldi	r30, 0xB1	; 177
 1f8:	f0 e0       	ldi	r31, 0x00	; 0
 1fa:	80 81       	ld	r24, Z
 1fc:	84 60       	ori	r24, 0x04	; 4
 1fe:	80 83       	st	Z, r24

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 200:	e0 eb       	ldi	r30, 0xB0	; 176
 202:	f0 e0       	ldi	r31, 0x00	; 0
 204:	80 81       	ld	r24, Z
 206:	81 60       	ori	r24, 0x01	; 1
 208:	80 83       	st	Z, r24
#if defined(ADCSRA)
	// set a2d prescale factor to 128
	// 16 MHz / 128 = 125 KHz, inside the desired 50-200 KHz range.
	// XXX: this will not work properly for other clock speeds, and
	// this code should use F_CPU to determine the prescale factor.
	sbi(ADCSRA, ADPS2);
 20a:	ea e7       	ldi	r30, 0x7A	; 122
 20c:	f0 e0       	ldi	r31, 0x00	; 0
 20e:	80 81       	ld	r24, Z
 210:	84 60       	ori	r24, 0x04	; 4
 212:	80 83       	st	Z, r24
	sbi(ADCSRA, ADPS1);
 214:	80 81       	ld	r24, Z
 216:	82 60       	ori	r24, 0x02	; 2
 218:	80 83       	st	Z, r24
	sbi(ADCSRA, ADPS0);
 21a:	80 81       	ld	r24, Z
 21c:	81 60       	ori	r24, 0x01	; 1
 21e:	80 83       	st	Z, r24

	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 220:	80 81       	ld	r24, Z
 222:	80 68       	ori	r24, 0x80	; 128
 224:	80 83       	st	Z, r24
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 226:	10 92 c1 00 	sts	0x00C1, r1
 22a:	08 95       	ret

0000022c <_exit>:
 22c:	f8 94       	cli

0000022e <__stop_program>:
 22e:	ff cf       	rjmp	.-2      	; 0x22e <__stop_program>
