org 100h

.DATA
string db 'FARA, DIJNAS', 0 
newline db 0Dh, 0Ah, '$'

.CODE
 
MAIN PROC
    


    lea si, string 
    mov cx, 0
     
len_loop:

    cmp byte ptr [si], 0 
    je rev_start 
    inc si 
    inc cx
    jmp len_loop

rev_start:

    dec si 

rev_loop:

    mov dl, [si] 

    mov ah, 02h 
    int 21h

    dec si 
    loop rev_loop

    mov dx, offset newline
    mov ah, 09h
    int 21h

    mov ah, 4ch 
    int 21h

MAIN ENDP
END MAIN
