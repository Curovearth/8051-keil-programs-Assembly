; Square WAVE GENERATION
; SWARUP TRIPATHY - 19BEE0167
ORG 00H
AGAIN: 	MOV DPTR,#VOLTDAC
		MOV R2, #24
		MOV R3,#24
BACK: 	CLR A
		MOVC A,@A+DPTR
		MOV P3, A
		MOV A,R3
		MOVC A,@A+DPTR
		MOV P2,A	
		INC DPTR
		DJNZ R2, BACK
		SJMP AGAIN

ORG 30H
VOLTDAC: 
		 DB 0,255,255,255,255,0,255,255,255,255,0,255,255,255,255,0,255,255,255,255,0,255,255,255
			

		END
