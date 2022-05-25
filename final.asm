write_release:
    ld bc, release_text
    ld de, 16384
    call write_loop
    ret

write_date:
    ld bc, date_text
    ld de, 2000
    call write_loop
    ret

write_emf:
    ld bc, emf_text
    ld de, 2000
    call write_loop
    ret

write_graphics_creds:
    ld bc, graphics_text
    ld de, 2000
    call write_loop
    ret

write_music_creds:
    ld bc, music_text
    ld de, 2000
    call write_loop
    ret

write_greets:
    ld bc, greets_text
    ld de, 2000
    call write_loop
    ret

write_loop
    ld a, (bc)
    cp 0
    jr z, write_exit
    rst $10
    inc bc
    inc de
    jr write_loop

write_exit:
    ret

release_text:
    defb "         You wouldn't..."
    defb 13, 13, 13, 0 

date_text:
    defb "   A demo released at FieldFX"
    defb 13, 0 

emf_text:
    defb "         EMFCamp - 2022"
    defb 13, 13, 0

graphics_text:
    defb "     Coding/Graphics - Oni"
    defb 13, 0

music_text:
    defb "           Music - KT"
    defb 13, 13, 0 

greets_text:
    defb "    Greets - Bossman, Gasman"
    defb 13, 0