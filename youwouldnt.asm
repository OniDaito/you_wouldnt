; A bitmap test program
org $8000

include "./lib/constants.asm"

start
    ld a, black | white | bright
    call cls_attributes
    ; Set all the memory locations for drawing 'you'
    call scene01
    call pausescene
    call clearscreen
    call scene02
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

include "./scene_shared.asm"
include "./scene_01.asm"
include "./scene_02.asm"
include "./lib/upde.asm"
include "./lib/draw_bitmap.asm"
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