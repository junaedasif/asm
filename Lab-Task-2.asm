.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
   
    MOV CX, 50         ;counter for FOR LOOP
    MOV BX, 1        ;adds the sum of series and store the result
    MOV DX, 1        
    
    LABEL:
    ADD DX, BX
    SUB BX, 4
    LOOP LABEL
    
    EXIT:
    MOV AH,4CH
    Int 21H
 MAIN ENDP
END MAIN