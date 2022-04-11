	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	mov	w8, #38527
	movk	w8, #152, lsl #16
	fmov	d2, #1.00000000
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	fmul	d3, d2, d2
	fdiv	d3, d1, d3
	fadd	d0, d0, d3
	fadd	d2, d2, d1
	subs	w8, w8, #1
	b.ne	LBB0_1
; %bb.2:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\317\200^2/6 = %f\n"

.subsections_via_symbols
