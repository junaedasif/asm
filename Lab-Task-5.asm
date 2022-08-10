.MODEL SMALL
.STACK 100H
.DATA  
.CODE

MAIN PROC

	MOV AH,2            ; display character function
	MOV DL,'?'          ; character is ‘?’
	INT 21H             ; display the DL char (?)

	MOV AH,1            ; read character function
	INT 21H             ; character is in AL
	MOV BL,AL  
	
	MOV AH,1            ; read character function
	INT 21H             ; character is in AL
	MOV CL,AL 
                  
    MOV AH,2 		    ; display character function
    MOV DL,0Dh 	        ; carriage return
    INT 21H 		    ; execute carriage return
    MOV DL,0AH 	        ; line feed to display
    INT 21H 		    ; execute Line feed
                        ; display character  


    MOV DL, CL 		    ; retrieve character  
    INT 21H
    MOV DL, BL 		    ; retrieve character 
                     

    INT 21H
                        ;return to DOS
    MOV AH,4CH          ; terminate the currant process and   transfer  
    INT 21H             ; termination the execution of program 
		
    MAIN ENDP
END MAIN
