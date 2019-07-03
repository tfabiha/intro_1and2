#!/usr/bin/python
print('Content-Type: text/html\n')

import cgi
import cgitb
formdata = cgi.FieldStorage()
cgitb.enable()


#text, reader = open("%s.txt" % (formdata[ch].value), "rw+")
text = open("chat.txt" ,"r").read()

'<br>'.join(text.split('\n'))


############
#THE BASICS#
############
def basic_html_top():
    print """<!DOCTYPE html>
    <html>
        <head>
            <title>Roleplay</title>
        </head>
        <body>"""
    
def basic_html_bottom():
    print """    </body>
    </html>"""

def printing_chat():
    print '<p>', text, '</p>'

def chat_form():
    print '''<p>
		<form method="Get" action="redirect_to.py">
		
		Type:
		<input type="text" name="chat_sub" size="25" value="">
		<br>

		<input type="submit" name="submited" value="submit">

		</form>
		</p>'''






#####################
#START PRINTING HERE#
#####################
basic_html_top()
printing_chat()
chat_form()
basic_html_bottom()
