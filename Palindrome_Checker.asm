
  
org 100h

jmp start

msg1 db 'Enter a string: $'
msg2 db 13,10,'PALINDROME$'
msg3 db 13,10,'NOT A PALINDROME$'

strbuf db 30,0,30 dup(?)

start:

    ; Display input message
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    ; Read string
    mov dx, offset strbuf
    mov ah, 0Ah
    int 21h

    ; Get string length
    mov cl, [strbuf+1]
    mov ch, 0

    ; SI points to first character
    mov si, offset strbuf+2

    ; DI points to last character
    mov di, si
    add di, cx
    dec di

check_loop:

    ; Check whether pointers meet
    cmp si, di
    jae palindrome

    ; Compare characters
    mov al, [si]
    cmp al, [di]
    jne not_palindrome

    inc si
    dec di

    jmp check_loop

palindrome:

    mov dx, offset msg2
    mov ah, 09h
    int 21h
    jmp exit_program

not_palindrome:

    mov dx, offset msg3
    mov ah, 09h
    int 21h

exit_program:

    mov ah, 4Ch
    int 21h




