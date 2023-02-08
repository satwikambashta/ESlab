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


STOP
	B STOP

N1 DCD 12
N2 DCD 66
	AREA data,DATA, READWRITE

DST DCD 0

	END
	