;	org $8000

;include "./lib/sound.asm"

	;call start_music
	;call advance_music
	;ret

; Play a set of notes from memory
start_music:
	; Set hl to be the address of the start of the song
	; Save this address in song address
	ld hl, song_notes
	ld (song_address), hl
advance_music:
	; Load the first note into the two bytes
	ld hl,(song_address)
	ld a,(hl)
	ld (song_current_note), a
	
	; Second note byte
	inc hl
	ld a, (hl)
	ld (song_current_note+1), a

	; Load the duration two bytes
	inc hl
	ld a, (hl)
	ld (song_current_duration), a
	ld a, 0
	ld (song_current_duration+1), a
	; store hl back into song address
	inc hl
	ld (song_address), hl
	
	ld hl, (song_current_note)
	ld de, (song_current_duration) ;(song_address_duration)
	call 949

	; Progress song counter
	ld a,(song_length) 
	sub 1
	ld (song_length), a
	
	;cp 0
	;jr nz, play_song_loop
	ret

song_length: ; one less than the total number
	defb	156
song_address:
	defb 0, 0
song_current_note:
	defb 0, 0
song_current_duration:
	defb 0, 0
song_notes: ; Song is note low byte, note high byte, duration
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE1B, noteE1A, noteE1DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteD1B, noteD1A, noteD1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE0B, noteE0A, noteE0DH
	defb noteE0B, noteE0A, noteE0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteE1B, noteE1A, noteE1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteAS0B, noteAS0A, noteAS0DH
	defb noteG0B, noteG0A, noteG0DQ
	defb noteA0B, noteA0A, noteA0DH
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ
	defb noteG1B, noteG1A, noteG1DQ