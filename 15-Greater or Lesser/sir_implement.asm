MOV          dptr, #0100h            ; get initial location

                        MOV          r7, #20h                   ; counter used as index

                        MOV          r4, #00h                   ; number counter

                        MOV          20h, r2                     ; get the lower limt in 20h

                        MOV          21h, r3                     ; get the upper limit in 21h

            Nxt:      MOVX        a, @dptr                  ; get the content in acc

                        CJNE         a, 21h, Lower          ; check the upper limit first

                        SJMP         Out                          ; if number is equal

            Lower: JNC            Out                           ; jump out

                        CJNE         a, 20h, Higher          ; check lower limit

                        SJMP         Out                          ; if number is lower

            Higher:JC              Out                          ; jump out

                        INC            r4                           ; if number within limit increment count

            Out:     INC             dptr                         ; get next location

                        DJNZ         r7, Nxt                      ; repeat until block completes

                        END