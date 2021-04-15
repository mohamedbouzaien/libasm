section		.text
global		_ft_strlen

_ft_strlen:
	mov		rax, 0
	jmp		count

count:
	cmp		BYTE [rdi + rax]
	je		exit
	inc		rax
	jmp		count

exit:
	ret