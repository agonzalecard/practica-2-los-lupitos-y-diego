
PromC.cpp.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 35 00 	jmp	0x6a	; 0x6a <__ctors_end>
   4:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   8:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  10:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  14:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  18:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  1c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  20:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  24:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  28:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  2c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  30:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  34:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  38:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  3c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  40:	0c 94 5c 04 	jmp	0x8b8	; 0x8b8 <__vector_16>
  44:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  48:	0c 94 1b 03 	jmp	0x636	; 0x636 <__vector_18>
  4c:	0c 94 5e 03 	jmp	0x6bc	; 0x6bc <__vector_19>
  50:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  54:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  58:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  5c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  60:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  64:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>

00000068 <__ctors_start>:
  68:	21 04       	cpc	r2, r1

0000006a <__ctors_end>:
  6a:	11 24       	eor	r1, r1
  6c:	1f be       	out	0x3f, r1	; 63
  6e:	cf ef       	ldi	r28, 0xFF	; 255
  70:	d8 e0       	ldi	r29, 0x08	; 8
  72:	de bf       	out	0x3e, r29	; 62
  74:	cd bf       	out	0x3d, r28	; 61

00000076 <__do_copy_data>:
  76:	11 e0       	ldi	r17, 0x01	; 1
  78:	a0 e0       	ldi	r26, 0x00	; 0
  7a:	b1 e0       	ldi	r27, 0x01	; 1
  7c:	ec e9       	ldi	r30, 0x9C	; 156
  7e:	fe e0       	ldi	r31, 0x0E	; 14
  80:	02 c0       	rjmp	.+4      	; 0x86 <__do_copy_data+0x10>
  82:	05 90       	lpm	r0, Z+
  84:	0d 92       	st	X+, r0
  86:	a8 32       	cpi	r26, 0x28	; 40
  88:	b1 07       	cpc	r27, r17
  8a:	d9 f7       	brne	.-10     	; 0x82 <__do_copy_data+0xc>

0000008c <__do_clear_bss>:
  8c:	21 e0       	ldi	r18, 0x01	; 1
  8e:	a8 e2       	ldi	r26, 0x28	; 40
  90:	b1 e0       	ldi	r27, 0x01	; 1
  92:	01 c0       	rjmp	.+2      	; 0x96 <.do_clear_bss_start>

00000094 <.do_clear_bss_loop>:
  94:	1d 92       	st	X+, r1

00000096 <.do_clear_bss_start>:
  96:	ab 3d       	cpi	r26, 0xDB	; 219
  98:	b2 07       	cpc	r27, r18
  9a:	e1 f7       	brne	.-8      	; 0x94 <.do_clear_bss_loop>

0000009c <__do_global_ctors>:
  9c:	10 e0       	ldi	r17, 0x00	; 0
  9e:	c5 e3       	ldi	r28, 0x35	; 53
  a0:	d0 e0       	ldi	r29, 0x00	; 0
  a2:	04 c0       	rjmp	.+8      	; 0xac <__do_global_ctors+0x10>
  a4:	21 97       	sbiw	r28, 0x01	; 1
  a6:	fe 01       	movw	r30, r28
  a8:	0e 94 46 07 	call	0xe8c	; 0xe8c <__tablejump2__>
  ac:	c4 33       	cpi	r28, 0x34	; 52
  ae:	d1 07       	cpc	r29, r17
  b0:	c9 f7       	brne	.-14     	; 0xa4 <__do_global_ctors+0x8>
  b2:	0e 94 74 02 	call	0x4e8	; 0x4e8 <main>
  b6:	0c 94 4c 07 	jmp	0xe98	; 0xe98 <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000be <setup>:
  be:	cf 93       	push	r28
  c0:	df 93       	push	r29
  c2:	cd b7       	in	r28, 0x3d	; 61
  c4:	de b7       	in	r29, 0x3e	; 62
  c6:	2a 97       	sbiw	r28, 0x0a	; 10
  c8:	0f b6       	in	r0, 0x3f	; 63
  ca:	f8 94       	cli
  cc:	de bf       	out	0x3e, r29	; 62
  ce:	0f be       	out	0x3f, r0	; 63
  d0:	cd bf       	out	0x3d, r28	; 61
  d2:	40 e8       	ldi	r20, 0x80	; 128
  d4:	55 e2       	ldi	r21, 0x25	; 37
  d6:	60 e0       	ldi	r22, 0x00	; 0
  d8:	70 e0       	ldi	r23, 0x00	; 0
  da:	88 e2       	ldi	r24, 0x28	; 40
  dc:	91 e0       	ldi	r25, 0x01	; 1
  de:	0e 94 99 03 	call	0x732	; 0x732 <_ZN14HardwareSerial5beginEm>
  e2:	8a e0       	ldi	r24, 0x0A	; 10
  e4:	e0 e0       	ldi	r30, 0x00	; 0
  e6:	f1 e0       	ldi	r31, 0x01	; 1
  e8:	de 01       	movw	r26, r28
  ea:	11 96       	adiw	r26, 0x01	; 1
  ec:	01 90       	ld	r0, Z+
  ee:	0d 92       	st	X+, r0
  f0:	8a 95       	dec	r24
  f2:	e1 f7       	brne	.-8      	; 0xec <setup+0x2e>
  f4:	69 81       	ldd	r22, Y+1	; 0x01
  f6:	7a 81       	ldd	r23, Y+2	; 0x02
  f8:	8b 81       	ldd	r24, Y+3	; 0x03
  fa:	9c 81       	ldd	r25, Y+4	; 0x04
  fc:	68 0f       	add	r22, r24
  fe:	79 1f       	adc	r23, r25
 100:	8d 81       	ldd	r24, Y+5	; 0x05
 102:	9e 81       	ldd	r25, Y+6	; 0x06
 104:	68 0f       	add	r22, r24
 106:	79 1f       	adc	r23, r25
 108:	8f 81       	ldd	r24, Y+7	; 0x07
 10a:	98 85       	ldd	r25, Y+8	; 0x08
 10c:	68 0f       	add	r22, r24
 10e:	79 1f       	adc	r23, r25
 110:	89 85       	ldd	r24, Y+9	; 0x09
 112:	9a 85       	ldd	r25, Y+10	; 0x0a
 114:	68 0f       	add	r22, r24
 116:	79 1f       	adc	r23, r25
 118:	07 2e       	mov	r0, r23
 11a:	00 0c       	add	r0, r0
 11c:	88 0b       	sbc	r24, r24
 11e:	99 0b       	sbc	r25, r25
 120:	0e 94 fd 05 	call	0xbfa	; 0xbfa <__floatsisf>
 124:	20 e0       	ldi	r18, 0x00	; 0
 126:	30 e0       	ldi	r19, 0x00	; 0
 128:	40 ea       	ldi	r20, 0xA0	; 160
 12a:	50 e4       	ldi	r21, 0x40	; 64
 12c:	0e 94 53 05 	call	0xaa6	; 0xaa6 <__divsf3>
 130:	ab 01       	movw	r20, r22
 132:	bc 01       	movw	r22, r24
 134:	2a e0       	ldi	r18, 0x0A	; 10
 136:	30 e0       	ldi	r19, 0x00	; 0
 138:	88 e2       	ldi	r24, 0x28	; 40
 13a:	91 e0       	ldi	r25, 0x01	; 1
 13c:	2a 96       	adiw	r28, 0x0a	; 10
 13e:	0f b6       	in	r0, 0x3f	; 63
 140:	f8 94       	cli
 142:	de bf       	out	0x3e, r29	; 62
 144:	0f be       	out	0x3f, r0	; 63
 146:	cd bf       	out	0x3d, r28	; 61
 148:	df 91       	pop	r29
 14a:	cf 91       	pop	r28
 14c:	0c 94 72 02 	jmp	0x4e4	; 0x4e4 <_ZN5Print5printEdi>

00000150 <loop>:
 150:	08 95       	ret

00000152 <_ZN5Print5writeEPKhj>:

// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
 152:	cf 92       	push	r12
 154:	df 92       	push	r13
 156:	ef 92       	push	r14
 158:	ff 92       	push	r15
 15a:	0f 93       	push	r16
 15c:	1f 93       	push	r17
 15e:	cf 93       	push	r28
 160:	df 93       	push	r29
 162:	6c 01       	movw	r12, r24
 164:	eb 01       	movw	r28, r22
 166:	7b 01       	movw	r14, r22
 168:	e4 0e       	add	r14, r20
 16a:	f5 1e       	adc	r15, r21
  size_t n = 0;
 16c:	00 e0       	ldi	r16, 0x00	; 0
 16e:	10 e0       	ldi	r17, 0x00	; 0
  while (size--) {
 170:	ce 15       	cp	r28, r14
 172:	df 05       	cpc	r29, r15
 174:	61 f0       	breq	.+24     	; 0x18e <_ZN5Print5writeEPKhj+0x3c>
    n += write(*buffer++);
 176:	69 91       	ld	r22, Y+
 178:	d6 01       	movw	r26, r12
 17a:	ed 91       	ld	r30, X+
 17c:	fc 91       	ld	r31, X
 17e:	01 90       	ld	r0, Z+
 180:	f0 81       	ld	r31, Z
 182:	e0 2d       	mov	r30, r0
 184:	c6 01       	movw	r24, r12
 186:	09 95       	icall
 188:	08 0f       	add	r16, r24
 18a:	19 1f       	adc	r17, r25
 18c:	f1 cf       	rjmp	.-30     	; 0x170 <_ZN5Print5writeEPKhj+0x1e>
  }
  return n;
}
 18e:	c8 01       	movw	r24, r16
 190:	df 91       	pop	r29
 192:	cf 91       	pop	r28
 194:	1f 91       	pop	r17
 196:	0f 91       	pop	r16
 198:	ff 90       	pop	r15
 19a:	ef 90       	pop	r14
 19c:	df 90       	pop	r13
 19e:	cf 90       	pop	r12
 1a0:	08 95       	ret

000001a2 <_ZN5Print5writeEPKc>:
    int getWriteError() { return write_error; }
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
 1a2:	61 15       	cp	r22, r1
 1a4:	71 05       	cpc	r23, r1
 1a6:	79 f0       	breq	.+30     	; 0x1c6 <_ZN5Print5writeEPKc+0x24>
      return write((const uint8_t *)str, strlen(str));
 1a8:	fb 01       	movw	r30, r22
 1aa:	01 90       	ld	r0, Z+
 1ac:	00 20       	and	r0, r0
 1ae:	e9 f7       	brne	.-6      	; 0x1aa <_ZN5Print5writeEPKc+0x8>
 1b0:	31 97       	sbiw	r30, 0x01	; 1
 1b2:	af 01       	movw	r20, r30
 1b4:	46 1b       	sub	r20, r22
 1b6:	57 0b       	sbc	r21, r23
 1b8:	dc 01       	movw	r26, r24
 1ba:	ed 91       	ld	r30, X+
 1bc:	fc 91       	ld	r31, X
 1be:	02 80       	ldd	r0, Z+2	; 0x02
 1c0:	f3 81       	ldd	r31, Z+3	; 0x03
 1c2:	e0 2d       	mov	r30, r0
 1c4:	09 94       	ijmp
    }
 1c6:	80 e0       	ldi	r24, 0x00	; 0
 1c8:	90 e0       	ldi	r25, 0x00	; 0
 1ca:	08 95       	ret

000001cc <_ZN5Print5printEc>:
    size_t print(const Printable&);

    size_t println(const __FlashStringHelper *);
    size_t println(const String &s);
    size_t println(const char[]);
    size_t println(char);
 1cc:	dc 01       	movw	r26, r24
 1ce:	ed 91       	ld	r30, X+
 1d0:	fc 91       	ld	r31, X
 1d2:	01 90       	ld	r0, Z+
 1d4:	f0 81       	ld	r31, Z
 1d6:	e0 2d       	mov	r30, r0
 1d8:	09 94       	ijmp

000001da <_ZN5Print11printNumberEmh>:
 1da:	8f 92       	push	r8
 1dc:	9f 92       	push	r9
 1de:	af 92       	push	r10
 1e0:	bf 92       	push	r11
 1e2:	cf 92       	push	r12
 1e4:	df 92       	push	r13
 1e6:	ef 92       	push	r14
 1e8:	ff 92       	push	r15
 1ea:	0f 93       	push	r16
 1ec:	1f 93       	push	r17
 1ee:	cf 93       	push	r28
 1f0:	df 93       	push	r29
 1f2:	cd b7       	in	r28, 0x3d	; 61
 1f4:	de b7       	in	r29, 0x3e	; 62
 1f6:	a1 97       	sbiw	r28, 0x21	; 33
 1f8:	0f b6       	in	r0, 0x3f	; 63
 1fa:	f8 94       	cli
 1fc:	de bf       	out	0x3e, r29	; 62
 1fe:	0f be       	out	0x3f, r0	; 63
 200:	cd bf       	out	0x3d, r28	; 61
 202:	6c 01       	movw	r12, r24
 204:	14 2f       	mov	r17, r20
 206:	e5 2f       	mov	r30, r21
 208:	cb 01       	movw	r24, r22
 20a:	02 2f       	mov	r16, r18
 20c:	19 a2       	std	Y+33, r1	; 0x21
 20e:	22 30       	cpi	r18, 0x02	; 2
 210:	08 f4       	brcc	.+2      	; 0x214 <_ZN5Print11printNumberEmh+0x3a>
 212:	0a e0       	ldi	r16, 0x0A	; 10
 214:	7e 01       	movw	r14, r28
 216:	21 e2       	ldi	r18, 0x21	; 33
 218:	e2 0e       	add	r14, r18
 21a:	f1 1c       	adc	r15, r1
 21c:	80 2e       	mov	r8, r16
 21e:	91 2c       	mov	r9, r1
 220:	a1 2c       	mov	r10, r1
 222:	b1 2c       	mov	r11, r1
 224:	61 2f       	mov	r22, r17
 226:	7e 2f       	mov	r23, r30
 228:	a5 01       	movw	r20, r10
 22a:	94 01       	movw	r18, r8
 22c:	0e 94 24 07 	call	0xe48	; 0xe48 <__udivmodsi4>
 230:	02 9f       	mul	r16, r18
 232:	10 19       	sub	r17, r0
 234:	11 24       	eor	r1, r1
 236:	81 e0       	ldi	r24, 0x01	; 1
 238:	e8 1a       	sub	r14, r24
 23a:	f1 08       	sbc	r15, r1
 23c:	1a 30       	cpi	r17, 0x0A	; 10
 23e:	14 f4       	brge	.+4      	; 0x244 <_ZN5Print11printNumberEmh+0x6a>
 240:	10 5d       	subi	r17, 0xD0	; 208
 242:	01 c0       	rjmp	.+2      	; 0x246 <_ZN5Print11printNumberEmh+0x6c>
 244:	19 5c       	subi	r17, 0xC9	; 201
 246:	f7 01       	movw	r30, r14
 248:	10 83       	st	Z, r17
 24a:	12 2f       	mov	r17, r18
 24c:	e3 2f       	mov	r30, r19
 24e:	ca 01       	movw	r24, r20
 250:	23 2b       	or	r18, r19
 252:	24 2b       	or	r18, r20
 254:	25 2b       	or	r18, r21
 256:	31 f7       	brne	.-52     	; 0x224 <_ZN5Print11printNumberEmh+0x4a>
 258:	b7 01       	movw	r22, r14
 25a:	c6 01       	movw	r24, r12
 25c:	0e 94 d1 00 	call	0x1a2	; 0x1a2 <_ZN5Print5writeEPKc>
 260:	a1 96       	adiw	r28, 0x21	; 33
 262:	0f b6       	in	r0, 0x3f	; 63
 264:	f8 94       	cli
 266:	de bf       	out	0x3e, r29	; 62
 268:	0f be       	out	0x3f, r0	; 63
 26a:	cd bf       	out	0x3d, r28	; 61
 26c:	df 91       	pop	r29
 26e:	cf 91       	pop	r28
 270:	1f 91       	pop	r17
 272:	0f 91       	pop	r16
 274:	ff 90       	pop	r15
 276:	ef 90       	pop	r14
 278:	df 90       	pop	r13
 27a:	cf 90       	pop	r12
 27c:	bf 90       	pop	r11
 27e:	af 90       	pop	r10
 280:	9f 90       	pop	r9
 282:	8f 90       	pop	r8
 284:	08 95       	ret

