import os

def namefiles():
    for files in os.listdir('./thing'):
        print files.strip('.txt')

namefiles()
