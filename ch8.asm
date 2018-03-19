assume cs:code

code segment
    start:
        mov ds:[0], 2
        mov ax, 4
        div ax

        mov dx, 2
        mov ax, 4
        mov ds:[1], 0
        div word ptr ds:[0]

        mov ax, 4200h
        int 21h
code ends

end start