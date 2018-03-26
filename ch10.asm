assume cs:code

stack segment
    db 16 dump(0)
stack ends

code segment
    mov ax, 4200h
    int 21h

    start:
        mov ax, 16
        mov sp, ax
        mov ax, stack
        mov ss, ax
        mov ax, 0
        push ax
        ret
code ends
end start