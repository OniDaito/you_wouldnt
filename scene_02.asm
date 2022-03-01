scene02:
    call draw_you
    call draw_wouldnt
draw_bore:
    ld a, (image_bore_width)
    ld (image_width), a
    ld a, (image_bore_height)
    ld (image_height), a
    ld a, (image_bore_x)
    ld (image_x), a
    ld a, (image_bore_y)
    ld (image_y), a
    ld a, 5 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_bore ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call draw_an
draw_ape:
    ld a, (image_ape_width)
    ld (image_width), a
    ld a, (image_ape_height)
    ld (image_height), a
    ld a, (image_ape_x)
    ld (image_x), a
    ld a, (image_ape_y)
    ld (image_y), a
    ld a, 14 ; offset in X in blocks
    ld (image_offx), a
    ld a, 120
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_ape ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    ret