section .text
global strlen

strlen:
	xor rax, rax
	cmp BYTE[rdi], 0x00
	je stop
	jmp loop

loop:
	inc rdi
	inc rax
	cmp BYTE[rdi], 0
	jne loop

stop:
	ret