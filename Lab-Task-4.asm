.model small
.stack 100h
.data
msg dw 'Enter character:$'
.code
main proc
    mov ax, @data
    mov ds, ax                 ;initialize DS
    
    mov ah, 9                  ;assign value 9 in ah
    lea dx, msg                ;load and print msg
    int 21h  
    
    mov ah, 1                  ;assign value 1 in ah
    int 21h                    ;executed instruction
    
    mov bl, al
    mov cx, 50                 ;initialize cx
    
    top:                       ;loop label
    mov ah, 02                 ;set output function
    mov dl, bl
    int 21h
    
    loop top                   ;loop's condition
    
    exit:
    mov ah, 4ch                ;return control to DOS
    int 21h
    
    main endp
end main