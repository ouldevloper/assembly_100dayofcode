;functions and passing arguments
global _start
section .data
    name db "abdellah",0x0a,0x00
    len equ $-name
section .text
_start:
    push len
    push name
    call print

    call exit
print:
    push rbp
    mov rbp,rsp
    mov rax,0x01
    mov rdi,0x01
    mov rsi,QWORD [rbp+16]
    mov rdx,QWORD [rbp+24]
    syscall
    leave
    ret 
exit:
    push rbp
    mov  rbp,rsp
    mov  rax,0x03c
    mov  rdi,0x000
    syscall
    leave
    ret