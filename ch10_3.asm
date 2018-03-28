assume cs:code

stack segment
    db 'ABCDEFGH'
stack ends

code segment
    start:  mov ax, stack
            mov ds, ax
            mov si, 0
            mov cx, 8

            call func

            mov ax, 4200h
            int 21h

    func:   mov ax, [si]
            add ax, 32
            mov [si], ax
            inc si
            loop func
            ret
code ends
end start