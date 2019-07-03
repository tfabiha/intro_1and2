def prob1():
    x = 2
    while x < 31:
        print x
        x = x + 2

prob1()
print " "


def prob2():
    x = 12
    while x < 61:
        print x
        x = x + 3

prob2()
print " "


def prob3():
    x = 1
    while x < 101:
        print x ** 2
        x = x + 1

prob3()
print " "

def prob4():
    mult = 0
    summ = 0
    while mult < 601:
        summ = summ + mult * 5
        mult = mult + 1
        if mult > 600:
            return summ

def prob4test():
    mult = 0
    summ = 0
    while mult < 5:
        summ = summ + mult * 5
        mult = mult + 1
        if mult > 4:
            return summ

        
print prob4()
print " "


def prob5():
    mult7 = 0
    summ2 = 0
    while mult7 < 429:
        if (mult7 * 7) % 5 != 0:
            summ2 = summ2 + mult7 * 7
        mult7 = mult7 + 1
        
        if mult7 > 428:
            return summ2

def prob5ans():
    return prob5() + prob4()

print prob5ans()



















