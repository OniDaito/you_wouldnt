'''
A short program to generate the notes for our 
board beeper test. It relies on Amiga mod files as these
seemed a bit easier than midi:

https://github.com/NardJ/ModTrack-for-Python
https://pages.mtu.edu/~suits/notefreqs.html
https://www.fpga4fun.com/MusicBox3.html

'''
from pysine import sine
import argparse
from time import sleep
from modtrack import tracker

# We use 0 here but technically this is octave 3 and midi note 48 ( I think)
freqs = {
    "c0":  130.813,
    "c#0": 138.591,
    "d0": 146.832,
    "d#0": 155.563,
    "e0": 164.814,
    "f0": 174.614,
    "f#0": 184.997,
    "g0": 195.998,
    "g#0": 207.652,
    "a0": 220,
    "a#0": 233.082,
    "b0": 246.942,
    "c1": 261.626,
    "c#1": 277.183,
    "d1": 293.665,
    "d#1": 311.127,
    "e1": 329.628,
    "f1": 349.228,
    "f#1": 369.994,
    "g1": 391.995,
    "g#1": 415.305,
    "a1": 440,
    "a#1": 466.164,
    "b1": 493.883,
    "c2": 523.251,
    "c#2": 554.365,
    "d2": 587.33,
    "d#2": 622.254,
    "e2": 659.255,
    "f2": 698.456,
    "f#2": 739.989,
    "g2": 783.991,
    "g#2": 830.609,
    "a2": 880,
    "a#2": 932.328,
    "b2": 987.767,
    "c3": 1046.502,
    "c#3": 1108.731,
    "d3": 1174.659,
    "d#3": 1244.508,
    "e3": 1318.51,
    "f3": 1396.913,
    "f#3": 1479.978,
    "g3": 1567.982,
    "g#3": 1661.219,
    "a3": 1760,
    "a#3": 1864.655,
    "b3": 1975.533,
}

# Add 48 to the beginning and the order will match
midi_notes = [
 "c0", "c#0", "d0", "d#0", "e0", "f0", "f#0", "g0", "g#0", "a0", "a#0", "b0", "c1", "c#1", "d1",
 "d#1", "e1", "f1", "f#1", "g1", "g#1", "a1", "a#1", "b1", "c2", "c#2", "d2", "d#2", "e2", "f2",
 "f#2", "g2", "g#2", "a2", "a#2", "b2", "c3", "c#3", "d3", "d#3", "e3", "f3", "f#3", "g3", "g#3", 
 "a3", "a#3", "b3", ]

def play_note(note, duration=0.167):
    if note == 'p':
        sine(frequency=40.0, duration=duration)
    else:
        sine(frequency=freqs[note], duration=duration)

def parse_mod(mod_file, channel):
    pattern = tracker.load_amigamodule(mod_file)
    dd = 0.16
    final_song = []

    def step_to_note(step, c):
        c = step[c]
        tokens = c.split(" ")
        note = tokens[0].lower().replace("-", "")
        return note

    for i, step in enumerate(pattern):
        note = step_to_note(step, channel)
        print(step[channel])
    
    return final_song

if __name__ == "__main__":
    parser = argparse.ArgumentParser(prog='midi parse')
    parser.add_argument('--mod', default="you_wouldnt.mod", help='path to mod file')
    parser.add_argument('--channel', type=int, default=0, help='channel to export')

    args = parser.parse_args()
    song = parse_mod(args.mod, args.channel)

    for i, step in enumerate(song):
        octave = int(step[-1])
        note = step[:-1]
        code = 0

        if note == 'c':
            code = "C"
        elif note == 'c#':
            code = "CS"
        elif note == 'd':
            code = "D"
        elif note == 'd#':
            code = "DS"
        elif note == 'e':
            code = "E"
        elif note == 'f':
            code = "F"
        elif note == 'f#':
            code = "FS"
        elif note == 'g':
            code = "G"
        elif note == 'g#':
            code = "GS"
        elif note == 'a':
            code = "A"
        elif note == 'a#':
            code = "AS"
        elif note == 'b':
            code = "B"

        print("defb note" + str(code) + str(octave) + "B, note" + str(code) + str(octave) + "A, note" + str(code) + str(octave) +"DH")
    print(len(song))