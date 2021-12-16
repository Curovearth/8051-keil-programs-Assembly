;This program adds value 3 to the ACC ten times

		MOV A,#0		;A=0 clear ACC
		MOV R2,#10		;load counter R2=10
AGAIN:	ADD A,#03		;add 03 to ACC
		DJNZ R2,AGAIN	;repeat untill R2=0, 10 times
		MOV R5,A		;save A in R5