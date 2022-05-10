scene01:
    call draw_you
    call advance_music
    call draw_wouldnt
    call advance_music
draw_rclick:
    ld a, (image_rclick_width)
    ld (image_width), a
    ld a, (image_rclick_height)
    ld (image_height), a
    ld a, (image_rclick_x)
    ld (image_x), a
    ld a, (image_rclick_y)
    ld (image_y), a
    ld a, 5 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_rclick ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
    call draw_an
    call advance_music
draw_nft:
    ld a, (image_nft_width)
    ld (image_width), a
    ld a, (image_nft_height)
    ld (image_height), a
    ld a, (image_nft_x)
    ld (image_x), a
    ld a, (image_nft_y)
    ld (image_y), a
    ld a, 14 ; offset in X in blocks
    ld (image_offx), a
    ld a, 120
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_nft ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call advance_music
    ret