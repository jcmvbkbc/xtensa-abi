	.file	"xtensa_tls.c"
	.global	g1
	.section	.tbss,"awT",@nobits
	.align	4
	.type	g1, @object
	.size	g1, 4
g1:
	.zero	4
	.global	g2
	.align	4
	.type	g2, @object
	.size	g2, 4
g2:
	.zero	4
	.align	4
	.type	s1, @object
	.size	s1, 4
s1:
	.zero	4
	.align	4
	.type	s2, @object
	.size	s2, 4
s2:
	.zero	4
	.text
	.literal_position
	.literal .LC0, f@PLT
	.align	4
	.global	g
	.type	g, @function
g:
	entry	sp, 32
	mov.n	a7, sp
	movi	a2, g1@TLSFUNC
	movi	a3, g1@TLSARG
	mov.n	a10, a3
	callx8.tls a2, g1@TLSCALL
	mov.n	a2, a10
	mov.n	a10, a2
	l32r	a2, .LC0
	callx8	a2
	movi	a2, g2@TLSFUNC
	movi	a3, g2@TLSARG
	mov.n	a10, a3
	callx8.tls a2, g2@TLSCALL
	mov.n	a2, a10
	mov.n	a10, a2
	l32r	a2, .LC0
	callx8	a2
	movi	a2, s1@TLSFUNC
	movi	a3, s1@TLSARG
	mov.n	a10, a3
	callx8.tls a2, s1@TLSCALL
	mov.n	a2, a10
	mov.n	a10, a2
	l32r	a2, .LC0
	callx8	a2
	movi	a2, s2@TLSFUNC
	movi	a3, s2@TLSARG
	mov.n	a10, a3
	callx8.tls a2, s2@TLSCALL
	mov.n	a2, a10
	mov.n	a10, a2
	l32r	a2, .LC0
	callx8	a2
	nop.n
	retw.n
	.size	g, .-g
	.align	4
	.global	f
	.type	f, @function
f:
	entry	sp, 48
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	nop.n
	retw.n
	.size	f, .-f
	.literal_position
	.literal .LC1, g@PLT
	.align	4
	.global	_start
	.type	_start, @function
_start:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a2, .LC1
	callx8	a2
	nop.n
	retw.n
	.size	_start, .-_start
	.ident	"GCC: (Buildroot 2016.08-git-00142-gb52b1dc-dirty) 6.1.0"
