.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH, 1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'Y'
    JE L1
    
    CMP BL, 'y'
    JE L1 
    
    JMP EXIT_
    
    L1: 
    MOV AH,2
    MOV DL,BL
    INT 21H
    


EXIT_: 
MOV AH, 4CH
INT 21H

DISPLAY:

;INT 21H

MAIN ENDP
END MAIN