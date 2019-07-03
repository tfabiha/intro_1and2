#!/usr/bin/python
print('Content-Type: text/html\n')

import cgi
import cgitb
formdata = cgi.FieldStorage()
cgitb.enable()

text = open("testing_creation.txt", "w")
text.write("Please work.")
text.write("\n")
text.write("Please")
text.close()
