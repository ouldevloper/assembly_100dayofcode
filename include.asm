printname:
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
    mov rbp,rsp
    mov rax,0x03c
    mov rdi,0x00
    syscall
    leave 
    ret