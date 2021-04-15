extern      ___error
global		_ft_read
section		.text
_ft_read:
            push        rcx
			mov		    rax, 0x2000003
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