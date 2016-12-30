	.global	_start
	.text
	.align	4
_start:
	entry	a1, 32

	movi	a8, f@PLT
	movi	a8, f1 + 4@PLT
	movi	a8, f@PLT
	movi	a8, f + 4@PLT
	movi	a8, g@PLT

	.align	4
	.global	g
	.type	g, @function
g:
	entry	a1, 32
	retw
	.size	g, . - g

	.data
	.long	f2@PLT
