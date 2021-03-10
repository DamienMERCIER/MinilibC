section .text
global strncmp
strncmp:
	xor rcx, rcx
    xor rax, rax
	jmp loop

loop:
	mov r8b, BYTE[rdi+rcx]
    mov r9b, BYTE[rsi+rcx]
    cmp rcx, rdx
    je stop
    cmp r8b, r9b
	jne validate
    cmp r8b, 0
    je stop
    inc rcx
    jmp loop

validate:
    sub r8b, r9b
    movsx rax, r8b
	ret
stop:
    mov rax, 0
    ret