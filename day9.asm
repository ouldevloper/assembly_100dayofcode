; BSS intro
%macro println 0
    mov rax,0x01
    mov rdi,0x01
    mov rsi,0x0a
    mov rdx,0x01
    syscall 
%endmacro
global _start
section .data
    msg10 db "Enter Your name : ",0x00 
    len10 equ $-msg10
    msg20 db "Enter Your group : ",0x00 
    len20 equ $-msg20
    msg30 db "Enter Your age : ",0x00 
    len30 equ $-msg30

    msg1 db "Your name : ",0x00 
    len1 equ $-msg1
    msg2 db "Your group is : ",0x00
    len2 equ $-msg2
    msg3 db "Your age is : ",0x00
    len3 equ $-msg3
    
section .bss
    name resb 18
    group resb 16
    age resb 4
section .data
section .text
_start:
    push len10
    push msg10
    call print
    push 0x018
    push name
    call frominput
    println

    push len20
    push msg20
    call print
    push 0x016
    push group
    call frominput
    println

    push len30
    push msg30
    call print
    push 0x018
    push age
    call frominput
    println

    push len1
    push msg1
    call print
    push len1
    push name
    call print
    println

    push len2
    push msg2
    call print
    push len2
    push group
    call print
    println

    push len3
    push msg3
    call print
    push len3
    push age
    call print
    println

    ;exit
    mov rax,0x03c
    mov rdi,0x00
    syscall

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

frominput:
    push rbp
    mov rbp,rsp
    mov rax,0x00
    mov rdi,0x00
    mov rsi,QWORD [rbp+16]
    mov rdx,QWORD [rbp+24]
    syscall
    mov rax,rsi
    leave
    ret
