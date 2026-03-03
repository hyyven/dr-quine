







	; save caller's base pointer
	; set base pointer to current stack pointer
	; allocate 32 bytes on stack

	; initialize loop counter i = 5
	; compare i with 0
	; jump to .end if i <= 0
; sprintf(f_name, "Sully_%d.s", i)
	; arg1: destination buffer f_name
	; arg2: format string "Sully_%d.s"
	; arg3: i
	; clear rax
	; call sprintf
; FILE *f = fopen(f_name, "w")
	; arg1: filename path
	; arg2: mode "w"
	; call fopen
	; check if fopen returned NULL
	; jump to error handler if NULL
	; save FILE* pointer in register r13
; fprintf(f, strr, 10, 34, strr, i - 1)
	; arg1: FILE* stream
	; arg2: format string
	; arg3: newline (10)
	; arg4: double quote (34)
	; arg5: format string
	; arg6: i - 1
	; clear rax
	; call fprintf function
; fclose(f)
	; arg1: FILE* stream to close
	; call fclose function
; sprintf(cmd_run, fmt_cmd, i, i, i)
	; arg1: dest buffer cmd_run
	; arg2: format string for shell command
	; arg3: i (for output executable name)
	; arg4: i (for source file name)
	; arg5: i (for object file name)
	; clear rax
	; call sprintf function
; system(cmd_run)
	; arg1: command string to execute
	; call system function
	
	
	; return value 0 (success)
	; restore stack and base pointer
	; return from main


	; return value 1 (error)
	; restore stack and base pointer
	; return from main


















