;subroutine

global _start
section .bss
section .data
    name db "Abdellah",0x0a,0x00
    len equ $-name
    surname db "Oulahyane",0x0a,0x00
    surlen equ $-surname
section .text
_start:

    mov rax,0x01
    mov rdi,0x01
    mov rsi,name
    mov rdx,len
    syscall
    jmp lab_surname
exit:
    mov rax,0x03c
    mov rdi,0x00
    syscall

lab_surname:
    mov rax,0x01
    mov rdi,0x01
    mov rsi,surname
    mov rdx,surlen
    syscall
    jmp exit