;external files include in c programming

%include "include.asm"
global _start

section .bss
section .data
    name db "Abdellah",0x0a,0x00
    len equ $-name
section .text
_start:
    
    push len
    push name
    call printname
    call exit

