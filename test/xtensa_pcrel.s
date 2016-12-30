	.global	_start
	.text
	.align	4
_start:
start:
	entry	a1, 32
	retw

	.data
g:
	.long	g@pcrel
	.long	g + 8@pcrel
	.long	start@pcrel
