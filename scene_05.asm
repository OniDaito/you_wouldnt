scene05:
draw_screenshotting:
    ld a, (image_screenshot_width)
    ld (image_width), a
    ld a, (image_screenshot_height)
    ld (image_height), a
    ld a, (image_screenshot_x)
    ld (image_x), a
    ld a, (image_screenshot_y)
    ld (image_y), a
    ld a, 1 ; offset in X in blocks
    ld (image_offx), a
    ld a, 60
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_screenshot ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
    call pauseword
    call pauseword
    call clearscreen
draw_an_centre:
    ld a, (image_an_width)
    ld (image_width), a
    ld a, (image_an_height)
    ld (image_height), a
    ld a, (image_an_x)
    ld (image_x), a
    ld a, (image_an_y)
    ld (image_y), a
    ld a, 16 ; offset in X in blocks
    ld (image_offx), a
    ld a, 75
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_an ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
    call pauseword
    call pauseword
    call clearscreen
draw_nft_centre:
    ld a, (image_nft_width)
    ld (image_width), a
    ld a, (image_nft_height)
    ld (image_height), a
    ld a, (image_nft_x)
    ld (image_x), a
    ld a, (image_nft_y)
    ld (image_y), a
    ld a, 12 ; offset in X in blocks
    ld (image_offx), a
    ld a, 70
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_nft ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
    call pauseword
    call pauseword
    call clearscreen
draw_is_centre:
    ld a, (image_is_width)
    ld (image_width), a
    ld a, (image_is_height)
    ld (image_height), a
    ld a, (image_is_x)
    ld (image_x), a
    ld a, (image_is_y)
    ld (image_y), a
    ld a, 15 ; offset in X in blocks
    ld (image_offx), a
    ld a, 65
    ld (image_offy), a ; offset in Y in lines
    ld de, 0x4000 ; load de with the screen memory positions first
    call draw_set_pos
    ld bc, image_is ; load the bc with the image data
    ; Now make the call
    call draw_bitmap
    call pauseword
    call pauseword
    call pauseword
    call clearscreen
    call draw_theft_centre
    ret