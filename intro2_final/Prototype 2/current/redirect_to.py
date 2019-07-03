#!/usr/bin/python
print('Content-Type: text/html\n')

import cgi
import cgitb
formdata = cgi.FieldStorage()
cgitb.enable()

def main():

    #check if all exist
    requiredFields = ['UserEmail','magicNumber', 'chat_sub', 'chatname']
    allhere = True
    for req in requiredFields:
            allHere = allHere and req in form

    if not allhere:
        print "Not logged in properly (not all form elements)."
        return

    #give shortcuts
    fixedchat = cgi.escape(formdata["chat_sub"].value)
    email = form['UserEmail'].value
    magicnumber = magicNumber = form['magicNumber'].value

    #url that u add to the main
    urls = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)

    #get the name of the data file
    email = form['UserEmail'].value
    filename = "./users/"+email+".txt"

    #check if file exists
    if not os.path.isfile(filename):
        print "Not logged in properly (bad username)."
        return

    #open file for magic number and IP
    userInfo = open(filename).read().split("\n")
    storedMagicNumber = userInfo[2]
    storedIP = userInfo[3]
    
    
    #check magic number
    magicNumber = form['magicNumber'].value
    if storedMagicNumber != magicNumber:
        print "Not logged in properly (badMagicNumber)."
        return

    #check IP address
    IP = os.environ["REMOTE_ADDR"]
    #if str(IP)!=storedIP:
    #    print "Not logged in properly (invalid IP)."
    #    return                

def basic_html():
    print '''<!DOCTYPE HTML>
    <html lang="en-US">
        <head>
            <script type="text/javascript">
                window.location.href = "roleplay_version1.py''' + urls'''"
            </script>
            <title>Page Redirection</title>
        </head>
        <body> 
            <a href="roleplay_version1.py>Click this if you aren't redirected automatically.</a>.
        </body>
    </html>'''


######
######
##JUST ADDED THE CHAT NAME DEPENDENT FIX ON ROLEPLAY
######
######
text = open(formdata[chatname].value + ".txt", "rw+")
something = text.read()
#text.write(something)
text.write("<br>\n")
text.write(fixedchat)
text.close()

#reader = open("chat.txt").read()
#print reader

########
#ACTION#
########




















basic_html()
