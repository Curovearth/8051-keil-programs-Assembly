;SWARUP TRIPATHY - 19BEE0167

MOV dptr,#0100h				;get initial location
MOV r7,#20h					;counter
MOV r4,#00h					;number counter
MOV 20h,r2					;get the lower limit here in 20th location
MOV 21h,r3					;get the Upper Limit here in 21st location

Nxt:	MOVX a,@dptr
		CJNE a,21h,lower	;check the upper limit first
		SJMP out			;if number is larger
		
Lower:	JNC out				;jump out
		CJNE a,20h,higher	;check lower limit
		SJMP out			;if number is equal
		
Higher:	JC out				;jump out
		INC r4				;if number within limit increment
		
out: 	INC dptr			;get next location
		DJNZ r7,nxt			;repeat until block completes
		END