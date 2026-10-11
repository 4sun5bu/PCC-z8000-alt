! Shared PCC function entry/return for compiler-generated C.
! R8 holds frame size; R9 receives the helper return address.
! Both are call-clobbered. R0-R3 (including long/double return values)
! are untouched. FP and all callee-saved slots retain the standard ABI.
	.text
	.globl	_csv
	.globl	_cret
_csv:
	pop	r9,@sp
	push	@sp,r14
	ld	r14,sp
	sub	sp,r8
	ldm	-20(r14),r4,#10
	jp	@r9

_cret:
	ldm	r4,-20(r14), #10
	ld	sp,r14
	pop	r14,@sp
	ret
