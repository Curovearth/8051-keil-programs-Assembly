MOV R0,#20H
MOV R2,#3
MOV A,@R0

HERE:	INC R0
		MOV 30H,@R0
		CJNE A,30H,NXT
		
NXT:	JC NXT_1
		MOV A,30H
		
NXT_1:	DJNZ R2,HERE
		MOV 26H,A
		END