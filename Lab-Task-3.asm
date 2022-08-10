.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
   
    MOV CX, 19         ;counter for FOR LOOP
    MOV AX, 100        ;adds the sum of series and store the result
    MOV BX, 100        ;used to move the series 3 steps forward forward
    
    LABEL:
    ADD AX, BX
    SUB BX, 3
    LOOP LABEL
    
    EXIT:
    MOV AH,4CH
    Int 21H
 MAIN ENDP
END MAIN