;      -  =   _  + 

global _start 
section .data
    name db "Abdellah!",0x0a,0x00
    len equ $-name
section .text 
_start:
    mov rax,0x01
    mov rdi,0x01
    mov rsi,name
    mov rdx,len
    syscall

    mov rax,0x3c
    mov rdi,0x010
    syscall
