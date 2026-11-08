default rel
global main
extern puts

section .data
    msg db "Hello World!", 0

section .text
main:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    lea rax, [msg]
    mov rcx, rax
    call puts
    mov eax, 0
    add rsp, 32
    pop rbp
    ret