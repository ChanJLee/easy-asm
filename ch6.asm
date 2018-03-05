assume cs: codeseg

codeseg segment
    mov ax, 2
    mov cx, 10
    s: add ax, ax
        loop s
    
    mov ax, 4200h
    int 21h
codeseg ends

end