	.global	_start
	.text
	.align	4
_start:
	entry	a1, 32

	movi	a8, f
	movi	a8, f1 + 4
	movi	a8, f
	movi	a8, f + 4
	movi	a8, g
	movi	a8, h

	.align	4
	.global	g
	.type	g, @function
g:
h:
	entry	a1, 32
	retw
	.size	g, . - g

	.data
	.global	d
d:
e:
	.long	f2
	.long	g
	.long	h

	.long	d
	.long	e
