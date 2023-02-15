	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors 
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
		
Reset_Handler
	LDR R0,=N1
	LDR R3,=DST
	LDRB R1,[R0]
	AND R2,R1,#0xF0
	LSR R2,#04
	CMP R2,#09
	BCC jump
	ADD R2,#0x07
	
jump ADD R2,#0x30
	STRB R2,[R3],#1
	AND R4,R1,#0x0F
	ADD R4,#0x30
	STRB R4,[R3]
STOP 
	B STOP
	
N1 DCD 0x43
	AREA mydata, DATA, READWRITE
DST DCD 0
	END