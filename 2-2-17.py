def between(number,a,b):
    return (a < number and b > number) or (a > number and b < number)

print between(1,3,5)
print between(4,3,5)
print between(8,3,5)
