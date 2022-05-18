; Drawing the NFT and the arrow
draw_cursor:
    ld a, (image_cursor_width)
    ld (image_width), a
    ld a, (image_cursor_height)
    ld (image_height), a
    ld a, (image_cursor_x)
    ld (image_x), a
    ld a, (image_cursor_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_cursor
    call draw_bitmap
    ret
draw_cursor_blank:
    ld a, (image_cursor_blank_width)
    ld (image_width), a
    ld a, (image_cursor_blank_height)
    ld (image_height), a
    ld a, (image_cursor_blank_x)
    ld (image_x), a
    ld a, (image_cursor_blank_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_cursor_blank
    call draw_bitmap
    ret
draw_cursor_click:
    ld a, (image_cursor_click_width)
    ld (image_width), a
    ld a, (image_cursor_click_height)
    ld (image_height), a
    ld a, (image_cursor_click_x)
    ld (image_x), a
    ld a, (image_cursor_click_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_cursor_click
    call draw_bitmap
    ret
draw_mid0:
    ld a, (image_mid0_width)
    ld (image_width), a
    ld a, (image_mid0_height)
    ld (image_height), a
    ld a, (image_mid0_x)
    ld (image_x), a
    ld a, (image_mid0_y)
    ld (image_y), a
    ld a, 1
    ld (image_offx), a
    ld a, 1
    ld (image_offy), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_mid0
    call draw_bitmap
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
animate_cursor:
    ld a, 24
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_cursor
    call advance_music
    call draw_cursor_blank
    call advance_music
    ld a, 20
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_cursor
    call advance_music
    call draw_cursor_blank
    call advance_music
    ld a, 16
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_cursor
    call advance_music
    call draw_cursor_blank
    call advance_music
    ld a, 12
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_cursor
    call advance_music
    call draw_cursor_blank
    call advance_music
    call draw_cursor_click
    ret
draw_mid1:
    ld a, (image_mid1_width)
    ld (image_width), a
    ld a, (image_mid1_height)
    ld (image_height), a
    ld a, (image_mid1_x)
    ld (image_x), a
    ld a, (image_mid1_y)
    ld (image_y), a
    ld a, 1
    ld (image_offx), a
    ld a, 1
    ld (image_offy), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_mid1
    call draw_bitmap
    ret
draw_mid2:
    ld a, (image_mid2_width)
    ld (image_width), a
    ld a, (image_mid2_height)
    ld (image_height), a
    ld a, (image_mid2_x)
    ld (image_x), a
    ld a, (image_mid2_y)
    ld (image_y), a
    ld a, 1
    ld (image_offx), a
    ld a, 1
    ld (image_offy), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_mid2
    call draw_bitmap
    ret