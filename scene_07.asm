scene07:
draw_piracy:
    ld a, (image_piracy_width)
    ld (image_width), a
    ld a, (image_piracy_height)
    ld (image_height), a
    ld a, (image_piracy_x)
    ld (image_x), a
    ld a, (image_piracy_y)
    ld (image_y), a
    ld a, 1 ; offset in X in blocks
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_piracy ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
draw_itsa:
    ld a, (image_itsa_width)
    ld (image_width), a
    ld a, (image_itsa_height)
    ld (image_height), a
    ld a, (image_itsa_x)
    ld (image_x), a
    ld a, (image_itsa_y)
    ld (image_y), a
    ld a, 0 ; offset in X in blocks
    ld (image_offx), a
    ld a, 77
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_itsa ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
draw_crime:
    ld a, (image_crime_width)
    ld (image_width), a
    ld a, (image_crime_height)
    ld (image_height), a
    ld a, (image_crime_x)
    ld (image_x), a
    ld a, (image_crime_y)
    ld (image_y), a
    ld a, 10 ; offset in X in blocks
    ld (image_offx), a
    ld a, 72
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_crime ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
    ret