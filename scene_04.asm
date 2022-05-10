scene04:
    call draw_you
    call advance_music
    call draw_wouldnt
    call advance_music
draw_funge:
    ld a, (image_funge_width)
    ld (image_width), a
    ld a, (image_funge_height)
    ld (image_height), a
    ld a, (image_funge_x)
    ld (image_x), a
    ld a, (image_funge_y)
    ld (image_y), a
    ld a, 5 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_funge ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
draw_a:
    ld a, (image_a_width)
    ld (image_width), a
    ld a, (image_a_height)
    ld (image_height), a
    ld a, (image_a_x)
    ld (image_x), a
    ld a, (image_a_y)
    ld (image_y), a
    ld a, 15 ; offset in X in blocks
    ld (image_offx), a
    ld a, 100
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_a ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
draw_token:
    ld a, (image_token_width)
    ld (image_width), a
    ld a, (image_token_height)
    ld (image_height), a
    ld a, (image_token_x)
    ld (image_x), a
    ld a, (image_token_y)
    ld (image_y), a
    ld a, 10 ; offset in X in blocks
    ld (image_offx), a
    ld a, 140
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_token ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
    ret