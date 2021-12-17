;Find the sum of the values 79H, F5H, E2H. Put the sum in registers R0(low byte) and R5(high byte)

		MOV A,#0		;A=0
		MOV R5,A		;clear R5
		ADD A,#79H		;A=0+79H
		JNC N_1			;if CY=0, add next number
		INC R5			;if CY=1, increment R5
N_1: 	ADD A,#0F5H		;A=79+F5=6E and CY=1
		JNC N_2			;jump if CY=0
		INC R5			;if CY=1, increment R5
N_2: 	ADD A,#0E2H		;A=6E+E2=50 and CY=1
		JNC OVER		;jump if CY=0
		INC R5			;if CY=1, increment 5
OVER: 	MOV R0,A		;now R0=50H and R5=02