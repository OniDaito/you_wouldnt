; You Wouldn't. A ZX Spectrum Demo
org $8000
; Some handy screen constants we might need
include "./lib/constants.asm"

start
    ; the main scene with the various timings
    ld a, black | white | bright
    call cls_attributes
    call clearscreen
    ld hl,noteGS1
    ld b, 512
    call bend_loop
    call start_music
    call scene01
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call draw_mid0
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call scene02
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call draw_mid1
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call scene03
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call draw_mid2
    call advance_music
    call clearscreen
    call scene04
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call draw_mid3
    call advance_music
    call clearscreen
    ; Should be halfway through the music ideally
	ld e,250
    ld hl,0   
    call noise
    ld e,250
    call noise
    ld e,250
    call noise

    call scene05
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call scene06
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call clearscreen
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call advance_music
    call scene07
    call advance_music
    call advance_music
    call advance_music  
    ld hl,noteG0
    ld b, 512
    call bend_loop
    ld e,250
    ld hl,0   
    call noise
    call clearscreen
    call pausescene
    call write_release
    call pausescene
    call pausescene
    call pausescene
    call write_date
    call pausescene
    call write_emf
    call pausescene
    call pausescene
    call write_graphics_creds
    call pausescene
    call pausescene
    call write_music_creds
    call pausescene
    call pausescene
    call write_greets
    call pausescene
    call pausescene
    call pausescene
    call clearscreen
    ret

; This sets attributes for the whole screen
; looks like this ldir bc de trick copies a value multiple times.
cls_attributes:        
    ld hl, attr_start               ; start at attribute start
    ld de, attr_start + 1           ; copy to next address in attributes
    ld bc, attributes_length - 1    ; 'loop' attribute size minus 1 times
    ld (hl), a                      ; initialize the first attribute
    ldir                            ; fill the attributes
    ret

; Load the scenes
include "./scene_shared.asm"
include "./scene_01.asm"
include "./scene_02.asm"
include "./scene_03.asm"
include "./scene_04.asm"
include "./scene_05.asm"
include "./scene_06.asm"
include "./scene_07.asm"
include "./scene_mid.asm"
; music
include "./music.asm"
; Load the library functions
include "./lib/upde.asm"
include "./lib/sound.asm"
include "./lib/draw_bitmap.asm"
; Load in the images
include "./images/you.asm"
include "./images/wouldnt.asm"
include "./images/rclick.asm"
include "./images/an.asm"
include "./images/nft.asm"
include "./images/phish.asm"
include "./images/inthe.asm"
include "./images/opensea.asm"
include "./images/bore.asm"
include "./images/ape.asm"
include "./images/funge.asm"
include "./images/a.asm"
include "./images/token.asm"
include "./images/screenshot.asm"
include "./images/is.asm"
include "./images/theft.asm"
include "./images/isagainst.asm"
include "./images/thelaw.asm"
include "./images/piracy.asm"
include "./images/itsa.asm"
include "./images/crime.asm"
include "./images/mid0.asm"
include "./images/cursor.asm"
include "./images/cursor_blank.asm"
include "./images/cursor_click.asm"
include "./images/zed.asm"
include "./images/ripple.asm"
include "./images/rod.asm"
include "./images/bcright.asm"
include "./images/bcleft.asm"
include "./images/plus.asm"
include "./images/equals.asm"
include "./images/mid1.asm"
include "./images/mid2.asm"
include "final.asm"