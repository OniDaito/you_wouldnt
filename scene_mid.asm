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
draw_zed:
    ld a, (image_zed_width)
    ld (image_width), a
    ld a, (image_zed_height)
    ld (image_height), a
    ld a, (image_zed_x)
    ld (image_x), a
    ld a, (image_zed_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_zed
    call draw_bitmap
    ret
draw_ripple:
    ld a, (image_ripple_width)
    ld (image_width), a
    ld a, (image_ripple_height)
    ld (image_height), a
    ld a, (image_ripple_x)
    ld (image_x), a
    ld a, (image_ripple_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_ripple
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
draw_bcleft:
    ld a, (image_bcleft_width)
    ld (image_width), a
    ld a, (image_bcleft_height)
    ld (image_height), a
    ld a, (image_bcleft_x)
    ld (image_x), a
    ld a, (image_bcleft_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_bcleft
    call draw_bitmap
    ret
draw_bcright:
    ld a, (image_bcright_width)
    ld (image_width), a
    ld a, (image_bcright_height)
    ld (image_height), a
    ld a, (image_bcright_x)
    ld (image_x), a
    ld a, (image_bcright_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_bcright
    call draw_bitmap
    ret
draw_plus:
    ld a, (image_plus_width)
    ld (image_width), a
    ld a, (image_plus_height)
    ld (image_height), a
    ld a, (image_plus_x)
    ld (image_x), a
    ld a, (image_plus_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_plus
    call draw_bitmap
    ret
draw_equals:
    ld a, (image_equals_width)
    ld (image_width), a
    ld a, (image_equals_height)
    ld (image_height), a
    ld a, (image_equals_x)
    ld (image_x), a
    ld a, (image_equals_y)
    ld (image_y), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_equals
    call draw_bitmap
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
    call advance_music
animate_snooze:
    ld a, 24
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_zed
    call advance_music
    call advance_music
    call draw_cursor_blank
    call advance_music
    call advance_music
    ld a, 24
    ld (image_offx), a
    ld a, 20
    ld (image_offy), a
    call draw_zed
    call advance_music
    call advance_music
    call draw_cursor_blank
    ld a, 24
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    call draw_zed
    call advance_music
    call advance_music
    call draw_cursor_blank
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
    call advance_music
    call advance_music
    call advance_music
; now draw the rod
    ld a, (image_rod_width)
    ld (image_width), a
    ld a, (image_rod_height)
    ld (image_height), a
    ld a, (image_rod_x)
    ld (image_x), a
    ld a, (image_rod_y)
    ld (image_y), a
    ld a, 24
    ld (image_offx), a
    ld a, 40
    ld (image_offy), a
    ld de, 0x4000
    call draw_set_pos
    ld bc, image_rod
    call draw_bitmap
    call advance_music

animate_ripple:
    ld a, 23
    ld (image_offx), a
    ld a, 94
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 99
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 104
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 94
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 109
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 99
    ld (image_offy), a
    call draw_ripple
    call advance_music
    ld a, 23
    ld (image_offx), a
    ld a, 114
    ld (image_offy), a
    call draw_ripple
    ret
draw_mid3:
    ld a, 1
    ld (image_offx), a
    ld a, 30
    ld (image_offy), a
    call draw_bcleft
    call advance_music
    call advance_music
    ; plus sign
    ld a, 8
    ld (image_offx), a
    ld a, 50
    ld (image_offy), a
    call draw_plus
    ; right hand
    call advance_music
    call advance_music
    ld a, 12
    ld (image_offx), a
    ld a, 30
    ld (image_offy), a
    call draw_bcright
    ; draw equals
    ld a, 18
    ld (image_offx), a
    ld a, 50
    ld (image_offy), a
    call draw_equals
    ; full coin
    call advance_music
    call advance_music
    ld a, 22
    ld (image_offx), a
    ld a, 30
    ld (image_offy), a
    call draw_bcleft
    ld a, 26
    ld (image_offx), a
    ld a, 30
    ld (image_offy), a
    call draw_bcright
    call advance_music
    call advance_music
    call advance_music
    ret