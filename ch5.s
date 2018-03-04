assume cs: codeseg

codeseg segment
    mov ax, 1000H
    mov bx, 2000H

    mov ax, 4c00H
    int 21h
codeseg ends

end