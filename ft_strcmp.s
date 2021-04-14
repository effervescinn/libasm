global		_ft_strcmp
section		.text

_ft_strcmp:
			mov		rax, 0

.loop:
			cmp		byte [rdi], 0
			jz		.end
			cmp		byte [rsi], 0
			jz		.end
			mov		al, byte [rdi]
			cmp		al, byte [rsi]
			jnz		.end
			inc		rdi
			inc		rsi
			jmp		.loop
			
.end:		
			mov		dl, [rdi]
			sub		dl, [rsi]
			movsx		rax, dl
			ret
