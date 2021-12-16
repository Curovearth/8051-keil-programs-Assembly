;MOV R1,#20H
;MOV A,#03H
;ADD A,R1

ORG 0000H
	MOV R0,#03H		;move the value 3 to the register R0
	MOV A,#05H		;move the value 5 to the accumulator
	ADD A,00H		;add A value with R0 value and store the result in A
	END				;end the program