section .text
global strchr

strchr:
	xor rax, rax
	jmp loop

loop:
    cmp BYTE[rdi], sil
    je stop
    cmp BYTE[rdi], 0x00
    je validate
    inc rdi
    jmp loop

stop:
    mov rax, rdi
	ret

validate:
mov rax, 0
ret