;19BEE0167 - SWARUP TRIPATHY

;How addition of two 8-bit numbers is done?
mov a, #67H
mov r0, #89H
add a,r0
end
;Resultant should be F0 = 240

;Implementation of 2*2 matrix addition

ORG 0000H				;the starting address location (0000h-0FFFh)
MOV R3,#02H				
MOV R0,#67H
MOV R1,#89H
REPEAT: MOV R2,#02H		;02H to be transferred again
