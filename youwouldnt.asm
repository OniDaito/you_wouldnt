; You Wouldn't. A ZX Spectrum Demo
org $8000
; Some handy screen constants we might need
include "./lib/constants.asm"

start
    ; the main scene with the various timings
    ld a, black | white | bright
    call cls_attributes
    call clearscreen
    call pausescene
    call pausescene
    call scene01
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call clearscreen
    call pausescene
    call pausescene
    call scene02
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call clearscreen
    call pausescene
    call pausescene
    call scene03
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call pausescene
    call clearscreen
    call pausescene
    call pausescene
    call scene04
    call pausescene
    call pausescene
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
; Load the library functions
include "./lib/upde.asm"
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