ORG 0000H
	MOV R1,#06H
	MOV A,#07H
	SUBB A,R1		;tends to subtract R1 from A ie. A-R1
	END