assume cs:code, ds:data, ss:stack

data segment
    dw 1234h, 1235h, 1236h, 1237h, 1238h, 1239h, 123ah, 123bh
data ends

statck segment
    dw 0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h
stack ends

code segment
    start:  mov ax, data
            mov dx, ax
            mov ax, statck
            mov ss, ax
            mov sp, 10h
            mov bx, 0h
            mov cx, 8h
            s:  push [bx]
                add bx, 2
                loop s

    mov ax, 4200h
    int 21h
code ends
end start