ORG 00H 
AGAIN:		MOV DPTR,#VOLTDAC 
			MOV R2, #24 
			MOV R3,#24 
BACK: 		CLR A 
			MOVC A,@A+DPTR 
			MOV P3, A 
			MOV A,R3 
			MOVC A,@A+DPTR 
			MOV P2,A 
			INC DPTR 
			DJNZ R2, BACK 
			SJMP AGAIN 
			ORG 30H 
VOLTDAC: 	DB 128,161,192,219,238, 244,255,244,238,219,192,161,128 
			DB 95, 64, 38, 17, 4, 0, 4, 17, 38, 64, 95 
 
			DB 255,244,238,219, 192,161,128,95,64, 38,17,4,0,4,17,38,64,95,128,161,192,219,238,244 
			DB 128, 161, 192, 219, 238, 244 
 END