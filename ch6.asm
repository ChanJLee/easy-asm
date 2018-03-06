assume cs: codeseg

codeseg segment
    mov ax, 1000H
    mov ds, ax

    mov cx, 3H
    mov bx, 0H

    s:  mov ds:[bx], bx
        inc bx
        loop s

    a:  mov al, ds:[bx]
        mov ah, 0H
        add dx, ax
        inc bx
        loop a
    
    mov ax, 4200h
    int 21h
codeseg ends

end