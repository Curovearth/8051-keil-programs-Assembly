;if we want to repeat an action more times than 256, we use a loop inside a loop which is called nested Loop
;write a program to (a)load the accumulator with the value 55h and (b)complement the ACC 700 times

		MOV A,#55H		;A=55h
		MOV R3,#10		;R3=10, Outer loop count
NEXT:	MOV R2,#70		;R2=70, inner loop count
AGAIN:	CPL A			;complement A register
		DJNZ R2,AGAIN	;repeat it 70 times
		DJNZ R3,NEXT