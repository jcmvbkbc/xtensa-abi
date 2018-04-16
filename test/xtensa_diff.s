	.section .data1
	.space	1
.La:
	.space	2
.Lb:
	.space	3
	.align	8
.Lc:
	.space	4

	.section .data2
	.space	1
la:
	.space	2
lb:
	.space	3
	.align	8
lc:
	.space	4

	.section .data3
	.space	1
	.global	ga
ga:
la3:
	.space	2
	.global	gb
gb:
lb3:
	.space	3
	.align	8
	.global	gc
gc:
lc3:
	.space	4
	.data

	.byte	.Lb - .La
	.byte	.Lb - .Lc
	.byte	lb - la
	.byte	lb - lc
	.byte	gb - ga
	.byte	gb - gc
	.byte	gb - la3
	.byte	lb3 - ga

	.short	.Lb - .La
	.short	.Lb - .Lc
	.short	lb - la
	.short	lb - lc
	.short	gb - ga
	.short	gb - gc

	.word	.Lb - .La
	.word	.Lb - .Lc
	.word	lb - la
	.word	lb - lc
	.word	gb - ga
	.word	gb - gc

	.word	cb - ca

	.text
	.global	_start
	.align	4
_start:
	call0	1f
	nop
	nop
	nop
	.align	4
1:
ca:
	call0	2f
cb:
	ret

	.section .text.unlikely
	.align	4
2:
	ret
