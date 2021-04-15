extern      ___error
global		_ft_write
section		.text
_ft_write:
            push        rcx
			mov		    rax, 0x2000004
            syscall
            jc          .error
            jmp         .end
.error:
            mov         rcx, rax
            call        ___error
            mov         [rax], rcx
            mov         rax, -1
            jmp         .end
.end:
            pop         rcx
            ret