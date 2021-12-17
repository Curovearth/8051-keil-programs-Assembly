mov r2,#40h ; copy address location 40 into r2 
mov r3,#50h ; copy address location 50 into r3 
mov r4,#60h ; copy address location 60 into r4->result location 
mov r7,#04h ; r7 acting as a counter 
L1: 	 mov a,r2 
		 mov r0,a ; copy the data from r2 to r0(address of the first data) 
		 mov a,@r0 ; copy the data from address location stored r0 register 
		 mov r0,a 
		 mov a,r3 
		 mov r1,a 
		 mov a,@r1 
		 XRL a,r0 
		 mov r0,a 
		 mov a,r4 
		 mov r1,a 
		 mov a,r0 
		 mov @r1,a 
		 inc r2 
		 inc r3 
		 inc r4 
		 djnz r7, L1 
end