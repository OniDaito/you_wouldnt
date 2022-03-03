scene03:
    call draw_you
    call draw_wouldnt
draw_phish:
    ld a, (image_phish_width)
    ld (image_width), a
    ld a, (image_phish_height)
    ld (image_height), a
    ld a, (image_phish_x)
    ld (image_x), a
    ld a, (image_phish_y)
    ld (image_y), a
    ld a, 5 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_phish ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
draw_inthe:
    ld a, (image_inthe_width)
    ld (image_width), a
    ld a, (image_inthe_height)
    ld (image_height), a
    ld a, (image_inthe_x)
    ld (image_x), a
    ld a, (image_inthe_y)
    ld (image_y), a
    ld a, 15 ; offset in X in blocks
    ld (image_offx), a
    ld a, 100
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_inthe ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
draw_opensea:
    ld a, (image_opensea_width)
    ld (image_width), a
    ld a, (image_opensea_height)
    ld (image_height), a
    ld a, (image_opensea_x)
    ld (image_x), a
    ld a, (image_opensea_y)
    ld (image_y), a
    ld a, 10 ; offset in X in blocks
    ld (image_offx), a
    ld a, 140
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_opensea ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret