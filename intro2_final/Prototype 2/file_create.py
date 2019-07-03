#!/usr/bin/python
print('Content-Type: text/html\n')

import cgi
import cgitb
import os
formdata = cgi.FieldStorage()
cgitb.enable()

text = open("./posts/home.txt", "w")
text.close()

for files in os.listdir('./users'):
    here = open("./posts/"+files, "w")
    here.close()
    
print "all files made"
