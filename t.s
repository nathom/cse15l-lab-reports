	.arch armv8-a
	.text
	.cstring
	.align	3
lC0:
	.ascii "\317\200^2/6 = %f\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 4,,11
	.globl _main
_main:
LFB1:
	sub	sp, sp, #32
LCFI0:
	movi	d1, #0
	mov	w1, 38528
	mov	w0, 1
	fmov	d2, 1.0e+0
	movk	w1, 0x98, lsl 16
	stp	x29, x30, [sp, 16]
LCFI1:
	add	x29, sp, 16
	.p2align 3,,7
L2:
	scvtf	d0, w0
	add	w0, w0, 1
	fmul	d0, d0, d0
	fdiv	d0, d2, d0
	fadd	d1, d1, d0
	cmp	w0, w1
	bne	L2
	adrp	x0, lC0@GOTPAGE
	str	d1, [sp]
	ldr	x0, [x0, lC0@GOTPAGEOFF];momd
	bl	_printf
	mov	w0, 0
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 32
LCFI2:
	ret
LFE1:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xdd
	.byte	0xde
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 11.2.0_3) 11.2.0"
	.subsections_via_symbols
