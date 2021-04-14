extern      ___error
global		_ft_write
section		.text

_ft_write:
			mov		    rax, 0x2000004
            syscall
            jf      .error
            jmp     .end
.error:     
            mov     
.end:
            ret
