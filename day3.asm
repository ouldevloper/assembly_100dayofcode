;      -  =   _  + 
global _start
section .data
    name db "abdellhall ! hello world how are yooou all mda9 mda7 ",0x0a,0x00
section .text
_start:
    mov rdx,name
    mov rax,rdx
startloop:
    cmp BYTE [rax],0x00
    jz finishloop
    inc rax
    jmp startloop
finishloop:
    sub rax,rdx
    mov rdx,rax
    mov rdi,0x01
    mov rax,0x01
    mov rsi,name
    syscall
    mov rax,0x03c
    mov rdi,0x001
    syscall