draw_you:
    ld a, (image_you_width)
    ld (image_width), a
    ld a, (image_you_height)
    ld (image_height), a
    ld a, (image_you_x)
    ld (image_x), a
    ld a, (image_you_y)
    ld (image_y), a
    ld a, 1 ; offset in X in blocks
    ld (image_offx), a
    ld a, 15
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_you ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret
draw_wouldnt:
    ld a, (image_wouldnt_width)
    ld (image_width), a
    ld a, (image_wouldnt_height)
    ld (image_height), a
    ld a, (image_wouldnt_x)
    ld (image_x), a
    ld a, (image_wouldnt_y)
    ld (image_y), a
    ld a, 10 ; offset in X in blocks
    ld (image_offx), a
    ld a, 20
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_wouldnt ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret
draw_an:
    ld a, (image_an_width)
    ld (image_width), a
    ld a, (image_an_height)
    ld (image_height), a
    ld a, (image_an_x)
    ld (image_x), a
    ld a, (image_an_y)
    ld (image_y), a
    ld a, 12 ; offset in X in blocks
    ld (image_offx), a
    ld a, 100
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_an ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret

draw_theft_centre:
    ld a, (image_theft_width)
    ld (image_width), a
    ld a, (image_theft_height)
    ld (image_height), a
    ld a, (image_theft_x)
    ld (image_x), a
    ld a, (image_theft_y)
    ld (image_y), a
    ld a, 6 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_theft ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret

; https://github.com/breakintoprogram/lib-spectrum/blob/master/lib/output.z80
clearscreen:		
	LD HL,16384			; Start address of screen bitmap
	LD DE,16385			; Address + 1
	LD BC,6144			; Length of bitmap memory to clear
	LD (HL),0			; Set the first byte to 0
	LDIR				; Copy this byte to the second, and so on
    ; For some reason, these lines don't work with this?
	;LD BC,767			; Length of attribute memory, less one to clear
	;LD (HL),A			; Set the first byte to A
	;LDIR				; Copy this byte to the second, and so on
	RET

; pause for sometime
pausescene:
    ld bc, 65536
pauseloop:
    dec bc
    ld a, b
    cp 0
    jr nz, pauseloop
    ld a, c
    cp 0
    jr nz, pauseloop
    ret
pauseword:
    ld bc, 30000
    call pauseloop
    ret