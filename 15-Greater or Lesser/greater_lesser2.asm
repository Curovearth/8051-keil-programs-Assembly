		;SWARUP TRIPATHY - 19BEE0167
		
		mov dptr, #0100h ; get initial location
		mov r7, #20h ; counter used as index
		mov r4, #00h ; number counter
		mov r3,21h ; get the upper limit in 21h
		mov r2,20h ; get the lower limt in 20h

Nxt:	movx a, @dptr ; get the content in acc
		cjne a,21h,Lower ; check the upper limit first
		sjmp Out ; if number is equal

Lower: 	mov b,21h
		subb a,b
		jnc Out ; jump out
		movx a,@dptr
		cjne a,20h, Higher ; check lower limi
		sjmp Out ; if number is lower

Higher: mov b,20h
		movx a,@dptr
		subb a,b
		jc Out ; jump out
		inc r4 ; if number within limit increment count

Out: 	inc dptr ; get next location
		djnz r7, Nxt ; repeat until block completes