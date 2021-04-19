  
SECTION .text
global  _start
 
_start:
 
    mov     rax, 0          ; rax is initalised to zero.
 
nextNumber:
    inc     rax             ; increment rax
 
    mov     rax, rax        ; move the address of our integer into rax
    add     rax, 48         ; add 48 to our number to convert from integer to ascii for printing
    push    rax             ; push rax to the stack
    mov     rax, rsp        ; get the address of the character on the stack
    call    sprintLF        ; call our print function
 
    pop     rax             ; clean up the stack so we don't have unneeded bytes taking up space
    cmp     rax, 10         ; have we reached 10 yet? compare our counter with decimal 10
    jne     nextNumber      ; jump if not equal and keep counting
 
    call    quit

sprintLF:
    push rbp
    mov rbp,rsp
    mov rsi,rax
    mov rdx,0x01
    mov rax,0x01
    mov rdi,0x01
    syscall
    leave 
    ret
quit:
    push rbp
    mov rbp,rsp
    mov rax,0x03c
    mov rdi,0x01
    syscall
    leave 
    ret