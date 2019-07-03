def filestuff():
    text = open("thing.txt", "r").read().split('\n')
    print text
    writing = open("thing.txt", "w")
    
    text.remove(text[1])
    for i in text:
        writing.write(i)
        writing.write('\n')

filestuff()
