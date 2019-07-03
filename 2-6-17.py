def magicValue(x):
    if tens_d(x) == ones_d(x):
        return tens_d(x)
    else:
        return tens_d(x) + ones_d(x)

def tens_d(x):
    return ((x % 100) - (x % 10)) / 10

def ones_d(x):
    return x % 10

print magicValue(186)
print magicValue(244)
print magicValue(9)
print magicValue(10)
print magicValue(0)
