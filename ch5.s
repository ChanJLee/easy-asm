assume cs: codeseg

codeseg segment
    mov ax, 1000H
    mov bx, 2000

    mov ax, 4c00h
    int 21h
codeseg ends

end