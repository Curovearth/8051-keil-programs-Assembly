mov r0, #40h		;The ram address 40h is copy into the r0 register 
mov r1, #60h		; The ram address 60h is copied into the r1 register 
mov @r0, #65h		; The direct data 65h is copied into the address location of 40h  
mov a,@r0			; The value stored in the address location 40h is copied to A register  
mov @r1,a			;The value of A register is copied into RAM address location of 60h 
end 