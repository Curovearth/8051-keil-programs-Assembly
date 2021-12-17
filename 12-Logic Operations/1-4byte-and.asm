; 4byte 
mov r2,#40h 			; copy address location 40 into r2 
mov r3,#50h 			; copy address location 50 into r3 
mov r4,#60h 			; copy address location 60 into r4->result location 
mov r7,#04h 			; r7 acting as a counter 

L1: 	mov a,r2 
		mov r0,a 		; copy the data from r2 to r0(address of the first data)
		mov a,r3 
		mov r1,a 
		;mov r1,r3 		; copy the data from r3 to r1(address of the second data) 
		mov a,@r0 		; copy the data from address location stored r0 register
		anl a,@r1 		; AND the data where the address location stored in r1 with acc 
		mov b,r4 		; copy the data from r4 to r1(the address of the result)
		mov r1,b 		; result stored in result location
		mov @r1,a 
		inc r2 
		inc r3 
		inc r4 
		djnz r7, L1 
end 
	
	;INPUT = D:0x40h – 23 45 A2 9C and D:50h – 98 34 DC 04