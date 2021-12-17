;SWARUP TRIPATHY 19BEE0167

;Representing the number of rows in the location 30
;Representing the number of columns in the location 31
;Each matrix is having R7 elements
;implementing a counter m*n 32(1,1),33(2,1),34...
;[14 10 50] + [4 1 3] = [18 11 53]
;[17 09 20] + [2 6 8] = [19 15 28]

		MOV R0,#30H     	;pointing to first location
		MOV A,@R0;			;Getting the data to accumulator A=m
		INC R0;			
		MOV B,@R0;			;B=n
		MUL AB;				;A=mxn
		MOV R7,A;			;with reference to the second matrix
		MOV R6,A;			;With reference to count
		MOV B,#60H;		 	;result from 60 memory
LOOP:	INC R0;
		MOV A,R0;			;reference to 1st matrix
		ADD A,R7;          
		MOV R1,A ;			;reference to 2nd matrix
		MOV A,@R0;
		ADD A,@R1;
		MOV 20H,R0;			;saving to 20h location
		MOV R0,B;
		MOV @R0,A;
		INC B;
		MOV R0,20H;
		DJNZ R6,LOOP
STOP:	SJMP STOP;
		END;