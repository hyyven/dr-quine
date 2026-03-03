extern fopen
extern fprintf
extern fclose
extern sprintf
extern system
global main

main:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32

	mov		r12, 50
	cmp		r12, 0
	jl		.end

	lea		rdi, [rel f_name]
	lea		rsi, [rel fmt]
	mov		rdx, r12
	xor		rax, rax
	call	sprintf wrt ..plt

	lea		rdi, [rel f_name]
	lea		rsi, [rel mode]
	call	fopen wrt ..plt
	cmp		rax, 0
	je		.err
	mov		r13, rax

	mov		rdi, r13
	lea		rsi, [rel strr]
	mov		rdx, 10
	mov		rcx, 34
	lea		r8, [rel strr]
	lea		r9, [r12 - 1]
	xor		rax, rax
	call	fprintf wrt ..plt

	mov		rdi, r13
	call	fclose wrt ..plt

	lea		rdi, [rel cmd_run]
	lea		rsi, [rel fmt_cmd]
	mov		rdx, r12
	mov		rcx, r12
	mov		r8, r12
	xor		rax, rax
	call	sprintf wrt ..plt

	lea		rdi, [rel cmd_run]
	call	system wrt ..plt

.end:
	mov		rax, 0
	leave
	ret

.err:
	mov		rax, 1
	leave
	ret

section .data
	strr db "extern fopen%1$cextern fprintf%1$cextern fclose%1$cextern sprintf%1$cextern system%1$cglobal main%1$c%1$cmain:%1$c	push	rbp%1$c	mov		rbp, rsp%1$c	sub		rsp, 32%1$c%1$c	mov		r12, %4$d%1$c	cmp		r12, 0%1$c	jl		.end%1$c%1$c	lea		rdi, [rel f_name]%1$c	lea		rsi, [rel fmt]%1$c	mov		rdx, r12%1$c	xor		rax, rax%1$c	call	sprintf wrt ..plt%1$c%1$c	lea		rdi, [rel f_name]%1$c	lea		rsi, [rel mode]%1$c	call	fopen wrt ..plt%1$c	cmp		rax, 0%1$c	je		.err%1$c	mov		r13, rax%1$c%1$c	mov		rdi, r13%1$c	lea		rsi, [rel strr]%1$c	mov		rdx, 10%1$c	mov		rcx, 34%1$c	lea		r8, [rel strr]%1$c	lea		r9, [r12 - 1]%1$c	xor		rax, rax%1$c	call	fprintf wrt ..plt%1$c%1$c	mov		rdi, r13%1$c	call	fclose wrt ..plt%1$c%1$c	lea		rdi, [rel cmd_run]%1$c	lea		rsi, [rel fmt_cmd]%1$c	mov		rdx, r12%1$c	mov		rcx, r12%1$c	mov		r8, r12%1$c	xor		rax, rax%1$c	call	sprintf wrt ..plt%1$c%1$c	lea		rdi, [rel cmd_run]%1$c	call	system wrt ..plt%1$c%1$c.end:%1$c	mov		rax, 0%1$c	leave%1$c	ret%1$c%1$c.err:%1$c	mov		rax, 1%1$c	leave%1$c	ret%1$c%1$csection .data%1$c	strr db %2$c%3$s%2$c, 0%1$c	mode db %2$cw%2$c, 0%1$c	fmt db %2$cSully_%%d.s%2$c, 0%1$c	fmt_cmd db %2$cnasm -f elf64 Sully_%%1$d.s && gcc -o Sully_%%1$d Sully_%%1$d.o && rm Sully_%%1$d.o && ./Sully_%%1$d%2$c, 0%1$c%1$csection .bss%1$c	f_name resb 1024%1$c	cmd_run resb 1024", 0
	mode db "w", 0
	fmt db "Sully_%d.s", 0
	fmt_cmd db "nasm -f elf64 Sully_%1$d.s && gcc -o Sully_%1$d Sully_%1$d.o && rm Sully_%1$d.o && ./Sully_%1$d", 0

section .bss
	f_name resb 1024
	cmd_run resb 1024