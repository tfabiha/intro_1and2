def findlast(x,y):
    i = len(x) -1
    while i > 1:
        if x[i - len(y):i]:
            return i - len(y)
        i = i-1
    return 0
def makeBoxOfNumbers(rows,cols):
    newstr = ""
    newer = ""
    i = 0
    rowdone = 0
    coldone = 0
    while len(newstr) < cols * rows:
        num = i % 10
        newstr = newstr + str(num)
        i = i + 1

    s = 0
    while s + cols <= len(newstr):
        newer = newer + newstr[s : s + cols] + '\n'
        s = s + cols
    return newer
print makeBoxOfNumbers(3,6)

def removeCharFromString(s,c):
    i = 0
    newstr = ''
    
    while i < len(s):
        if s[i] != c:
            newstr = newstr + s[i]
        i = i + 1
    return newstr
print removeCharFromString('Bloop pow woot', 'o')

def removeFromString(s,part):
    i = 0
    newstr = ''

    while i + len(part) < len(s):


        i = i + 1
    return newstr
print removeFromString('Bloop pow woot','oo')









    
