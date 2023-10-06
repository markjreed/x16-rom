;-----------------------------------------------------------------------------
; text_input.s
; Copyright (C) 2020 Frank van den Hoef
;-----------------------------------------------------------------------------

	.include "text_input.inc"

	.code

;-----------------------------------------------------------------------------
; to_lower
;-----------------------------------------------------------------------------
to_lower:
	; Lower case character?
	cmp #'A'
	bcc @done
	cmp #'Z'+1
	bcs @done

	; Make lowercase
	ora #$20
@done:	rts