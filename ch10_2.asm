assume cs:code

stack segment
    dw 1, 2, 3, 4, 5, 6, 7, 8
    dd 0, 0, 0, 0, 0, 0, 0, 0
stack ends

code segment
    start:  mov ax, stack
            mov ds, ax

            mov si, 0
            mov di, 16

            mov cx, 3

        s:  mov bx, ds:[si]
            call f
            mov ds:[di], ax
            mov ds:[di + 2], dx
            add si, 2
            add di, 4
            loop s

            mov ax, 4200h
            int 21h

        f:  mov ax, bx
            mul bx
            mul bx
            ret
code ends
end start