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
	LDR R1,=N2
	LDR R2,[R0]
	LDR R2,[R1]
	LDR R4,=DST
	MOV R5,#4
	MOV R6,#0
	ADDS R2,R6
UP MOV R6,#0
	ADC R6,#0
	LDR R2,[R4],#4
	LDR R2,[R0,#4]!
	LDR R2,[R1,#4]!
	SUBS R5,#1
	BNE UP
	STR R6,[R4]
	
STOP
	B STOP

N1 DCD 1,2,3,4
N2 DCD 6,7,8,9
	AREA data,DATA, READWRITE

DST DCD 0

	END