00000286 <_ZN5Print5printEli>:
 286:	cf 92       	push	r12
 288:	df 92       	push	r13
 28a:	ef 92       	push	r14
 28c:	ff 92       	push	r15
 28e:	0f 93       	push	r16
 290:	1f 93       	push	r17
 292:	cf 93       	push	r28
 294:	df 93       	push	r29
 296:	ec 01       	movw	r28, r24
 298:	6a 01       	movw	r12, r20
 29a:	7b 01       	movw	r14, r22
 29c:	21 15       	cp	r18, r1
 29e:	31 05       	cpc	r19, r1
 2a0:	79 f4       	brne	.+30     	; 0x2c0 <_ZN5Print5printEli+0x3a>
 2a2:	e8 81       	ld	r30, Y
 2a4:	f9 81       	ldd	r31, Y+1	; 0x01
 2a6:	01 90       	ld	r0, Z+
 2a8:	f0 81       	ld	r31, Z
 2aa:	e0 2d       	mov	r30, r0
 2ac:	64 2f       	mov	r22, r20
 2ae:	df 91       	pop	r29
 2b0:	cf 91       	pop	r28
 2b2:	1f 91       	pop	r17
 2b4:	0f 91       	pop	r16
 2b6:	ff 90       	pop	r15
 2b8:	ef 90       	pop	r14
 2ba:	df 90       	pop	r13
 2bc:	cf 90       	pop	r12
 2be:	09 94       	ijmp
 2c0:	2a 30       	cpi	r18, 0x0A	; 10
 2c2:	31 05       	cpc	r19, r1
 2c4:	e9 f4       	brne	.+58     	; 0x300 <_ZN5Print5printEli+0x7a>
 2c6:	77 ff       	sbrs	r23, 7
 2c8:	1a c0       	rjmp	.+52     	; 0x2fe <_ZN5Print5printEli+0x78>
 2ca:	6d e2       	ldi	r22, 0x2D	; 45
 2cc:	0e 94 e6 00 	call	0x1cc	; 0x1cc <_ZN5Print5printEc>
 2d0:	8c 01       	movw	r16, r24
 2d2:	44 27       	eor	r20, r20
 2d4:	55 27       	eor	r21, r21
 2d6:	ba 01       	movw	r22, r20
 2d8:	4c 19       	sub	r20, r12
 2da:	5d 09       	sbc	r21, r13
 2dc:	6e 09       	sbc	r22, r14
 2de:	7f 09       	sbc	r23, r15
 2e0:	2a e0       	ldi	r18, 0x0A	; 10
 2e2:	ce 01       	movw	r24, r28
 2e4:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN5Print11printNumberEmh>
 2e8:	80 0f       	add	r24, r16
 2ea:	91 1f       	adc	r25, r17
 2ec:	df 91       	pop	r29
 2ee:	cf 91       	pop	r28
 2f0:	1f 91       	pop	r17
 2f2:	0f 91       	pop	r16
 2f4:	ff 90       	pop	r15
 2f6:	ef 90       	pop	r14
 2f8:	df 90       	pop	r13
 2fa:	cf 90       	pop	r12
 2fc:	08 95       	ret
 2fe:	2a e0       	ldi	r18, 0x0A	; 10
 300:	b7 01       	movw	r22, r14
 302:	a6 01       	movw	r20, r12
 304:	ce 01       	movw	r24, r28
 306:	df 91       	pop	r29
 308:	cf 91       	pop	r28
 30a:	1f 91       	pop	r17
 30c:	0f 91       	pop	r16
 30e:	ff 90       	pop	r15
 310:	ef 90       	pop	r14
 312:	df 90       	pop	r13
 314:	cf 90       	pop	r12
 316:	0c 94 ed 00 	jmp	0x1da	; 0x1da <_ZN5Print11printNumberEmh>

0000031a <_ZN5Print10printFloatEdh>:
 31a:	4f 92       	push	r4
 31c:	5f 92       	push	r5
 31e:	6f 92       	push	r6
 320:	7f 92       	push	r7
 322:	8f 92       	push	r8
 324:	9f 92       	push	r9
 326:	af 92       	push	r10
 328:	bf 92       	push	r11
 32a:	cf 92       	push	r12
 32c:	df 92       	push	r13
 32e:	ef 92       	push	r14
 330:	ff 92       	push	r15
 332:	cf 93       	push	r28
 334:	df 93       	push	r29
 336:	ec 01       	movw	r28, r24
 338:	6a 01       	movw	r12, r20
 33a:	7b 01       	movw	r14, r22
 33c:	b2 2e       	mov	r11, r18
 33e:	9a 01       	movw	r18, r20
 340:	ab 01       	movw	r20, r22
 342:	c7 01       	movw	r24, r14
 344:	b6 01       	movw	r22, r12
 346:	0e 94 1f 07 	call	0xe3e	; 0xe3e <__unordsf2>
 34a:	88 23       	and	r24, r24
 34c:	19 f0       	breq	.+6      	; 0x354 <_ZN5Print10printFloatEdh+0x3a>
    size_t print(int, int = DEC);
    size_t print(unsigned int, int = DEC);
    size_t print(long, int = DEC);
    size_t print(unsigned long, int = DEC);
    size_t print(double, int = 2);
    size_t print(const Printable&);
 34e:	6a e0       	ldi	r22, 0x0A	; 10
 350:	71 e0       	ldi	r23, 0x01	; 1
 352:	27 c0       	rjmp	.+78     	; 0x3a2 <_ZN5Print10printFloatEdh+0x88>
 354:	26 01       	movw	r4, r12
 356:	37 01       	movw	r6, r14
 358:	e8 94       	clt
 35a:	77 f8       	bld	r7, 7
 35c:	2f ef       	ldi	r18, 0xFF	; 255
 35e:	3f ef       	ldi	r19, 0xFF	; 255
 360:	4f e7       	ldi	r20, 0x7F	; 127
 362:	5f e7       	ldi	r21, 0x7F	; 127
 364:	c3 01       	movw	r24, r6
 366:	b2 01       	movw	r22, r4
 368:	0e 94 1f 07 	call	0xe3e	; 0xe3e <__unordsf2>
 36c:	81 11       	cpse	r24, r1
 36e:	0d c0       	rjmp	.+26     	; 0x38a <_ZN5Print10printFloatEdh+0x70>
 370:	2f ef       	ldi	r18, 0xFF	; 255
 372:	3f ef       	ldi	r19, 0xFF	; 255
 374:	4f e7       	ldi	r20, 0x7F	; 127
 376:	5f e7       	ldi	r21, 0x7F	; 127
 378:	c3 01       	movw	r24, r6
 37a:	b2 01       	movw	r22, r4
 37c:	0e 94 4e 05 	call	0xa9c	; 0xa9c <__cmpsf2>
 380:	18 16       	cp	r1, r24
 382:	1c f4       	brge	.+6      	; 0x38a <_ZN5Print10printFloatEdh+0x70>
    size_t print(int, int = DEC);
    size_t print(unsigned int, int = DEC);
    size_t print(long, int = DEC);
    size_t print(unsigned long, int = DEC);
    size_t print(double, int = 2);
    size_t print(const Printable&);
 384:	6e e0       	ldi	r22, 0x0E	; 14
 386:	71 e0       	ldi	r23, 0x01	; 1
 388:	0c c0       	rjmp	.+24     	; 0x3a2 <_ZN5Print10printFloatEdh+0x88>
 38a:	2f ef       	ldi	r18, 0xFF	; 255
 38c:	3f ef       	ldi	r19, 0xFF	; 255
 38e:	4f e7       	ldi	r20, 0x7F	; 127
 390:	5f e4       	ldi	r21, 0x4F	; 79
 392:	c7 01       	movw	r24, r14
 394:	b6 01       	movw	r22, r12
 396:	0e 94 ad 06 	call	0xd5a	; 0xd5a <__gesf2>
 39a:	18 16       	cp	r1, r24
 39c:	9c f4       	brge	.+38     	; 0x3c4 <_ZN5Print10printFloatEdh+0xaa>
    size_t print(int, int = DEC);
    size_t print(unsigned int, int = DEC);
    size_t print(long, int = DEC);
    size_t print(unsigned long, int = DEC);
    size_t print(double, int = 2);
    size_t print(const Printable&);
 39e:	62 e1       	ldi	r22, 0x12	; 18
 3a0:	71 e0       	ldi	r23, 0x01	; 1
 3a2:	ce 01       	movw	r24, r28
 3a4:	df 91       	pop	r29
 3a6:	cf 91       	pop	r28
 3a8:	ff 90       	pop	r15
 3aa:	ef 90       	pop	r14
 3ac:	df 90       	pop	r13
 3ae:	cf 90       	pop	r12
 3b0:	bf 90       	pop	r11
 3b2:	af 90       	pop	r10
 3b4:	9f 90       	pop	r9
 3b6:	8f 90       	pop	r8
 3b8:	7f 90       	pop	r7
 3ba:	6f 90       	pop	r6
 3bc:	5f 90       	pop	r5
 3be:	4f 90       	pop	r4
    size_t print(int, int = DEC);
    size_t print(unsigned int, int = DEC);
    size_t print(long, int = DEC);
    size_t print(unsigned long, int = DEC);
    size_t print(double, int = 2);
    size_t print(const Printable&);
 3c0:	0c 94 d1 00 	jmp	0x1a2	; 0x1a2 <_ZN5Print5writeEPKc>
 3c4:	2f ef       	ldi	r18, 0xFF	; 255
 3c6:	3f ef       	ldi	r19, 0xFF	; 255
 3c8:	4f e7       	ldi	r20, 0x7F	; 127
 3ca:	5f ec       	ldi	r21, 0xCF	; 207
 3cc:	c7 01       	movw	r24, r14
 3ce:	b6 01       	movw	r22, r12
 3d0:	0e 94 4e 05 	call	0xa9c	; 0xa9c <__cmpsf2>
 3d4:	87 fd       	sbrc	r24, 7
 3d6:	e3 cf       	rjmp	.-58     	; 0x39e <_ZN5Print10printFloatEdh+0x84>
 3d8:	20 e0       	ldi	r18, 0x00	; 0
 3da:	30 e0       	ldi	r19, 0x00	; 0
 3dc:	a9 01       	movw	r20, r18
 3de:	c7 01       	movw	r24, r14
 3e0:	b6 01       	movw	r22, r12
 3e2:	0e 94 4e 05 	call	0xa9c	; 0xa9c <__cmpsf2>
 3e6:	87 ff       	sbrs	r24, 7
 3e8:	0a c0       	rjmp	.+20     	; 0x3fe <_ZN5Print10printFloatEdh+0xe4>
 3ea:	6d e2       	ldi	r22, 0x2D	; 45
 3ec:	ce 01       	movw	r24, r28
 3ee:	0e 94 e6 00 	call	0x1cc	; 0x1cc <_ZN5Print5printEc>
 3f2:	4c 01       	movw	r8, r24
 3f4:	f7 fa       	bst	r15, 7
 3f6:	f0 94       	com	r15
 3f8:	f7 f8       	bld	r15, 7
 3fa:	f0 94       	com	r15
 3fc:	02 c0       	rjmp	.+4      	; 0x402 <_ZN5Print10printFloatEdh+0xe8>
 3fe:	81 2c       	mov	r8, r1
 400:	91 2c       	mov	r9, r1
 402:	a1 2c       	mov	r10, r1
 404:	60 e0       	ldi	r22, 0x00	; 0
 406:	70 e0       	ldi	r23, 0x00	; 0
 408:	80 e0       	ldi	r24, 0x00	; 0
 40a:	9f e3       	ldi	r25, 0x3F	; 63
 40c:	ab 14       	cp	r10, r11
 40e:	41 f0       	breq	.+16     	; 0x420 <_ZN5Print10printFloatEdh+0x106>
 410:	20 e0       	ldi	r18, 0x00	; 0
 412:	30 e0       	ldi	r19, 0x00	; 0
 414:	40 e2       	ldi	r20, 0x20	; 32
 416:	51 e4       	ldi	r21, 0x41	; 65
 418:	0e 94 53 05 	call	0xaa6	; 0xaa6 <__divsf3>
 41c:	a3 94       	inc	r10
 41e:	f6 cf       	rjmp	.-20     	; 0x40c <_ZN5Print10printFloatEdh+0xf2>
 420:	9b 01       	movw	r18, r22
 422:	ac 01       	movw	r20, r24
 424:	c7 01       	movw	r24, r14
 426:	b6 01       	movw	r22, r12
 428:	0e 94 e2 04 	call	0x9c4	; 0x9c4 <__addsf3>
 42c:	2b 01       	movw	r4, r22
 42e:	3c 01       	movw	r6, r24
 430:	0e 94 cc 05 	call	0xb98	; 0xb98 <__fixunssfsi>
 434:	6b 01       	movw	r12, r22
 436:	7c 01       	movw	r14, r24
 438:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <__floatunsisf>
 43c:	9b 01       	movw	r18, r22
 43e:	ac 01       	movw	r20, r24
 440:	c3 01       	movw	r24, r6
 442:	b2 01       	movw	r22, r4
 444:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <__subsf3>
 448:	2b 01       	movw	r4, r22
 44a:	3c 01       	movw	r6, r24
 44c:	2a e0       	ldi	r18, 0x0A	; 10
 44e:	b7 01       	movw	r22, r14
 450:	a6 01       	movw	r20, r12
 452:	ce 01       	movw	r24, r28
 454:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN5Print11printNumberEmh>
 458:	7c 01       	movw	r14, r24
 45a:	e8 0c       	add	r14, r8
 45c:	f9 1c       	adc	r15, r9
 45e:	bb 20       	and	r11, r11
 460:	39 f0       	breq	.+14     	; 0x470 <_ZN5Print10printFloatEdh+0x156>
    size_t print(int, int = DEC);
    size_t print(unsigned int, int = DEC);
    size_t print(long, int = DEC);
    size_t print(unsigned long, int = DEC);
    size_t print(double, int = 2);
    size_t print(const Printable&);
 462:	66 e1       	ldi	r22, 0x16	; 22
 464:	71 e0       	ldi	r23, 0x01	; 1
 466:	ce 01       	movw	r24, r28
 468:	0e 94 d1 00 	call	0x1a2	; 0x1a2 <_ZN5Print5writeEPKc>
 46c:	e8 0e       	add	r14, r24
 46e:	f9 1e       	adc	r15, r25
 470:	db 2c       	mov	r13, r11
 472:	dd 20       	and	r13, r13
 474:	39 f1       	breq	.+78     	; 0x4c4 <_ZN5Print10printFloatEdh+0x1aa>
 476:	20 e0       	ldi	r18, 0x00	; 0
 478:	30 e0       	ldi	r19, 0x00	; 0
 47a:	40 e2       	ldi	r20, 0x20	; 32
 47c:	51 e4       	ldi	r21, 0x41	; 65
 47e:	c3 01       	movw	r24, r6
 480:	b2 01       	movw	r22, r4
 482:	0e 94 b2 06 	call	0xd64	; 0xd64 <__mulsf3>
 486:	2b 01       	movw	r4, r22
 488:	3c 01       	movw	r6, r24
 48a:	0e 94 c5 05 	call	0xb8a	; 0xb8a <__fixsfsi>
    size_t println(unsigned long, int = DEC);
    size_t println(double, int = 2);
    size_t println(const Printable&);
    size_t println(void);
};

 48e:	4b 01       	movw	r8, r22
 490:	77 0f       	add	r23, r23
 492:	aa 08       	sbc	r10, r10
 494:	bb 08       	sbc	r11, r11
 496:	2a e0       	ldi	r18, 0x0A	; 10
 498:	30 e0       	ldi	r19, 0x00	; 0
 49a:	b5 01       	movw	r22, r10
 49c:	a4 01       	movw	r20, r8
 49e:	ce 01       	movw	r24, r28
 4a0:	0e 94 43 01 	call	0x286	; 0x286 <_ZN5Print5printEli>
 4a4:	e8 0e       	add	r14, r24
 4a6:	f9 1e       	adc	r15, r25
 4a8:	c5 01       	movw	r24, r10
 4aa:	b4 01       	movw	r22, r8
 4ac:	0e 94 fd 05 	call	0xbfa	; 0xbfa <__floatsisf>
 4b0:	9b 01       	movw	r18, r22
 4b2:	ac 01       	movw	r20, r24
 4b4:	c3 01       	movw	r24, r6
 4b6:	b2 01       	movw	r22, r4
 4b8:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <__subsf3>
 4bc:	2b 01       	movw	r4, r22
 4be:	3c 01       	movw	r6, r24
 4c0:	da 94       	dec	r13
 4c2:	d7 cf       	rjmp	.-82     	; 0x472 <_ZN5Print10printFloatEdh+0x158>
 4c4:	c7 01       	movw	r24, r14
 4c6:	df 91       	pop	r29
 4c8:	cf 91       	pop	r28
 4ca:	ff 90       	pop	r15
 4cc:	ef 90       	pop	r14
 4ce:	df 90       	pop	r13
 4d0:	cf 90       	pop	r12
 4d2:	bf 90       	pop	r11
 4d4:	af 90       	pop	r10
 4d6:	9f 90       	pop	r9
 4d8:	8f 90       	pop	r8
 4da:	7f 90       	pop	r7
 4dc:	6f 90       	pop	r6
 4de:	5f 90       	pop	r5
 4e0:	4f 90       	pop	r4
 4e2:	08 95       	ret

