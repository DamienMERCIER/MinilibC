section .text
global memset

memset:
	xor rcx, rcx
	jmp loop

loop:
    cmp rcx, rdx
    je stop
    mov BYTE[rdi + rcx], sil
    inc rcx
    jmp loop

stop:
    mov rax, rdi
	ret