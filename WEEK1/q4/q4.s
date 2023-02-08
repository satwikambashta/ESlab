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
	LDR R0,=ARR
	ADD R1,R0,#36
	MOV R2,#10
	MOV R5,#1
nes1 STR R5,[R0],#4
	ADD R5,#1
	SUBS R2,#1
	BNE nes1
	MOV R2,#4
	LDR R0,=ARR
nes2 LDR R3,[R0]
	LDR R4,[R1]
	STR R3,[R1],#-4
	STR R4,[R0],#4
	SUBS R2,#1
	BNE nes2
	
STOP
	B STOP

	AREA mydata,DATA,READWRITE
ARR DCD 0

	END