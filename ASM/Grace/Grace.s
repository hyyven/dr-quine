; comment
extern	dprintf
global	main

%macro ft_open 0
	mov		rax, 2
	lea		rdi, [rel filename]
	mov		rsi, 0x241
	mov		rdx, 0644o
	syscall
%endmacro

%macro ft_close 1
	mov		rax, 3
	mov		rdi, %1
	syscall
%endmacro

%macro ft_write_to_file 1
	mov		rdi, %1
	lea		rsi, [rel strr]
	lea		rdx, [rel strr]
	mov		rcx, 10
	mov		r8, 34
	xor		rax, rax
	call	dprintf WRT ..plt
%endmacro

main:
	ft_open
	push				rax
	ft_write_to_file	rax
	pop					rax
	ft_close			rax
	xor					rax, rax
	ret

section .data
	filename db "Grace_kid.s", 0 
	strr db ";comment%2$cextern	dprintf%2$cglobal	main%2$c%2$c%%macro ft_open 0%2$c	mov		rax, 2%2$c	lea		rdi, [rel filename]%2$c	mov		rsi, 0x241%2$c	mov		rdx, 0644o%2$c	syscall%2$c%%endmacro%2$c%2$c%%macro ft_close 1%2$c	mov		rax, 3%2$c	mov		rdi, %%1%2$c	syscall%2$c%%endmacro%2$c%2$c%%macro ft_write_to_file 1%2$c	mov		rdi, %%1%2$c	lea		rsi, [rel strr]%2$c	lea		rdx, [rel strr]%2$c	mov		rcx, 10%2$c	mov		r8, 34%2$c	xor		rax, rax%2$c	call	dprintf WRT ..plt%2$c%%endmacro%2$c%2$cmain:%2$c	ft_open%2$c	push				rax%2$c	ft_write_to_file	rax%2$c	pop					rax%2$c	ft_close			rax%2$c	xor					rax, rax%2$c	ret%2$c%2$csection .data%2$c	filename db %3$cGrace_kid.s%3$c, 0 %2$c	strr db %3$c%1$s%3$c, 0", 0