def square(x):
    return x ** 2

print square(10)
print square(5)
print square(-2)
print square(0)
print square(1)
print square(-1)
print " "


def negate(x):
    return x * -1

print negate(5)
print negate(-15)
print negate(0)
print negate(12)
print negate(33)
print " "


def isBig(n):
    return n > 10000

print isBig(100)
print isBig(10000)
print isBig(10001)
print isBig(20000)
print isBig(-10001)
print isBig(-20000)
print isBig(0)
print " "

def isEven(n):
    return (n % 2) == 0

print isEven(12)
print isEven(11)
print isEven(0)
print isEven(-7)
print isEven(99)
print isEven(110)
print " "


def distance(x1,x2,y1,y2):
    import math
    return math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)











    
