	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors 
	DCD 0x10001000 ; stack pointer value when stack is empty
	DCD Reset_Handler ; reset vector
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=N1
	LDR R1,=N2
	LDR R2,[R0]
	LDR R3,[R1]
	MOV R4,#0
LOOP	cmp r2,r3
	BCC Store
	SUB R2,R3
	ADD R4,#1
	B LOOP
Store STR R4,[R6]
STOP 
	B STOP
N1 DCD 100
N2 DCD 20
	AREA mydata,DATA,READWRITE
	END