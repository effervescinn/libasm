global		_ft_strlen
section		.text

_ft_strlen:
			mov		rcx, 0

.loop:
			cmp		byte [rdi], 0
			jz		.end
			inc		rdi
			inc		rcx
			jmp		.loop
.end:		
			mov		rax, rcx
			ret
