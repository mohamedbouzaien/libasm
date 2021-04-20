section		.text
global		_ft_strlen

_ft_strlen:
	mov		rax, 0
	jmp		increment

increment:
	cmp		BYTE [rdi + rax], 0
	je		exit
	inc		rax
	jmp		increment

exit:
	ret
