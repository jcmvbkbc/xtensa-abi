	.data
	.global	L3
	.type	L3, @object
L3:
	.long	0
	.size	L3, . - L3

	.text
	.global	f
	.type	f, @function
	.align	4
f:
	entry	a1, 32
	retw
	.size	f, . - f

	.global	f1
	.type	f1, @function
	.align	4
f1:
	entry	a1, 32
	retw
	.size	f1, . - f1

	.global	f2
	.type	f2, @function
	.align	4
f2:
	entry	a1, 32
	retw
	.size	f2, . - f2
