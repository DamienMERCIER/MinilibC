section .text
global strcmp
strcmp:
	xor rcx, rcx
    xor rax, rax
	jmp loop

loop:
	mov r8b, BYTE[rdi+rcx]
    mov r9b, BYTE[rsi+rcx]
    cmp r8b, r9b
	jne stop
    cmp r8b, 0
    je stop
    inc rcx
    jmp loop

stop:
    sub r8b, r9b
    movsx rax, r8b
	ret