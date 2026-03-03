extern	printf
global	main

; outside comment

section	.text
main:
	; inside comment
	xor		rax, rax
	push	rax
	lea		rdi, [rel s]
	mov		rsi, 10
	mov		rdx, 34
	lea		rcx, [rel s]
	call	_print
	pop		rax
	ret

_print:
	push	rbp
	call	printf wrt ..plt
	pop		rbp
	ret

section	.data
s db	"extern	printf%1$cglobal	main%1$c%1$c; outside comment%1$c%1$csection	.text%1$cmain:%1$c	; inside comment%1$c	xor		rax, rax%1$c	push	rax%1$c	lea		rdi, [rel s]%1$c	mov		rsi, 10%1$c	mov		rdx, 34%1$c	lea		rcx, [rel s]%1$c	call	_print%1$c	pop		rax%1$c	ret%1$c%1$c_print:%1$c	push	rbp%1$c	call	printf wrt ..plt%1$c	pop		rbp%1$c	ret%1$c%1$csection	.data%1$cs db	%2$c%3$s%2$c, 0", 0