extern      _malloc
extern      _ft_strlen
extern      _ft_strcpy
global		_ft_strdup
section		.text

_ft_strdup:
            push    rdi
            call    _ft_strlen
            cmp     rax, 0
            jz      .error
            inc     rax
            mov     rdi, rax
            call    _malloc
            cmp     rax, 0
            jz      .error
            pop     rdi
            mov     rsi, rdi
            mov     rdi, rax
            call    _ft_strcpy
            mov     rax, rdi
            ret
.error:     
            pop     rdi
            ret
