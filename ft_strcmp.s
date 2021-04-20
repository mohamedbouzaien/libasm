section		.text
global		_ft_strcmp

_ft_strcmp_exit:
	sub		rax, rbx
	ret

_ft_strcmp:
	mov		al, [rdi]
	mov		bl, [rsi]
	cmp		al, 0
	je		_ft_strcmp_exit
	cmp		bl, 0
	je		_ft_strcmp_exit
	inc		rdi
	inc		rsi
	cmp		al, bl
	jne		_ft_strcmp_exit
	je		_ft_strcmp