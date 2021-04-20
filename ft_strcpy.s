section     .text
global      _ft_strcpy

copy_loop:
    mov     cl, [rsi]
    mov     [rdi], cl
    inc     rdx
    inc     rdi
    inc     rsi
    cmp     cl, 0
    jne     copy_loop
    ret

_ft_strcpy:
    mov     rdx, 0
    call    copy_loop
    sub     rdi, rdx
    mov     rax, rdi
    ret
