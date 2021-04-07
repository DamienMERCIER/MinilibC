section .text
global memcpy

memcpy:
	xor rcx, rcx

loop:
    cmp rcx, rdx
    je stop
    mov r8b, BYTE[rsi + rcx]
    mov BYTE[rdi + rcx], r8b
    inc rcx
    jmp loop

stop:
    mov rax, rdi
	ret
