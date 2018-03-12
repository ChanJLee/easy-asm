assume cs:code, ds:data

data segment
    db 'fuck'
    db 'mmll'
data ends

code segment
    start:  mov al, 'f'
            mov ah, 'u'

            mov ax, 4200h
            int 21h
code ends

end start