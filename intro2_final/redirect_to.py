#!/usr/bin/python
print('Content-Type: text/html\n')

import cgi
import cgitb
formdata = cgi.FieldStorage()
cgitb.enable()

#print formdata["chat_sub"].value

def basic_html():
    print '''<!DOCTYPE HTML>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="refresh" content="1; url=roleplay_version1.py">
            <script type="text/javascript">
                window.location.href = "roleplay_version1.py"
            </script>
            <title>Page Redirection</title>
        </head>
        <body>
            If you are not redirected automatically, follow this <a href="roleplay_version1.py</a>.
        </body>
    </html>'''


text = open("chat.txt", "rw+")
something = text.read()
#text.write(something)
text.write("\n")
text.write(formdata["chat_sub"].value)
text.close()

reader = open("chat.txt").read()
print reader
basic_html()
