count = 0
with open("notes.txt", 'r') as f:
    for line in f.readlines():
        tokens = line.split(" ")
        if tokens[0] != "/":
        
            for t in tokens[1:]:
                t = t.replace(")","")
                t = t.replace("\n","")
                items = t.split("(")

                if items[0] != "_" and len(items) == 2:
                    code = items[0]
                    note = code[:-1].replace("#","S")
                    octave = int(code[-1])
                    octave -= 2
                    dur = int(items[1])
                    if dur == 2:
                        print("defb note" + str(note) + str(octave) + "B, note" + str(note) + str(octave) + "A, note" + str(note) + str(octave) +"DH")
                    else:
                        print("defb note" + str(note) + str(octave) + "B, note" + str(note) + str(octave) + "A, note" + str(note) + str(octave) +"DQ")
                    count += 1
print(count)
