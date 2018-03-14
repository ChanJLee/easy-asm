assume cs:code, ds:data

data segment
    db 'hello'
    db 'write'
data ends

code segment
    start:
        mov ax, data
        mov ds, ax
        mov bx, 0h
        mov si, 0ah
        mov cx, 0ah

        s:
            mov ax, [bx]
            mov [si], ax
            inc bx
            inc si
            loop s

        mov ax, 4200h
        int 21h
code ends

end start