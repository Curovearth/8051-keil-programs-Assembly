;To show the stack and stack pointer 
;Assuming default stack area
;stack used for storing information temporarily
MOV R6,#25H
MOV R1,#12H
MOV R4,#0F3H
PUSH 6			;pushes the value 25h to 08h
PUSH 1			;pushes the value 12h to 09 
PUSH 4			;pushes the value 0f3h to 0A