000004e4 <_ZN5Print5printEdi>:
 4e4:	0c 94 8d 01 	jmp	0x31a	; 0x31a <_ZN5Print10printFloatEdh>

000004e8 <main>:
#include <Arduino.h>

int main(void)
{
	init();
 4e8:	0e 94 a6 04 	call	0x94c	; 0x94c <init>

#if defined(USBCON)
	USBDevice.attach();
#endif
	
	setup();
 4ec:	0e 94 5f 00 	call	0xbe	; 0xbe <setup>
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
 4f0:	c5 e5       	ldi	r28, 0x55	; 85
 4f2:	d3 e0       	ldi	r29, 0x03	; 3
#endif
	
	setup();
    
	for (;;) {
		loop();
 4f4:	0e 94 a8 00 	call	0x150	; 0x150 <loop>
		if (serialEventRun) serialEventRun();
 4f8:	20 97       	sbiw	r28, 0x00	; 0
 4fa:	e1 f3       	breq	.-8      	; 0x4f4 <main+0xc>
 4fc:	0e 94 55 03 	call	0x6aa	; 0x6aa <_Z14serialEventRunv>
 500:	f9 cf       	rjmp	.-14     	; 0x4f4 <main+0xc>

00000502 <_ZN14HardwareSerial9availableEv>:
  _rx_buffer->head = _rx_buffer->tail;
}

int HardwareSerial::available(void)
{
  return (unsigned int)(SERIAL_BUFFER_SIZE + _rx_buffer->head - _rx_buffer->tail) % SERIAL_BUFFER_SIZE;
 502:	fc 01       	movw	r30, r24
 504:	24 85       	ldd	r18, Z+12	; 0x0c
 506:	35 85       	ldd	r19, Z+13	; 0x0d
 508:	f9 01       	movw	r30, r18
 50a:	e0 5c       	subi	r30, 0xC0	; 192
 50c:	ff 4f       	sbci	r31, 0xFF	; 255
 50e:	80 81       	ld	r24, Z
 510:	91 81       	ldd	r25, Z+1	; 0x01
 512:	32 96       	adiw	r30, 0x02	; 2
 514:	20 81       	ld	r18, Z
 516:	31 81       	ldd	r19, Z+1	; 0x01
 518:	82 1b       	sub	r24, r18
 51a:	93 0b       	sbc	r25, r19
}
 51c:	8f 73       	andi	r24, 0x3F	; 63
 51e:	99 27       	eor	r25, r25
 520:	08 95       	ret

00000522 <_ZN14HardwareSerial4peekEv>:

int HardwareSerial::peek(void)
{
  if (_rx_buffer->head == _rx_buffer->tail) {
 522:	dc 01       	movw	r26, r24
 524:	1c 96       	adiw	r26, 0x0c	; 12
 526:	ed 91       	ld	r30, X+
 528:	fc 91       	ld	r31, X
 52a:	1d 97       	sbiw	r26, 0x0d	; 13
 52c:	df 01       	movw	r26, r30
 52e:	a0 5c       	subi	r26, 0xC0	; 192
 530:	bf 4f       	sbci	r27, 0xFF	; 255
 532:	2d 91       	ld	r18, X+
 534:	3c 91       	ld	r19, X
 536:	11 97       	sbiw	r26, 0x01	; 1
 538:	12 96       	adiw	r26, 0x02	; 2
 53a:	8d 91       	ld	r24, X+
 53c:	9c 91       	ld	r25, X
 53e:	11 97       	sbiw	r26, 0x01	; 1
 540:	28 17       	cp	r18, r24
 542:	39 07       	cpc	r19, r25
 544:	39 f0       	breq	.+14     	; 0x554 <_ZN14HardwareSerial4peekEv+0x32>
    return -1;
  } else {
    return _rx_buffer->buffer[_rx_buffer->tail];
 546:	8d 91       	ld	r24, X+
 548:	9c 91       	ld	r25, X
 54a:	e8 0f       	add	r30, r24
 54c:	f9 1f       	adc	r31, r25
 54e:	80 81       	ld	r24, Z
 550:	90 e0       	ldi	r25, 0x00	; 0
 552:	08 95       	ret
}

int HardwareSerial::peek(void)
{
  if (_rx_buffer->head == _rx_buffer->tail) {
    return -1;
 554:	8f ef       	ldi	r24, 0xFF	; 255
 556:	9f ef       	ldi	r25, 0xFF	; 255
  } else {
    return _rx_buffer->buffer[_rx_buffer->tail];
  }
}
 558:	08 95       	ret

0000055a <_ZN14HardwareSerial4readEv>:

int HardwareSerial::read(void)
{
  // if the head isn't ahead of the tail, we don't have any characters
  if (_rx_buffer->head == _rx_buffer->tail) {
 55a:	fc 01       	movw	r30, r24
 55c:	a4 85       	ldd	r26, Z+12	; 0x0c
 55e:	b5 85       	ldd	r27, Z+13	; 0x0d
 560:	fd 01       	movw	r30, r26
 562:	e0 5c       	subi	r30, 0xC0	; 192
 564:	ff 4f       	sbci	r31, 0xFF	; 255
 566:	20 81       	ld	r18, Z
 568:	31 81       	ldd	r19, Z+1	; 0x01
 56a:	32 96       	adiw	r30, 0x02	; 2
 56c:	80 81       	ld	r24, Z
 56e:	91 81       	ldd	r25, Z+1	; 0x01
 570:	28 17       	cp	r18, r24
 572:	39 07       	cpc	r19, r25
 574:	79 f0       	breq	.+30     	; 0x594 <_ZN14HardwareSerial4readEv+0x3a>
    return -1;
  } else {
    unsigned char c = _rx_buffer->buffer[_rx_buffer->tail];
 576:	80 81       	ld	r24, Z
 578:	91 81       	ldd	r25, Z+1	; 0x01
 57a:	a8 0f       	add	r26, r24
 57c:	b9 1f       	adc	r27, r25
 57e:	8c 91       	ld	r24, X
    _rx_buffer->tail = (unsigned int)(_rx_buffer->tail + 1) % SERIAL_BUFFER_SIZE;
 580:	20 81       	ld	r18, Z
 582:	31 81       	ldd	r19, Z+1	; 0x01
 584:	2f 5f       	subi	r18, 0xFF	; 255
 586:	3f 4f       	sbci	r19, 0xFF	; 255
 588:	2f 73       	andi	r18, 0x3F	; 63
 58a:	33 27       	eor	r19, r19
 58c:	31 83       	std	Z+1, r19	; 0x01
 58e:	20 83       	st	Z, r18
    return c;
 590:	90 e0       	ldi	r25, 0x00	; 0
 592:	08 95       	ret

int HardwareSerial::read(void)
{
  // if the head isn't ahead of the tail, we don't have any characters
  if (_rx_buffer->head == _rx_buffer->tail) {
    return -1;
 594:	8f ef       	ldi	r24, 0xFF	; 255
 596:	9f ef       	ldi	r25, 0xFF	; 255
  } else {
    unsigned char c = _rx_buffer->buffer[_rx_buffer->tail];
    _rx_buffer->tail = (unsigned int)(_rx_buffer->tail + 1) % SERIAL_BUFFER_SIZE;
    return c;
  }
}
 598:	08 95       	ret

0000059a <_ZN14HardwareSerial5flushEv>:

void HardwareSerial::flush()
{
 59a:	fc 01       	movw	r30, r24
  // UDR is kept full while the buffer is not empty, so TXC triggers when EMPTY && SENT
  while (transmitting && ! (*_ucsra & _BV(TXC0)));
 59c:	81 a1       	ldd	r24, Z+33	; 0x21
 59e:	88 23       	and	r24, r24
 5a0:	29 f0       	breq	.+10     	; 0x5ac <_ZN14HardwareSerial5flushEv+0x12>
 5a2:	a4 89       	ldd	r26, Z+20	; 0x14
 5a4:	b5 89       	ldd	r27, Z+21	; 0x15
 5a6:	8c 91       	ld	r24, X
 5a8:	86 ff       	sbrs	r24, 6
 5aa:	fb cf       	rjmp	.-10     	; 0x5a2 <_ZN14HardwareSerial5flushEv+0x8>
  transmitting = false;
 5ac:	11 a2       	std	Z+33, r1	; 0x21
 5ae:	08 95       	ret

000005b0 <_ZN14HardwareSerial5writeEh>:
}

size_t HardwareSerial::write(uint8_t c)
{
 5b0:	0f 93       	push	r16
 5b2:	1f 93       	push	r17
 5b4:	cf 93       	push	r28
 5b6:	df 93       	push	r29
 5b8:	fc 01       	movw	r30, r24
  int i = (_tx_buffer->head + 1) % SERIAL_BUFFER_SIZE;
 5ba:	a6 85       	ldd	r26, Z+14	; 0x0e
 5bc:	b7 85       	ldd	r27, Z+15	; 0x0f
 5be:	8d 01       	movw	r16, r26
 5c0:	00 5c       	subi	r16, 0xC0	; 192
 5c2:	1f 4f       	sbci	r17, 0xFF	; 255
 5c4:	e8 01       	movw	r28, r16
 5c6:	88 81       	ld	r24, Y
 5c8:	99 81       	ldd	r25, Y+1	; 0x01
 5ca:	01 96       	adiw	r24, 0x01	; 1
 5cc:	8f 73       	andi	r24, 0x3F	; 63
 5ce:	99 27       	eor	r25, r25
	
  // If the output buffer is full, there's nothing for it other than to 
  // wait for the interrupt handler to empty it a bit
  // ???: return 0 here instead?
  while (i == _tx_buffer->tail)
 5d0:	ad 01       	movw	r20, r26
 5d2:	4e 5b       	subi	r20, 0xBE	; 190
 5d4:	5f 4f       	sbci	r21, 0xFF	; 255
 5d6:	ea 01       	movw	r28, r20
 5d8:	28 81       	ld	r18, Y
 5da:	39 81       	ldd	r19, Y+1	; 0x01
 5dc:	82 17       	cp	r24, r18
 5de:	93 07       	cpc	r25, r19
 5e0:	d1 f3       	breq	.-12     	; 0x5d6 <_ZN14HardwareSerial5writeEh+0x26>
    ;
	
  _tx_buffer->buffer[_tx_buffer->head] = c;
 5e2:	e8 01       	movw	r28, r16
 5e4:	28 81       	ld	r18, Y
 5e6:	39 81       	ldd	r19, Y+1	; 0x01
 5e8:	a2 0f       	add	r26, r18
 5ea:	b3 1f       	adc	r27, r19
 5ec:	6c 93       	st	X, r22
  _tx_buffer->head = i;
 5ee:	a6 85       	ldd	r26, Z+14	; 0x0e
 5f0:	b7 85       	ldd	r27, Z+15	; 0x0f
 5f2:	a0 5c       	subi	r26, 0xC0	; 192
 5f4:	bf 4f       	sbci	r27, 0xFF	; 255
 5f6:	11 96       	adiw	r26, 0x01	; 1
 5f8:	9c 93       	st	X, r25
 5fa:	8e 93       	st	-X, r24
	
  sbi(*_ucsrb, _udrie);
 5fc:	a6 89       	ldd	r26, Z+22	; 0x16
 5fe:	b7 89       	ldd	r27, Z+23	; 0x17
 600:	2c 91       	ld	r18, X
 602:	81 e0       	ldi	r24, 0x01	; 1
 604:	90 e0       	ldi	r25, 0x00	; 0
 606:	07 8c       	ldd	r0, Z+31	; 0x1f
 608:	02 c0       	rjmp	.+4      	; 0x60e <_ZN14HardwareSerial5writeEh+0x5e>
 60a:	88 0f       	add	r24, r24
 60c:	99 1f       	adc	r25, r25
 60e:	0a 94       	dec	r0
 610:	e2 f7       	brpl	.-8      	; 0x60a <_ZN14HardwareSerial5writeEh+0x5a>
 612:	82 2b       	or	r24, r18
 614:	8c 93       	st	X, r24
  // clear the TXC bit -- "can be cleared by writing a one to its bit location"
  transmitting = true;
 616:	81 e0       	ldi	r24, 0x01	; 1
 618:	81 a3       	std	Z+33, r24	; 0x21
  sbi(*_ucsra, TXC0);
 61a:	04 88       	ldd	r0, Z+20	; 0x14
 61c:	f5 89       	ldd	r31, Z+21	; 0x15
 61e:	e0 2d       	mov	r30, r0
 620:	80 81       	ld	r24, Z
 622:	80 64       	ori	r24, 0x40	; 64
 624:	80 83       	st	Z, r24
  
  return 1;
}
 626:	81 e0       	ldi	r24, 0x01	; 1
 628:	90 e0       	ldi	r25, 0x00	; 0
 62a:	df 91       	pop	r29
 62c:	cf 91       	pop	r28
 62e:	1f 91       	pop	r17
 630:	0f 91       	pop	r16
 632:	08 95       	ret

00000634 <_Z11serialEventv>:
#if !defined(USART_RX_vect) && !defined(USART0_RX_vect) && \
    !defined(USART_RXC_vect)
  #error "Don't know what the Data Received vector is called for the first UART"
#else
  void serialEvent() __attribute__((weak));
  void serialEvent() {}
 634:	08 95       	ret

00000636 <__vector_18>:
#elif defined(USART0_RX_vect)
  ISR(USART0_RX_vect)
#elif defined(USART_RXC_vect)
  ISR(USART_RXC_vect) // ATmega8
#endif
  {
 636:	1f 92       	push	r1
 638:	0f 92       	push	r0
 63a:	0f b6       	in	r0, 0x3f	; 63
 63c:	0f 92       	push	r0
 63e:	11 24       	eor	r1, r1
 640:	2f 93       	push	r18
 642:	4f 93       	push	r20
 644:	5f 93       	push	r21
 646:	8f 93       	push	r24
 648:	9f 93       	push	r25
 64a:	ef 93       	push	r30
 64c:	ff 93       	push	r31
  #if defined(UDR0)
    if (bit_is_clear(UCSR0A, UPE0)) {
 64e:	80 91 c0 00 	lds	r24, 0x00C0
 652:	82 fd       	sbrc	r24, 2
 654:	1c c0       	rjmp	.+56     	; 0x68e <__vector_18+0x58>
      unsigned char c = UDR0;
 656:	20 91 c6 00 	lds	r18, 0x00C6
  ring_buffer tx_buffer3  =  { { 0 }, 0, 0 };
#endif

inline void store_char(unsigned char c, ring_buffer *buffer)
{
  int i = (unsigned int)(buffer->head + 1) % SERIAL_BUFFER_SIZE;
 65a:	80 91 ce 01 	lds	r24, 0x01CE
 65e:	90 91 cf 01 	lds	r25, 0x01CF
 662:	01 96       	adiw	r24, 0x01	; 1
 664:	8f 73       	andi	r24, 0x3F	; 63
 666:	99 27       	eor	r25, r25

  // if we should be storing the received character into the location
  // just before the tail (meaning that the head would advance to the
  // current location of the tail), we're about to overflow the buffer
  // and so we don't write the character or advance the head.
  if (i != buffer->tail) {
 668:	40 91 d0 01 	lds	r20, 0x01D0
 66c:	50 91 d1 01 	lds	r21, 0x01D1
 670:	84 17       	cp	r24, r20
 672:	95 07       	cpc	r25, r21
 674:	71 f0       	breq	.+28     	; 0x692 <__vector_18+0x5c>
    buffer->buffer[buffer->head] = c;
 676:	e0 91 ce 01 	lds	r30, 0x01CE
 67a:	f0 91 cf 01 	lds	r31, 0x01CF
 67e:	e2 57       	subi	r30, 0x72	; 114
 680:	fe 4f       	sbci	r31, 0xFE	; 254
 682:	20 83       	st	Z, r18
    buffer->head = i;
 684:	90 93 cf 01 	sts	0x01CF, r25
 688:	80 93 ce 01 	sts	0x01CE, r24
 68c:	02 c0       	rjmp	.+4      	; 0x692 <__vector_18+0x5c>
  #if defined(UDR0)
    if (bit_is_clear(UCSR0A, UPE0)) {
      unsigned char c = UDR0;
      store_char(c, &rx_buffer);
    } else {
      unsigned char c = UDR0;
 68e:	80 91 c6 00 	lds	r24, 0x00C6
      unsigned char c = UDR;
    };
  #else
    #error UDR not defined
  #endif
  }
 692:	ff 91       	pop	r31
 694:	ef 91       	pop	r30
 696:	9f 91       	pop	r25
 698:	8f 91       	pop	r24
 69a:	5f 91       	pop	r21
 69c:	4f 91       	pop	r20
 69e:	2f 91       	pop	r18
 6a0:	0f 90       	pop	r0
 6a2:	0f be       	out	0x3f, r0	; 63
 6a4:	0f 90       	pop	r0
 6a6:	1f 90       	pop	r1
 6a8:	18 95       	reti

000006aa <_Z14serialEventRunv>:
#endif

void serialEventRun(void)
{
#ifdef serialEvent_implemented
  if (Serial.available()) serialEvent();
 6aa:	88 e2       	ldi	r24, 0x28	; 40
 6ac:	91 e0       	ldi	r25, 0x01	; 1
 6ae:	0e 94 81 02 	call	0x502	; 0x502 <_ZN14HardwareSerial9availableEv>
 6b2:	89 2b       	or	r24, r25
 6b4:	11 f0       	breq	.+4      	; 0x6ba <_Z14serialEventRunv+0x10>
 6b6:	0c 94 1a 03 	jmp	0x634	; 0x634 <_Z11serialEventv>
 6ba:	08 95       	ret

000006bc <__vector_19>:
#elif defined(USART0_UDRE_vect)
ISR(USART0_UDRE_vect)
#elif defined(USART_UDRE_vect)
ISR(USART_UDRE_vect)
#endif
{
 6bc:	1f 92       	push	r1
 6be:	0f 92       	push	r0
 6c0:	0f b6       	in	r0, 0x3f	; 63
 6c2:	0f 92       	push	r0
 6c4:	11 24       	eor	r1, r1
 6c6:	2f 93       	push	r18
 6c8:	3f 93       	push	r19
 6ca:	8f 93       	push	r24
 6cc:	9f 93       	push	r25
 6ce:	ef 93       	push	r30
 6d0:	ff 93       	push	r31
  if (tx_buffer.head == tx_buffer.tail) {
 6d2:	20 91 8a 01 	lds	r18, 0x018A
 6d6:	30 91 8b 01 	lds	r19, 0x018B
 6da:	80 91 8c 01 	lds	r24, 0x018C
 6de:	90 91 8d 01 	lds	r25, 0x018D
 6e2:	28 17       	cp	r18, r24
 6e4:	39 07       	cpc	r19, r25
 6e6:	31 f4       	brne	.+12     	; 0x6f4 <__vector_19+0x38>
	// Buffer empty, so disable interrupts
#if defined(UCSR0B)
    cbi(UCSR0B, UDRIE0);
 6e8:	80 91 c1 00 	lds	r24, 0x00C1
 6ec:	8f 7d       	andi	r24, 0xDF	; 223
 6ee:	80 93 c1 00 	sts	0x00C1, r24
 6f2:	14 c0       	rjmp	.+40     	; 0x71c <__vector_19+0x60>
    cbi(UCSRB, UDRIE);
#endif
  }
  else {
    // There is more data in the output buffer. Send the next byte
    unsigned char c = tx_buffer.buffer[tx_buffer.tail];
 6f4:	e0 91 8c 01 	lds	r30, 0x018C
 6f8:	f0 91 8d 01 	lds	r31, 0x018D
 6fc:	e6 5b       	subi	r30, 0xB6	; 182
 6fe:	fe 4f       	sbci	r31, 0xFE	; 254
 700:	20 81       	ld	r18, Z
    tx_buffer.tail = (tx_buffer.tail + 1) % SERIAL_BUFFER_SIZE;
 702:	80 91 8c 01 	lds	r24, 0x018C
 706:	90 91 8d 01 	lds	r25, 0x018D
 70a:	01 96       	adiw	r24, 0x01	; 1
 70c:	8f 73       	andi	r24, 0x3F	; 63
 70e:	99 27       	eor	r25, r25
 710:	90 93 8d 01 	sts	0x018D, r25
 714:	80 93 8c 01 	sts	0x018C, r24
	
  #if defined(UDR0)
    UDR0 = c;
 718:	20 93 c6 00 	sts	0x00C6, r18
    UDR = c;
  #else
    #error UDR not defined
  #endif
  }
}
 71c:	ff 91       	pop	r31
 71e:	ef 91       	pop	r30
 720:	9f 91       	pop	r25
 722:	8f 91       	pop	r24
 724:	3f 91       	pop	r19
 726:	2f 91       	pop	r18
 728:	0f 90       	pop	r0
 72a:	0f be       	out	0x3f, r0	; 63
 72c:	0f 90       	pop	r0
 72e:	1f 90       	pop	r1
 730:	18 95       	reti

00000732 <_ZN14HardwareSerial5beginEm>:
}

// Public Methods //////////////////////////////////////////////////////////////

void HardwareSerial::begin(unsigned long baud)
{
 732:	cf 92       	push	r12
 734:	df 92       	push	r13
 736:	ef 92       	push	r14
 738:	ff 92       	push	r15
 73a:	0f 93       	push	r16
 73c:	1f 93       	push	r17
 73e:	cf 93       	push	r28
 740:	df 93       	push	r29
 742:	ec 01       	movw	r28, r24
 744:	6a 01       	movw	r12, r20
 746:	7b 01       	movw	r14, r22
  }
#endif

try_again:
  
  if (use_u2x) {
 748:	41 15       	cp	r20, r1
 74a:	51 4e       	sbci	r21, 0xE1	; 225
 74c:	61 05       	cpc	r22, r1
 74e:	71 05       	cpc	r23, r1
 750:	09 f1       	breq	.+66     	; 0x794 <_ZN14HardwareSerial5beginEm+0x62>
    *_ucsra = 1 << _u2x;
 752:	ec 89       	ldd	r30, Y+20	; 0x14
 754:	fd 89       	ldd	r31, Y+21	; 0x15
 756:	81 e0       	ldi	r24, 0x01	; 1
 758:	90 e0       	ldi	r25, 0x00	; 0
 75a:	08 a0       	ldd	r0, Y+32	; 0x20
 75c:	02 c0       	rjmp	.+4      	; 0x762 <_ZN14HardwareSerial5beginEm+0x30>
 75e:	88 0f       	add	r24, r24
 760:	99 1f       	adc	r25, r25
 762:	0a 94       	dec	r0
 764:	e2 f7       	brpl	.-8      	; 0x75e <_ZN14HardwareSerial5beginEm+0x2c>
 766:	80 83       	st	Z, r24
    baud_setting = (F_CPU / 4 / baud - 1) / 2;
 768:	60 e0       	ldi	r22, 0x00	; 0
 76a:	79 e0       	ldi	r23, 0x09	; 9
 76c:	8d e3       	ldi	r24, 0x3D	; 61
 76e:	90 e0       	ldi	r25, 0x00	; 0
 770:	a7 01       	movw	r20, r14
 772:	96 01       	movw	r18, r12
 774:	0e 94 24 07 	call	0xe48	; 0xe48 <__udivmodsi4>
 778:	89 01       	movw	r16, r18
 77a:	9a 01       	movw	r18, r20
 77c:	01 50       	subi	r16, 0x01	; 1
 77e:	11 09       	sbc	r17, r1
 780:	21 09       	sbc	r18, r1
 782:	31 09       	sbc	r19, r1
 784:	36 95       	lsr	r19
 786:	27 95       	ror	r18
 788:	17 95       	ror	r17
 78a:	07 95       	ror	r16
 78c:	98 01       	movw	r18, r16
  } else {
    *_ucsra = 0;
    baud_setting = (F_CPU / 8 / baud - 1) / 2;
  }
  
  if ((baud_setting > 4095) && use_u2x)
 78e:	01 15       	cp	r16, r1
 790:	10 41       	sbci	r17, 0x10	; 16
 792:	a8 f0       	brcs	.+42     	; 0x7be <_ZN14HardwareSerial5beginEm+0x8c>
  
  if (use_u2x) {
    *_ucsra = 1 << _u2x;
    baud_setting = (F_CPU / 4 / baud - 1) / 2;
  } else {
    *_ucsra = 0;
 794:	ec 89       	ldd	r30, Y+20	; 0x14
 796:	fd 89       	ldd	r31, Y+21	; 0x15
 798:	10 82       	st	Z, r1
    baud_setting = (F_CPU / 8 / baud - 1) / 2;
 79a:	60 e8       	ldi	r22, 0x80	; 128
 79c:	74 e8       	ldi	r23, 0x84	; 132
 79e:	8e e1       	ldi	r24, 0x1E	; 30
 7a0:	90 e0       	ldi	r25, 0x00	; 0
 7a2:	a7 01       	movw	r20, r14
 7a4:	96 01       	movw	r18, r12
 7a6:	0e 94 24 07 	call	0xe48	; 0xe48 <__udivmodsi4>
 7aa:	da 01       	movw	r26, r20
 7ac:	c9 01       	movw	r24, r18
 7ae:	01 97       	sbiw	r24, 0x01	; 1
 7b0:	a1 09       	sbc	r26, r1
 7b2:	b1 09       	sbc	r27, r1
 7b4:	b6 95       	lsr	r27
 7b6:	a7 95       	ror	r26
 7b8:	97 95       	ror	r25
 7ba:	87 95       	ror	r24
 7bc:	9c 01       	movw	r18, r24
    use_u2x = false;
    goto try_again;
  }

  // assign the baud_setting, a.k.a. ubbr (USART Baud Rate Register)
  *_ubrrh = baud_setting >> 8;
 7be:	e8 89       	ldd	r30, Y+16	; 0x10
 7c0:	f9 89       	ldd	r31, Y+17	; 0x11
 7c2:	30 83       	st	Z, r19
  *_ubrrl = baud_setting;
 7c4:	ea 89       	ldd	r30, Y+18	; 0x12
 7c6:	fb 89       	ldd	r31, Y+19	; 0x13
 7c8:	20 83       	st	Z, r18

  transmitting = false;
 7ca:	19 a2       	std	Y+33, r1	; 0x21

  sbi(*_ucsrb, _rxen);
 7cc:	ee 89       	ldd	r30, Y+22	; 0x16
 7ce:	ff 89       	ldd	r31, Y+23	; 0x17
 7d0:	40 81       	ld	r20, Z
 7d2:	81 e0       	ldi	r24, 0x01	; 1
 7d4:	90 e0       	ldi	r25, 0x00	; 0
 7d6:	9c 01       	movw	r18, r24
 7d8:	0c 8c       	ldd	r0, Y+28	; 0x1c
 7da:	02 c0       	rjmp	.+4      	; 0x7e0 <_ZN14HardwareSerial5beginEm+0xae>
 7dc:	22 0f       	add	r18, r18
 7de:	33 1f       	adc	r19, r19
 7e0:	0a 94       	dec	r0
 7e2:	e2 f7       	brpl	.-8      	; 0x7dc <_ZN14HardwareSerial5beginEm+0xaa>
 7e4:	24 2b       	or	r18, r20
 7e6:	20 83       	st	Z, r18
  sbi(*_ucsrb, _txen);
 7e8:	ee 89       	ldd	r30, Y+22	; 0x16
 7ea:	ff 89       	ldd	r31, Y+23	; 0x17
 7ec:	40 81       	ld	r20, Z
 7ee:	9c 01       	movw	r18, r24
 7f0:	0d 8c       	ldd	r0, Y+29	; 0x1d
 7f2:	02 c0       	rjmp	.+4      	; 0x7f8 <_ZN14HardwareSerial5beginEm+0xc6>
 7f4:	22 0f       	add	r18, r18
 7f6:	33 1f       	adc	r19, r19
 7f8:	0a 94       	dec	r0
 7fa:	e2 f7       	brpl	.-8      	; 0x7f4 <_ZN14HardwareSerial5beginEm+0xc2>
 7fc:	24 2b       	or	r18, r20
 7fe:	20 83       	st	Z, r18
  sbi(*_ucsrb, _rxcie);
 800:	ee 89       	ldd	r30, Y+22	; 0x16
 802:	ff 89       	ldd	r31, Y+23	; 0x17
 804:	40 81       	ld	r20, Z
 806:	9c 01       	movw	r18, r24
 808:	0e 8c       	ldd	r0, Y+30	; 0x1e
 80a:	02 c0       	rjmp	.+4      	; 0x810 <_ZN14HardwareSerial5beginEm+0xde>
 80c:	22 0f       	add	r18, r18
 80e:	33 1f       	adc	r19, r19
 810:	0a 94       	dec	r0
 812:	e2 f7       	brpl	.-8      	; 0x80c <_ZN14HardwareSerial5beginEm+0xda>
 814:	24 2b       	or	r18, r20
 816:	20 83       	st	Z, r18
  cbi(*_ucsrb, _udrie);
 818:	ee 89       	ldd	r30, Y+22	; 0x16
 81a:	ff 89       	ldd	r31, Y+23	; 0x17
 81c:	20 81       	ld	r18, Z
 81e:	0f 8c       	ldd	r0, Y+31	; 0x1f
 820:	02 c0       	rjmp	.+4      	; 0x826 <_ZN14HardwareSerial5beginEm+0xf4>
 822:	88 0f       	add	r24, r24
 824:	99 1f       	adc	r25, r25
 826:	0a 94       	dec	r0
 828:	e2 f7       	brpl	.-8      	; 0x822 <_ZN14HardwareSerial5beginEm+0xf0>
 82a:	80 95       	com	r24
 82c:	82 23       	and	r24, r18
 82e:	80 83       	st	Z, r24
}
 830:	df 91       	pop	r29
 832:	cf 91       	pop	r28
 834:	1f 91       	pop	r17
 836:	0f 91       	pop	r16
 838:	ff 90       	pop	r15
 83a:	ef 90       	pop	r14
 83c:	df 90       	pop	r13
 83e:	cf 90       	pop	r12
 840:	08 95       	ret

00000842 <_GLOBAL__sub_I_rx_buffer>:
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
  public:
    Print() : write_error(0) {}
 842:	e8 e2       	ldi	r30, 0x28	; 40
 844:	f1 e0       	ldi	r31, 0x01	; 1
 846:	13 82       	std	Z+3, r1	; 0x03
 848:	12 82       	std	Z+2, r1	; 0x02
    virtual int available() = 0;
    virtual int read() = 0;
    virtual int peek() = 0;
    virtual void flush() = 0;

    Stream() {_timeout=1000;}
 84a:	88 ee       	ldi	r24, 0xE8	; 232
 84c:	93 e0       	ldi	r25, 0x03	; 3
 84e:	a0 e0       	ldi	r26, 0x00	; 0
 850:	b0 e0       	ldi	r27, 0x00	; 0
 852:	84 83       	std	Z+4, r24	; 0x04
 854:	95 83       	std	Z+5, r25	; 0x05
 856:	a6 83       	std	Z+6, r26	; 0x06
 858:	b7 83       	std	Z+7, r27	; 0x07

HardwareSerial::HardwareSerial(ring_buffer *rx_buffer, ring_buffer *tx_buffer,
  volatile uint8_t *ubrrh, volatile uint8_t *ubrrl,
  volatile uint8_t *ucsra, volatile uint8_t *ucsrb,
  volatile uint8_t *ucsrc, volatile uint8_t *udr,
  uint8_t rxen, uint8_t txen, uint8_t rxcie, uint8_t udrie, uint8_t u2x)
 85a:	8c e1       	ldi	r24, 0x1C	; 28
 85c:	91 e0       	ldi	r25, 0x01	; 1
 85e:	91 83       	std	Z+1, r25	; 0x01
 860:	80 83       	st	Z, r24
{
  _rx_buffer = rx_buffer;
 862:	8e e8       	ldi	r24, 0x8E	; 142
 864:	91 e0       	ldi	r25, 0x01	; 1
 866:	95 87       	std	Z+13, r25	; 0x0d
 868:	84 87       	std	Z+12, r24	; 0x0c
  _tx_buffer = tx_buffer;
 86a:	8a e4       	ldi	r24, 0x4A	; 74
 86c:	91 e0       	ldi	r25, 0x01	; 1
 86e:	97 87       	std	Z+15, r25	; 0x0f
 870:	86 87       	std	Z+14, r24	; 0x0e
  _ubrrh = ubrrh;
 872:	85 ec       	ldi	r24, 0xC5	; 197
 874:	90 e0       	ldi	r25, 0x00	; 0
 876:	91 8b       	std	Z+17, r25	; 0x11
 878:	80 8b       	std	Z+16, r24	; 0x10
  _ubrrl = ubrrl;
 87a:	84 ec       	ldi	r24, 0xC4	; 196
 87c:	90 e0       	ldi	r25, 0x00	; 0
 87e:	93 8b       	std	Z+19, r25	; 0x13
 880:	82 8b       	std	Z+18, r24	; 0x12
  _ucsra = ucsra;
 882:	80 ec       	ldi	r24, 0xC0	; 192
 884:	90 e0       	ldi	r25, 0x00	; 0
 886:	95 8b       	std	Z+21, r25	; 0x15
 888:	84 8b       	std	Z+20, r24	; 0x14
  _ucsrb = ucsrb;
 88a:	81 ec       	ldi	r24, 0xC1	; 193
 88c:	90 e0       	ldi	r25, 0x00	; 0
 88e:	97 8b       	std	Z+23, r25	; 0x17
 890:	86 8b       	std	Z+22, r24	; 0x16
  _ucsrc = ucsrc;
 892:	82 ec       	ldi	r24, 0xC2	; 194
 894:	90 e0       	ldi	r25, 0x00	; 0
 896:	91 8f       	std	Z+25, r25	; 0x19
 898:	80 8f       	std	Z+24, r24	; 0x18
  _udr = udr;
 89a:	86 ec       	ldi	r24, 0xC6	; 198
 89c:	90 e0       	ldi	r25, 0x00	; 0
 89e:	93 8f       	std	Z+27, r25	; 0x1b
 8a0:	82 8f       	std	Z+26, r24	; 0x1a
  _rxen = rxen;
 8a2:	84 e0       	ldi	r24, 0x04	; 4
 8a4:	84 8f       	std	Z+28, r24	; 0x1c
  _txen = txen;
 8a6:	83 e0       	ldi	r24, 0x03	; 3
 8a8:	85 8f       	std	Z+29, r24	; 0x1d
  _rxcie = rxcie;
 8aa:	87 e0       	ldi	r24, 0x07	; 7
 8ac:	86 8f       	std	Z+30, r24	; 0x1e
  _udrie = udrie;
 8ae:	85 e0       	ldi	r24, 0x05	; 5
 8b0:	87 8f       	std	Z+31, r24	; 0x1f
  _u2x = u2x;
 8b2:	81 e0       	ldi	r24, 0x01	; 1
 8b4:	80 a3       	std	Z+32, r24	; 0x20
 8b6:	08 95       	ret

000008b8 <__vector_16>:
#if defined(__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny84__)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
 8b8:	1f 92       	push	r1
 8ba:	0f 92       	push	r0
 8bc:	0f b6       	in	r0, 0x3f	; 63
 8be:	0f 92       	push	r0
 8c0:	11 24       	eor	r1, r1
 8c2:	2f 93       	push	r18
 8c4:	3f 93       	push	r19
 8c6:	8f 93       	push	r24
 8c8:	9f 93       	push	r25
 8ca:	af 93       	push	r26
 8cc:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
 8ce:	80 91 d3 01 	lds	r24, 0x01D3
 8d2:	90 91 d4 01 	lds	r25, 0x01D4
 8d6:	a0 91 d5 01 	lds	r26, 0x01D5
 8da:	b0 91 d6 01 	lds	r27, 0x01D6
	unsigned char f = timer0_fract;
 8de:	30 91 d2 01 	lds	r19, 0x01D2

	m += MILLIS_INC;
	f += FRACT_INC;
 8e2:	23 e0       	ldi	r18, 0x03	; 3
 8e4:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 8e6:	2d 37       	cpi	r18, 0x7D	; 125
 8e8:	20 f4       	brcc	.+8      	; 0x8f2 <__vector_16+0x3a>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
 8ea:	01 96       	adiw	r24, 0x01	; 1
 8ec:	a1 1d       	adc	r26, r1
 8ee:	b1 1d       	adc	r27, r1
 8f0:	05 c0       	rjmp	.+10     	; 0x8fc <__vector_16+0x44>
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
 8f2:	26 e8       	ldi	r18, 0x86	; 134
 8f4:	23 0f       	add	r18, r19
		m += 1;
 8f6:	02 96       	adiw	r24, 0x02	; 2
 8f8:	a1 1d       	adc	r26, r1
 8fa:	b1 1d       	adc	r27, r1
	}

	timer0_fract = f;
 8fc:	20 93 d2 01 	sts	0x01D2, r18
	timer0_millis = m;
 900:	80 93 d3 01 	sts	0x01D3, r24
 904:	90 93 d4 01 	sts	0x01D4, r25
 908:	a0 93 d5 01 	sts	0x01D5, r26
 90c:	b0 93 d6 01 	sts	0x01D6, r27
	timer0_overflow_count++;
 910:	80 91 d7 01 	lds	r24, 0x01D7
 914:	90 91 d8 01 	lds	r25, 0x01D8
 918:	a0 91 d9 01 	lds	r26, 0x01D9
 91c:	b0 91 da 01 	lds	r27, 0x01DA
 920:	01 96       	adiw	r24, 0x01	; 1
 922:	a1 1d       	adc	r26, r1
 924:	b1 1d       	adc	r27, r1
 926:	80 93 d7 01 	sts	0x01D7, r24
 92a:	90 93 d8 01 	sts	0x01D8, r25
 92e:	a0 93 d9 01 	sts	0x01D9, r26
 932:	b0 93 da 01 	sts	0x01DA, r27
}
 936:	bf 91       	pop	r27
 938:	af 91       	pop	r26
 93a:	9f 91       	pop	r25
 93c:	8f 91       	pop	r24
 93e:	3f 91       	pop	r19
 940:	2f 91       	pop	r18
 942:	0f 90       	pop	r0
 944:	0f be       	out	0x3f, r0	; 63
 946:	0f 90       	pop	r0
 948:	1f 90       	pop	r1
 94a:	18 95       	reti

0000094c <init>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
 94c:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 94e:	84 b5       	in	r24, 0x24	; 36
 950:	82 60       	ori	r24, 0x02	; 2
 952:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 954:	84 b5       	in	r24, 0x24	; 36
 956:	81 60       	ori	r24, 0x01	; 1
 958:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 95a:	85 b5       	in	r24, 0x25	; 37
 95c:	82 60       	ori	r24, 0x02	; 2
 95e:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 960:	85 b5       	in	r24, 0x25	; 37
 962:	81 60       	ori	r24, 0x01	; 1
 964:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 966:	ee e6       	ldi	r30, 0x6E	; 110
 968:	f0 e0       	ldi	r31, 0x00	; 0
 96a:	80 81       	ld	r24, Z
 96c:	81 60       	ori	r24, 0x01	; 1
 96e:	80 83       	st	Z, r24
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 970:	e1 e8       	ldi	r30, 0x81	; 129
 972:	f0 e0       	ldi	r31, 0x00	; 0
 974:	10 82       	st	Z, r1

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 976:	80 81       	ld	r24, Z
 978:	82 60       	ori	r24, 0x02	; 2
 97a:	80 83       	st	Z, r24
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 97c:	80 81       	ld	r24, Z
 97e:	81 60       	ori	r24, 0x01	; 1
 980:	80 83       	st	Z, r24
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 982:	e0 e8       	ldi	r30, 0x80	; 128
 984:	f0 e0       	ldi	r31, 0x00	; 0
 986:	80 81       	ld	r24, Z
 988:	81 60       	ori	r24, 0x01	; 1
 98a:	80 83       	st	Z, r24

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 98c:	e1 eb       	ldi	r30, 0xB1	; 177
 98e:	f0 e0       	ldi	r31, 0x00	; 0
 990:	80 81       	ld	r24, Z
 992:	84 60       	ori	r24, 0x04	; 4
 994:	80 83       	st	Z, r24

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 996:	e0 eb       	ldi	r30, 0xB0	; 176
 998:	f0 e0       	ldi	r31, 0x00	; 0
 99a:	80 81       	ld	r24, Z
 99c:	81 60       	ori	r24, 0x01	; 1
 99e:	80 83       	st	Z, r24
#if defined(ADCSRA)
	// set a2d prescale factor to 128
	// 16 MHz / 128 = 125 KHz, inside the desired 50-200 KHz range.
	// XXX: this will not work properly for other clock speeds, and
	// this code should use F_CPU to determine the prescale factor.
	sbi(ADCSRA, ADPS2);
 9a0:	ea e7       	ldi	r30, 0x7A	; 122
 9a2:	f0 e0       	ldi	r31, 0x00	; 0
 9a4:	80 81       	ld	r24, Z
 9a6:	84 60       	ori	r24, 0x04	; 4
 9a8:	80 83       	st	Z, r24
	sbi(ADCSRA, ADPS1);
 9aa:	80 81       	ld	r24, Z
 9ac:	82 60       	ori	r24, 0x02	; 2
 9ae:	80 83       	st	Z, r24
	sbi(ADCSRA, ADPS0);
 9b0:	80 81       	ld	r24, Z
 9b2:	81 60       	ori	r24, 0x01	; 1
 9b4:	80 83       	st	Z, r24

	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 9b6:	80 81       	ld	r24, Z
 9b8:	80 68       	ori	r24, 0x80	; 128
 9ba:	80 83       	st	Z, r24
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 9bc:	10 92 c1 00 	sts	0x00C1, r1
 9c0:	08 95       	ret

000009c2 <__subsf3>:
 9c2:	50 58       	subi	r21, 0x80	; 128

000009c4 <__addsf3>:
 9c4:	bb 27       	eor	r27, r27
 9c6:	aa 27       	eor	r26, r26
 9c8:	0e 94 f9 04 	call	0x9f2	; 0x9f2 <__addsf3x>
 9cc:	0c 94 73 06 	jmp	0xce6	; 0xce6 <__fp_round>
 9d0:	0e 94 65 06 	call	0xcca	; 0xcca <__fp_pscA>
 9d4:	38 f0       	brcs	.+14     	; 0x9e4 <__addsf3+0x20>
 9d6:	0e 94 6c 06 	call	0xcd8	; 0xcd8 <__fp_pscB>
 9da:	20 f0       	brcs	.+8      	; 0x9e4 <__addsf3+0x20>
 9dc:	39 f4       	brne	.+14     	; 0x9ec <__addsf3+0x28>
 9de:	9f 3f       	cpi	r25, 0xFF	; 255
 9e0:	19 f4       	brne	.+6      	; 0x9e8 <__addsf3+0x24>
 9e2:	26 f4       	brtc	.+8      	; 0x9ec <__addsf3+0x28>
 9e4:	0c 94 62 06 	jmp	0xcc4	; 0xcc4 <__fp_nan>
 9e8:	0e f4       	brtc	.+2      	; 0x9ec <__addsf3+0x28>
 9ea:	e0 95       	com	r30
 9ec:	e7 fb       	bst	r30, 7
 9ee:	0c 94 5c 06 	jmp	0xcb8	; 0xcb8 <__fp_inf>

000009f2 <__addsf3x>:
 9f2:	e9 2f       	mov	r30, r25
 9f4:	0e 94 84 06 	call	0xd08	; 0xd08 <__fp_split3>
 9f8:	58 f3       	brcs	.-42     	; 0x9d0 <__addsf3+0xc>
 9fa:	ba 17       	cp	r27, r26
 9fc:	62 07       	cpc	r22, r18
 9fe:	73 07       	cpc	r23, r19
 a00:	84 07       	cpc	r24, r20
 a02:	95 07       	cpc	r25, r21
 a04:	20 f0       	brcs	.+8      	; 0xa0e <__addsf3x+0x1c>
 a06:	79 f4       	brne	.+30     	; 0xa26 <__addsf3x+0x34>
 a08:	a6 f5       	brtc	.+104    	; 0xa72 <__addsf3x+0x80>
 a0a:	0c 94 a6 06 	jmp	0xd4c	; 0xd4c <__fp_zero>
 a0e:	0e f4       	brtc	.+2      	; 0xa12 <__addsf3x+0x20>
 a10:	e0 95       	com	r30
 a12:	0b 2e       	mov	r0, r27
 a14:	ba 2f       	mov	r27, r26
 a16:	a0 2d       	mov	r26, r0
 a18:	0b 01       	movw	r0, r22
 a1a:	b9 01       	movw	r22, r18
 a1c:	90 01       	movw	r18, r0
 a1e:	0c 01       	movw	r0, r24
 a20:	ca 01       	movw	r24, r20
 a22:	a0 01       	movw	r20, r0
 a24:	11 24       	eor	r1, r1
 a26:	ff 27       	eor	r31, r31
 a28:	59 1b       	sub	r21, r25
 a2a:	99 f0       	breq	.+38     	; 0xa52 <__addsf3x+0x60>
 a2c:	59 3f       	cpi	r21, 0xF9	; 249
 a2e:	50 f4       	brcc	.+20     	; 0xa44 <__addsf3x+0x52>
 a30:	50 3e       	cpi	r21, 0xE0	; 224
 a32:	68 f1       	brcs	.+90     	; 0xa8e <__addsf3x+0x9c>
 a34:	1a 16       	cp	r1, r26
 a36:	f0 40       	sbci	r31, 0x00	; 0
 a38:	a2 2f       	mov	r26, r18
 a3a:	23 2f       	mov	r18, r19
 a3c:	34 2f       	mov	r19, r20
 a3e:	44 27       	eor	r20, r20
 a40:	58 5f       	subi	r21, 0xF8	; 248
 a42:	f3 cf       	rjmp	.-26     	; 0xa2a <__addsf3x+0x38>
 a44:	46 95       	lsr	r20
 a46:	37 95       	ror	r19
 a48:	27 95       	ror	r18
 a4a:	a7 95       	ror	r26
 a4c:	f0 40       	sbci	r31, 0x00	; 0
 a4e:	53 95       	inc	r21
 a50:	c9 f7       	brne	.-14     	; 0xa44 <__addsf3x+0x52>
 a52:	7e f4       	brtc	.+30     	; 0xa72 <__addsf3x+0x80>
 a54:	1f 16       	cp	r1, r31
 a56:	ba 0b       	sbc	r27, r26
 a58:	62 0b       	sbc	r22, r18
 a5a:	73 0b       	sbc	r23, r19
 a5c:	84 0b       	sbc	r24, r20
 a5e:	ba f0       	brmi	.+46     	; 0xa8e <__addsf3x+0x9c>
 a60:	91 50       	subi	r25, 0x01	; 1
 a62:	a1 f0       	breq	.+40     	; 0xa8c <__addsf3x+0x9a>
 a64:	ff 0f       	add	r31, r31
 a66:	bb 1f       	adc	r27, r27
 a68:	66 1f       	adc	r22, r22
 a6a:	77 1f       	adc	r23, r23
 a6c:	88 1f       	adc	r24, r24
 a6e:	c2 f7       	brpl	.-16     	; 0xa60 <__addsf3x+0x6e>
 a70:	0e c0       	rjmp	.+28     	; 0xa8e <__addsf3x+0x9c>
 a72:	ba 0f       	add	r27, r26
 a74:	62 1f       	adc	r22, r18
 a76:	73 1f       	adc	r23, r19
 a78:	84 1f       	adc	r24, r20
 a7a:	48 f4       	brcc	.+18     	; 0xa8e <__addsf3x+0x9c>
 a7c:	87 95       	ror	r24
 a7e:	77 95       	ror	r23
 a80:	67 95       	ror	r22
 a82:	b7 95       	ror	r27
 a84:	f7 95       	ror	r31
 a86:	9e 3f       	cpi	r25, 0xFE	; 254
 a88:	08 f0       	brcs	.+2      	; 0xa8c <__addsf3x+0x9a>
 a8a:	b0 cf       	rjmp	.-160    	; 0x9ec <__addsf3+0x28>
 a8c:	93 95       	inc	r25
 a8e:	88 0f       	add	r24, r24
 a90:	08 f0       	brcs	.+2      	; 0xa94 <__addsf3x+0xa2>
 a92:	99 27       	eor	r25, r25
 a94:	ee 0f       	add	r30, r30
 a96:	97 95       	ror	r25
 a98:	87 95       	ror	r24
 a9a:	08 95       	ret

00000a9c <__cmpsf2>:
 a9c:	0e 94 38 06 	call	0xc70	; 0xc70 <__fp_cmp>
 aa0:	08 f4       	brcc	.+2      	; 0xaa4 <__cmpsf2+0x8>
 aa2:	81 e0       	ldi	r24, 0x01	; 1
 aa4:	08 95       	ret

00000aa6 <__divsf3>:
 aa6:	0e 94 67 05 	call	0xace	; 0xace <__divsf3x>
 aaa:	0c 94 73 06 	jmp	0xce6	; 0xce6 <__fp_round>
 aae:	0e 94 6c 06 	call	0xcd8	; 0xcd8 <__fp_pscB>
 ab2:	58 f0       	brcs	.+22     	; 0xaca <__divsf3+0x24>
 ab4:	0e 94 65 06 	call	0xcca	; 0xcca <__fp_pscA>
 ab8:	40 f0       	brcs	.+16     	; 0xaca <__divsf3+0x24>
 aba:	29 f4       	brne	.+10     	; 0xac6 <__divsf3+0x20>
 abc:	5f 3f       	cpi	r21, 0xFF	; 255
 abe:	29 f0       	breq	.+10     	; 0xaca <__divsf3+0x24>
 ac0:	0c 94 5c 06 	jmp	0xcb8	; 0xcb8 <__fp_inf>
 ac4:	51 11       	cpse	r21, r1
 ac6:	0c 94 a7 06 	jmp	0xd4e	; 0xd4e <__fp_szero>
 aca:	0c 94 62 06 	jmp	0xcc4	; 0xcc4 <__fp_nan>

00000ace <__divsf3x>:
 ace:	0e 94 84 06 	call	0xd08	; 0xd08 <__fp_split3>
 ad2:	68 f3       	brcs	.-38     	; 0xaae <__divsf3+0x8>

00000ad4 <__divsf3_pse>:
 ad4:	99 23       	and	r25, r25
 ad6:	b1 f3       	breq	.-20     	; 0xac4 <__divsf3+0x1e>
 ad8:	55 23       	and	r21, r21
 ada:	91 f3       	breq	.-28     	; 0xac0 <__divsf3+0x1a>
 adc:	95 1b       	sub	r25, r21
 ade:	55 0b       	sbc	r21, r21
 ae0:	bb 27       	eor	r27, r27
 ae2:	aa 27       	eor	r26, r26
 ae4:	62 17       	cp	r22, r18
 ae6:	73 07       	cpc	r23, r19
 ae8:	84 07       	cpc	r24, r20
 aea:	38 f0       	brcs	.+14     	; 0xafa <__divsf3_pse+0x26>
 aec:	9f 5f       	subi	r25, 0xFF	; 255
 aee:	5f 4f       	sbci	r21, 0xFF	; 255
 af0:	22 0f       	add	r18, r18
 af2:	33 1f       	adc	r19, r19
 af4:	44 1f       	adc	r20, r20
 af6:	aa 1f       	adc	r26, r26
 af8:	a9 f3       	breq	.-22     	; 0xae4 <__divsf3_pse+0x10>
 afa:	35 d0       	rcall	.+106    	; 0xb66 <__divsf3_pse+0x92>
 afc:	0e 2e       	mov	r0, r30
 afe:	3a f0       	brmi	.+14     	; 0xb0e <__divsf3_pse+0x3a>
 b00:	e0 e8       	ldi	r30, 0x80	; 128
 b02:	32 d0       	rcall	.+100    	; 0xb68 <__divsf3_pse+0x94>
 b04:	91 50       	subi	r25, 0x01	; 1
 b06:	50 40       	sbci	r21, 0x00	; 0
 b08:	e6 95       	lsr	r30
 b0a:	00 1c       	adc	r0, r0
 b0c:	ca f7       	brpl	.-14     	; 0xb00 <__divsf3_pse+0x2c>
 b0e:	2b d0       	rcall	.+86     	; 0xb66 <__divsf3_pse+0x92>
 b10:	fe 2f       	mov	r31, r30
 b12:	29 d0       	rcall	.+82     	; 0xb66 <__divsf3_pse+0x92>
 b14:	66 0f       	add	r22, r22
 b16:	77 1f       	adc	r23, r23
 b18:	88 1f       	adc	r24, r24
 b1a:	bb 1f       	adc	r27, r27
 b1c:	26 17       	cp	r18, r22
 b1e:	37 07       	cpc	r19, r23
 b20:	48 07       	cpc	r20, r24
 b22:	ab 07       	cpc	r26, r27
 b24:	b0 e8       	ldi	r27, 0x80	; 128
 b26:	09 f0       	breq	.+2      	; 0xb2a <__divsf3_pse+0x56>
 b28:	bb 0b       	sbc	r27, r27
 b2a:	80 2d       	mov	r24, r0
 b2c:	bf 01       	movw	r22, r30
 b2e:	ff 27       	eor	r31, r31
 b30:	93 58       	subi	r25, 0x83	; 131
 b32:	5f 4f       	sbci	r21, 0xFF	; 255
 b34:	3a f0       	brmi	.+14     	; 0xb44 <__divsf3_pse+0x70>
 b36:	9e 3f       	cpi	r25, 0xFE	; 254
 b38:	51 05       	cpc	r21, r1
 b3a:	78 f0       	brcs	.+30     	; 0xb5a <__divsf3_pse+0x86>
 b3c:	0c 94 5c 06 	jmp	0xcb8	; 0xcb8 <__fp_inf>
 b40:	0c 94 a7 06 	jmp	0xd4e	; 0xd4e <__fp_szero>
 b44:	5f 3f       	cpi	r21, 0xFF	; 255
 b46:	e4 f3       	brlt	.-8      	; 0xb40 <__divsf3_pse+0x6c>
 b48:	98 3e       	cpi	r25, 0xE8	; 232
 b4a:	d4 f3       	brlt	.-12     	; 0xb40 <__divsf3_pse+0x6c>
 b4c:	86 95       	lsr	r24
 b4e:	77 95       	ror	r23
 b50:	67 95       	ror	r22
 b52:	b7 95       	ror	r27
 b54:	f7 95       	ror	r31
 b56:	9f 5f       	subi	r25, 0xFF	; 255
 b58:	c9 f7       	brne	.-14     	; 0xb4c <__divsf3_pse+0x78>
 b5a:	88 0f       	add	r24, r24
 b5c:	91 1d       	adc	r25, r1
 b5e:	96 95       	lsr	r25
 b60:	87 95       	ror	r24
 b62:	97 f9       	bld	r25, 7
 b64:	08 95       	ret
 b66:	e1 e0       	ldi	r30, 0x01	; 1
 b68:	66 0f       	add	r22, r22
 b6a:	77 1f       	adc	r23, r23
 b6c:	88 1f       	adc	r24, r24
 b6e:	bb 1f       	adc	r27, r27
 b70:	62 17       	cp	r22, r18
 b72:	73 07       	cpc	r23, r19
 b74:	84 07       	cpc	r24, r20
 b76:	ba 07       	cpc	r27, r26
 b78:	20 f0       	brcs	.+8      	; 0xb82 <__divsf3_pse+0xae>
 b7a:	62 1b       	sub	r22, r18
 b7c:	73 0b       	sbc	r23, r19
 b7e:	84 0b       	sbc	r24, r20
 b80:	ba 0b       	sbc	r27, r26
 b82:	ee 1f       	adc	r30, r30
 b84:	88 f7       	brcc	.-30     	; 0xb68 <__divsf3_pse+0x94>
 b86:	e0 95       	com	r30
 b88:	08 95       	ret

00000b8a <__fixsfsi>:
 b8a:	0e 94 cc 05 	call	0xb98	; 0xb98 <__fixunssfsi>
 b8e:	68 94       	set
 b90:	b1 11       	cpse	r27, r1
 b92:	0c 94 a7 06 	jmp	0xd4e	; 0xd4e <__fp_szero>
 b96:	08 95       	ret

00000b98 <__fixunssfsi>:
 b98:	0e 94 8c 06 	call	0xd18	; 0xd18 <__fp_splitA>
 b9c:	88 f0       	brcs	.+34     	; 0xbc0 <__fixunssfsi+0x28>
 b9e:	9f 57       	subi	r25, 0x7F	; 127
 ba0:	98 f0       	brcs	.+38     	; 0xbc8 <__fixunssfsi+0x30>
 ba2:	b9 2f       	mov	r27, r25
 ba4:	99 27       	eor	r25, r25
 ba6:	b7 51       	subi	r27, 0x17	; 23
 ba8:	b0 f0       	brcs	.+44     	; 0xbd6 <__fixunssfsi+0x3e>
 baa:	e1 f0       	breq	.+56     	; 0xbe4 <__fixunssfsi+0x4c>
 bac:	66 0f       	add	r22, r22
 bae:	77 1f       	adc	r23, r23
 bb0:	88 1f       	adc	r24, r24
 bb2:	99 1f       	adc	r25, r25
 bb4:	1a f0       	brmi	.+6      	; 0xbbc <__fixunssfsi+0x24>
 bb6:	ba 95       	dec	r27
 bb8:	c9 f7       	brne	.-14     	; 0xbac <__fixunssfsi+0x14>
 bba:	14 c0       	rjmp	.+40     	; 0xbe4 <__fixunssfsi+0x4c>
 bbc:	b1 30       	cpi	r27, 0x01	; 1
 bbe:	91 f0       	breq	.+36     	; 0xbe4 <__fixunssfsi+0x4c>
 bc0:	0e 94 a6 06 	call	0xd4c	; 0xd4c <__fp_zero>
 bc4:	b1 e0       	ldi	r27, 0x01	; 1
 bc6:	08 95       	ret
 bc8:	0c 94 a6 06 	jmp	0xd4c	; 0xd4c <__fp_zero>
 bcc:	67 2f       	mov	r22, r23
 bce:	78 2f       	mov	r23, r24
 bd0:	88 27       	eor	r24, r24
 bd2:	b8 5f       	subi	r27, 0xF8	; 248
 bd4:	39 f0       	breq	.+14     	; 0xbe4 <__fixunssfsi+0x4c>
 bd6:	b9 3f       	cpi	r27, 0xF9	; 249
 bd8:	cc f3       	brlt	.-14     	; 0xbcc <__fixunssfsi+0x34>
 bda:	86 95       	lsr	r24
 bdc:	77 95       	ror	r23
 bde:	67 95       	ror	r22
 be0:	b3 95       	inc	r27
 be2:	d9 f7       	brne	.-10     	; 0xbda <__fixunssfsi+0x42>
 be4:	3e f4       	brtc	.+14     	; 0xbf4 <__fixunssfsi+0x5c>
 be6:	90 95       	com	r25
 be8:	80 95       	com	r24
 bea:	70 95       	com	r23
 bec:	61 95       	neg	r22
 bee:	7f 4f       	sbci	r23, 0xFF	; 255
 bf0:	8f 4f       	sbci	r24, 0xFF	; 255
 bf2:	9f 4f       	sbci	r25, 0xFF	; 255
 bf4:	08 95       	ret

00000bf6 <__floatunsisf>:
 bf6:	e8 94       	clt
 bf8:	09 c0       	rjmp	.+18     	; 0xc0c <__floatsisf+0x12>

00000bfa <__floatsisf>:
 bfa:	97 fb       	bst	r25, 7
 bfc:	3e f4       	brtc	.+14     	; 0xc0c <__floatsisf+0x12>
 bfe:	90 95       	com	r25
 c00:	80 95       	com	r24
 c02:	70 95       	com	r23
 c04:	61 95       	neg	r22
 c06:	7f 4f       	sbci	r23, 0xFF	; 255
 c08:	8f 4f       	sbci	r24, 0xFF	; 255
 c0a:	9f 4f       	sbci	r25, 0xFF	; 255
 c0c:	99 23       	and	r25, r25
 c0e:	a9 f0       	breq	.+42     	; 0xc3a <__floatsisf+0x40>
 c10:	f9 2f       	mov	r31, r25
 c12:	96 e9       	ldi	r25, 0x96	; 150
 c14:	bb 27       	eor	r27, r27
 c16:	93 95       	inc	r25
 c18:	f6 95       	lsr	r31
 c1a:	87 95       	ror	r24
 c1c:	77 95       	ror	r23
 c1e:	67 95       	ror	r22
 c20:	b7 95       	ror	r27
 c22:	f1 11       	cpse	r31, r1
 c24:	f8 cf       	rjmp	.-16     	; 0xc16 <__floatsisf+0x1c>
 c26:	fa f4       	brpl	.+62     	; 0xc66 <__floatsisf+0x6c>
 c28:	bb 0f       	add	r27, r27
 c2a:	11 f4       	brne	.+4      	; 0xc30 <__floatsisf+0x36>
 c2c:	60 ff       	sbrs	r22, 0
 c2e:	1b c0       	rjmp	.+54     	; 0xc66 <__floatsisf+0x6c>
 c30:	6f 5f       	subi	r22, 0xFF	; 255
 c32:	7f 4f       	sbci	r23, 0xFF	; 255
 c34:	8f 4f       	sbci	r24, 0xFF	; 255
 c36:	9f 4f       	sbci	r25, 0xFF	; 255
 c38:	16 c0       	rjmp	.+44     	; 0xc66 <__floatsisf+0x6c>
 c3a:	88 23       	and	r24, r24
 c3c:	11 f0       	breq	.+4      	; 0xc42 <__floatsisf+0x48>
 c3e:	96 e9       	ldi	r25, 0x96	; 150
 c40:	11 c0       	rjmp	.+34     	; 0xc64 <__floatsisf+0x6a>
 c42:	77 23       	and	r23, r23
 c44:	21 f0       	breq	.+8      	; 0xc4e <__floatsisf+0x54>
 c46:	9e e8       	ldi	r25, 0x8E	; 142
 c48:	87 2f       	mov	r24, r23
 c4a:	76 2f       	mov	r23, r22
 c4c:	05 c0       	rjmp	.+10     	; 0xc58 <__floatsisf+0x5e>
 c4e:	66 23       	and	r22, r22
 c50:	71 f0       	breq	.+28     	; 0xc6e <__floatsisf+0x74>
 c52:	96 e8       	ldi	r25, 0x86	; 134
 c54:	86 2f       	mov	r24, r22
 c56:	70 e0       	ldi	r23, 0x00	; 0
 c58:	60 e0       	ldi	r22, 0x00	; 0
 c5a:	2a f0       	brmi	.+10     	; 0xc66 <__floatsisf+0x6c>
 c5c:	9a 95       	dec	r25
 c5e:	66 0f       	add	r22, r22
 c60:	77 1f       	adc	r23, r23
 c62:	88 1f       	adc	r24, r24
 c64:	da f7       	brpl	.-10     	; 0xc5c <__floatsisf+0x62>
 c66:	88 0f       	add	r24, r24
 c68:	96 95       	lsr	r25
 c6a:	87 95       	ror	r24
 c6c:	97 f9       	bld	r25, 7
 c6e:	08 95       	ret

00000c70 <__fp_cmp>:
 c70:	99 0f       	add	r25, r25
 c72:	00 08       	sbc	r0, r0
 c74:	55 0f       	add	r21, r21
 c76:	aa 0b       	sbc	r26, r26
 c78:	e0 e8       	ldi	r30, 0x80	; 128
 c7a:	fe ef       	ldi	r31, 0xFE	; 254
 c7c:	16 16       	cp	r1, r22
 c7e:	17 06       	cpc	r1, r23
 c80:	e8 07       	cpc	r30, r24
 c82:	f9 07       	cpc	r31, r25
 c84:	c0 f0       	brcs	.+48     	; 0xcb6 <__fp_cmp+0x46>
 c86:	12 16       	cp	r1, r18
 c88:	13 06       	cpc	r1, r19
 c8a:	e4 07       	cpc	r30, r20
 c8c:	f5 07       	cpc	r31, r21
 c8e:	98 f0       	brcs	.+38     	; 0xcb6 <__fp_cmp+0x46>
 c90:	62 1b       	sub	r22, r18
 c92:	73 0b       	sbc	r23, r19
 c94:	84 0b       	sbc	r24, r20
 c96:	95 0b       	sbc	r25, r21
 c98:	39 f4       	brne	.+14     	; 0xca8 <__fp_cmp+0x38>
 c9a:	0a 26       	eor	r0, r26
 c9c:	61 f0       	breq	.+24     	; 0xcb6 <__fp_cmp+0x46>
 c9e:	23 2b       	or	r18, r19
 ca0:	24 2b       	or	r18, r20
 ca2:	25 2b       	or	r18, r21
 ca4:	21 f4       	brne	.+8      	; 0xcae <__fp_cmp+0x3e>
 ca6:	08 95       	ret
 ca8:	0a 26       	eor	r0, r26
 caa:	09 f4       	brne	.+2      	; 0xcae <__fp_cmp+0x3e>
 cac:	a1 40       	sbci	r26, 0x01	; 1
 cae:	a6 95       	lsr	r26
 cb0:	8f ef       	ldi	r24, 0xFF	; 255
 cb2:	81 1d       	adc	r24, r1
 cb4:	81 1d       	adc	r24, r1
 cb6:	08 95       	ret

00000cb8 <__fp_inf>:
 cb8:	97 f9       	bld	r25, 7
 cba:	9f 67       	ori	r25, 0x7F	; 127
 cbc:	80 e8       	ldi	r24, 0x80	; 128
 cbe:	70 e0       	ldi	r23, 0x00	; 0
 cc0:	60 e0       	ldi	r22, 0x00	; 0
 cc2:	08 95       	ret

00000cc4 <__fp_nan>:
 cc4:	9f ef       	ldi	r25, 0xFF	; 255
 cc6:	80 ec       	ldi	r24, 0xC0	; 192
 cc8:	08 95       	ret

00000cca <__fp_pscA>:
 cca:	00 24       	eor	r0, r0
 ccc:	0a 94       	dec	r0
 cce:	16 16       	cp	r1, r22
 cd0:	17 06       	cpc	r1, r23
 cd2:	18 06       	cpc	r1, r24
 cd4:	09 06       	cpc	r0, r25
 cd6:	08 95       	ret

00000cd8 <__fp_pscB>:
 cd8:	00 24       	eor	r0, r0
 cda:	0a 94       	dec	r0
 cdc:	12 16       	cp	r1, r18
 cde:	13 06       	cpc	r1, r19
 ce0:	14 06       	cpc	r1, r20
 ce2:	05 06       	cpc	r0, r21
 ce4:	08 95       	ret

00000ce6 <__fp_round>:
 ce6:	09 2e       	mov	r0, r25
 ce8:	03 94       	inc	r0
 cea:	00 0c       	add	r0, r0
 cec:	11 f4       	brne	.+4      	; 0xcf2 <__fp_round+0xc>
 cee:	88 23       	and	r24, r24
 cf0:	52 f0       	brmi	.+20     	; 0xd06 <__fp_round+0x20>
 cf2:	bb 0f       	add	r27, r27
 cf4:	40 f4       	brcc	.+16     	; 0xd06 <__fp_round+0x20>
 cf6:	bf 2b       	or	r27, r31
 cf8:	11 f4       	brne	.+4      	; 0xcfe <__fp_round+0x18>
 cfa:	60 ff       	sbrs	r22, 0
 cfc:	04 c0       	rjmp	.+8      	; 0xd06 <__fp_round+0x20>
 cfe:	6f 5f       	subi	r22, 0xFF	; 255
 d00:	7f 4f       	sbci	r23, 0xFF	; 255
 d02:	8f 4f       	sbci	r24, 0xFF	; 255
 d04:	9f 4f       	sbci	r25, 0xFF	; 255
 d06:	08 95       	ret

00000d08 <__fp_split3>:
 d08:	57 fd       	sbrc	r21, 7
 d0a:	90 58       	subi	r25, 0x80	; 128
 d0c:	44 0f       	add	r20, r20
 d0e:	55 1f       	adc	r21, r21
 d10:	59 f0       	breq	.+22     	; 0xd28 <__fp_splitA+0x10>
 d12:	5f 3f       	cpi	r21, 0xFF	; 255
 d14:	71 f0       	breq	.+28     	; 0xd32 <__fp_splitA+0x1a>
 d16:	47 95       	ror	r20

00000d18 <__fp_splitA>:
 d18:	88 0f       	add	r24, r24
 d1a:	97 fb       	bst	r25, 7
 d1c:	99 1f       	adc	r25, r25
 d1e:	61 f0       	breq	.+24     	; 0xd38 <__fp_splitA+0x20>
 d20:	9f 3f       	cpi	r25, 0xFF	; 255
 d22:	79 f0       	breq	.+30     	; 0xd42 <__fp_splitA+0x2a>
 d24:	87 95       	ror	r24
 d26:	08 95       	ret
 d28:	12 16       	cp	r1, r18
 d2a:	13 06       	cpc	r1, r19
 d2c:	14 06       	cpc	r1, r20
 d2e:	55 1f       	adc	r21, r21
 d30:	f2 cf       	rjmp	.-28     	; 0xd16 <__fp_split3+0xe>
 d32:	46 95       	lsr	r20
 d34:	f1 df       	rcall	.-30     	; 0xd18 <__fp_splitA>
 d36:	08 c0       	rjmp	.+16     	; 0xd48 <__fp_splitA+0x30>
 d38:	16 16       	cp	r1, r22
 d3a:	17 06       	cpc	r1, r23
 d3c:	18 06       	cpc	r1, r24
 d3e:	99 1f       	adc	r25, r25
 d40:	f1 cf       	rjmp	.-30     	; 0xd24 <__fp_splitA+0xc>
 d42:	86 95       	lsr	r24
 d44:	71 05       	cpc	r23, r1
 d46:	61 05       	cpc	r22, r1
 d48:	08 94       	sec
 d4a:	08 95       	ret

00000d4c <__fp_zero>:
 d4c:	e8 94       	clt

00000d4e <__fp_szero>:
 d4e:	bb 27       	eor	r27, r27
 d50:	66 27       	eor	r22, r22
 d52:	77 27       	eor	r23, r23
 d54:	cb 01       	movw	r24, r22
 d56:	97 f9       	bld	r25, 7
 d58:	08 95       	ret

00000d5a <__gesf2>:
 d5a:	0e 94 38 06 	call	0xc70	; 0xc70 <__fp_cmp>
 d5e:	08 f4       	brcc	.+2      	; 0xd62 <__gesf2+0x8>
 d60:	8f ef       	ldi	r24, 0xFF	; 255
 d62:	08 95       	ret

00000d64 <__mulsf3>:
 d64:	0e 94 c5 06 	call	0xd8a	; 0xd8a <__mulsf3x>
 d68:	0c 94 73 06 	jmp	0xce6	; 0xce6 <__fp_round>
 d6c:	0e 94 65 06 	call	0xcca	; 0xcca <__fp_pscA>
 d70:	38 f0       	brcs	.+14     	; 0xd80 <__mulsf3+0x1c>
 d72:	0e 94 6c 06 	call	0xcd8	; 0xcd8 <__fp_pscB>
 d76:	20 f0       	brcs	.+8      	; 0xd80 <__mulsf3+0x1c>
 d78:	95 23       	and	r25, r21
 d7a:	11 f0       	breq	.+4      	; 0xd80 <__mulsf3+0x1c>
 d7c:	0c 94 5c 06 	jmp	0xcb8	; 0xcb8 <__fp_inf>
 d80:	0c 94 62 06 	jmp	0xcc4	; 0xcc4 <__fp_nan>
 d84:	11 24       	eor	r1, r1
 d86:	0c 94 a7 06 	jmp	0xd4e	; 0xd4e <__fp_szero>

00000d8a <__mulsf3x>:
 d8a:	0e 94 84 06 	call	0xd08	; 0xd08 <__fp_split3>
 d8e:	70 f3       	brcs	.-36     	; 0xd6c <__mulsf3+0x8>

00000d90 <__mulsf3_pse>:
 d90:	95 9f       	mul	r25, r21
 d92:	c1 f3       	breq	.-16     	; 0xd84 <__mulsf3+0x20>
 d94:	95 0f       	add	r25, r21
 d96:	50 e0       	ldi	r21, 0x00	; 0
 d98:	55 1f       	adc	r21, r21
 d9a:	62 9f       	mul	r22, r18
 d9c:	f0 01       	movw	r30, r0
 d9e:	72 9f       	mul	r23, r18
 da0:	bb 27       	eor	r27, r27
 da2:	f0 0d       	add	r31, r0
 da4:	b1 1d       	adc	r27, r1
 da6:	63 9f       	mul	r22, r19
 da8:	aa 27       	eor	r26, r26
 daa:	f0 0d       	add	r31, r0
 dac:	b1 1d       	adc	r27, r1
 dae:	aa 1f       	adc	r26, r26
 db0:	64 9f       	mul	r22, r20
 db2:	66 27       	eor	r22, r22
 db4:	b0 0d       	add	r27, r0
 db6:	a1 1d       	adc	r26, r1
 db8:	66 1f       	adc	r22, r22
 dba:	82 9f       	mul	r24, r18
 dbc:	22 27       	eor	r18, r18
 dbe:	b0 0d       	add	r27, r0
 dc0:	a1 1d       	adc	r26, r1
 dc2:	62 1f       	adc	r22, r18
 dc4:	73 9f       	mul	r23, r19
 dc6:	b0 0d       	add	r27, r0
 dc8:	a1 1d       	adc	r26, r1
 dca:	62 1f       	adc	r22, r18
 dcc:	83 9f       	mul	r24, r19
 dce:	a0 0d       	add	r26, r0
 dd0:	61 1d       	adc	r22, r1
 dd2:	22 1f       	adc	r18, r18
 dd4:	74 9f       	mul	r23, r20
 dd6:	33 27       	eor	r19, r19
 dd8:	a0 0d       	add	r26, r0
 dda:	61 1d       	adc	r22, r1
 ddc:	23 1f       	adc	r18, r19
 dde:	84 9f       	mul	r24, r20
 de0:	60 0d       	add	r22, r0
 de2:	21 1d       	adc	r18, r1
 de4:	82 2f       	mov	r24, r18
 de6:	76 2f       	mov	r23, r22
 de8:	6a 2f       	mov	r22, r26
 dea:	11 24       	eor	r1, r1
 dec:	9f 57       	subi	r25, 0x7F	; 127
 dee:	50 40       	sbci	r21, 0x00	; 0
 df0:	9a f0       	brmi	.+38     	; 0xe18 <__mulsf3_pse+0x88>
 df2:	f1 f0       	breq	.+60     	; 0xe30 <__mulsf3_pse+0xa0>
 df4:	88 23       	and	r24, r24
 df6:	4a f0       	brmi	.+18     	; 0xe0a <__mulsf3_pse+0x7a>
 df8:	ee 0f       	add	r30, r30
 dfa:	ff 1f       	adc	r31, r31
 dfc:	bb 1f       	adc	r27, r27
 dfe:	66 1f       	adc	r22, r22
 e00:	77 1f       	adc	r23, r23
 e02:	88 1f       	adc	r24, r24
 e04:	91 50       	subi	r25, 0x01	; 1
 e06:	50 40       	sbci	r21, 0x00	; 0
 e08:	a9 f7       	brne	.-22     	; 0xdf4 <__mulsf3_pse+0x64>
 e0a:	9e 3f       	cpi	r25, 0xFE	; 254
 e0c:	51 05       	cpc	r21, r1
 e0e:	80 f0       	brcs	.+32     	; 0xe30 <__mulsf3_pse+0xa0>
 e10:	0c 94 5c 06 	jmp	0xcb8	; 0xcb8 <__fp_inf>
 e14:	0c 94 a7 06 	jmp	0xd4e	; 0xd4e <__fp_szero>
 e18:	5f 3f       	cpi	r21, 0xFF	; 255
 e1a:	e4 f3       	brlt	.-8      	; 0xe14 <__mulsf3_pse+0x84>
 e1c:	98 3e       	cpi	r25, 0xE8	; 232
 e1e:	d4 f3       	brlt	.-12     	; 0xe14 <__mulsf3_pse+0x84>
 e20:	86 95       	lsr	r24
 e22:	77 95       	ror	r23
 e24:	67 95       	ror	r22
 e26:	b7 95       	ror	r27
 e28:	f7 95       	ror	r31
 e2a:	e7 95       	ror	r30
 e2c:	9f 5f       	subi	r25, 0xFF	; 255
 e2e:	c1 f7       	brne	.-16     	; 0xe20 <__mulsf3_pse+0x90>
 e30:	fe 2b       	or	r31, r30
 e32:	88 0f       	add	r24, r24
 e34:	91 1d       	adc	r25, r1
 e36:	96 95       	lsr	r25
 e38:	87 95       	ror	r24
 e3a:	97 f9       	bld	r25, 7
 e3c:	08 95       	ret

00000e3e <__unordsf2>:
 e3e:	0e 94 38 06 	call	0xc70	; 0xc70 <__fp_cmp>
 e42:	88 0b       	sbc	r24, r24
 e44:	99 0b       	sbc	r25, r25
 e46:	08 95       	ret

00000e48 <__udivmodsi4>:
 e48:	a1 e2       	ldi	r26, 0x21	; 33
 e4a:	1a 2e       	mov	r1, r26
 e4c:	aa 1b       	sub	r26, r26
 e4e:	bb 1b       	sub	r27, r27
 e50:	fd 01       	movw	r30, r26
 e52:	0d c0       	rjmp	.+26     	; 0xe6e <__udivmodsi4_ep>

00000e54 <__udivmodsi4_loop>:
 e54:	aa 1f       	adc	r26, r26
 e56:	bb 1f       	adc	r27, r27
 e58:	ee 1f       	adc	r30, r30
 e5a:	ff 1f       	adc	r31, r31
 e5c:	a2 17       	cp	r26, r18
 e5e:	b3 07       	cpc	r27, r19
 e60:	e4 07       	cpc	r30, r20
 e62:	f5 07       	cpc	r31, r21
 e64:	20 f0       	brcs	.+8      	; 0xe6e <__udivmodsi4_ep>
 e66:	a2 1b       	sub	r26, r18
 e68:	b3 0b       	sbc	r27, r19
 e6a:	e4 0b       	sbc	r30, r20
 e6c:	f5 0b       	sbc	r31, r21

00000e6e <__udivmodsi4_ep>:
 e6e:	66 1f       	adc	r22, r22
 e70:	77 1f       	adc	r23, r23
 e72:	88 1f       	adc	r24, r24
 e74:	99 1f       	adc	r25, r25
 e76:	1a 94       	dec	r1
 e78:	69 f7       	brne	.-38     	; 0xe54 <__udivmodsi4_loop>
 e7a:	60 95       	com	r22
 e7c:	70 95       	com	r23
 e7e:	80 95       	com	r24
 e80:	90 95       	com	r25
 e82:	9b 01       	movw	r18, r22
 e84:	ac 01       	movw	r20, r24
 e86:	bd 01       	movw	r22, r26
 e88:	cf 01       	movw	r24, r30
 e8a:	08 95       	ret

00000e8c <__tablejump2__>:
 e8c:	ee 0f       	add	r30, r30
 e8e:	ff 1f       	adc	r31, r31
 e90:	05 90       	lpm	r0, Z+
 e92:	f4 91       	lpm	r31, Z
 e94:	e0 2d       	mov	r30, r0
 e96:	09 94       	ijmp

00000e98 <_exit>:
 e98:	f8 94       	cli

00000e9a <__stop_program>:
 e9a:	ff cf       	rjmp	.-2      	; 0xe9a <__stop_program>
