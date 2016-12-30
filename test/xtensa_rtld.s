	.text
	.global	_start
	.align	4
_start:
	entry	a1, 32
	movi	a8, f@PLT
	callx8	a8
