;SWARUP TRIPATHY 19BEE0167
;Representing the number of rows in the location 30
;Representing the number of columns in the location 31
;Each matrix is having R7 elements
;implementing a counter m*n 32(1,1),33(2,1),34...
;[7 8 9] - [2 3 4] = [5 5 5]
;[7 8 9] - [2 3 4] = [5 5 5]
;[7 8 9] - [2 3 4] = [5 5 5]

   mov r0,#30h 
      mov a,@r0 
      inc r0 
      mov b,@r0 
      mul ab 
      mov r7,a 
      mov r6,a 
      mov b,#60h 
loop: inc r0 
      mov a,r0 
      add a,r7 
      mov r1,a 
      mov a,@r0 
      subb a,@r1 
      mov 20h,r0 
      mov r0,b 
      mov @r0,a 
      inc b 
      mov r0,20h 
      djnz r6,loop 
stop: sjmp stop 
      End 
