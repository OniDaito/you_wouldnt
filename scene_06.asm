scene06:
    call draw_theft_centre
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
draw_isagainst:
    ld a, (image_isagainst_width)
    ld (image_width), a
    ld a, (image_isagainst_height)
    ld (image_height), a
    ld a, (image_isagainst_x)
    ld (image_x), a
    ld a, (image_isagainst_y)
    ld (image_y), a
    ld a, 1 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_isagainst ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
draw_thelaw:
    ld a, (image_thelaw_width)
    ld (image_width), a
    ld a, (image_thelaw_height)
    ld (image_height), a
    ld a, (image_thelaw_x)
    ld (image_x), a
    ld a, (image_thelaw_y)
    ld (image_y), a
    ld a, 8 ; offset in X in blocks
    ld (image_offx), a
    ld a, 75
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_thelaw ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
    ret
