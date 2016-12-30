	.global	L2
	.data
	.long	.L1
	.long	.L1 + 1
	.long	L2
	.long	L2 + 1
	.long	L3
	.long	L3 + 1
	.long	L4
	.long	L4 + 1
	.long	.L5
	.long	.L5 + 1
	.long	.L6
	.long	.L6 + 1
.L1:
	.long	0x1234
L2:
	.long	0x2345
L4:
	.weak	L4
	.long	0x3456

	.section ".data1"

.L5:
	.long	0x4567

	.text
	.global	_start
_start:
f:
	nop
.L6:
	nop
