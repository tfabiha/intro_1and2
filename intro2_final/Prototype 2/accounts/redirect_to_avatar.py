#!/usr/bin/python
print 'content-type: text/html\n'
import cgi
import cgitb
import hashlib
cgitb.enable()
import random
import os
import os.path


#THIS IS A TEMPLATE TO STAY LOGGED IN BETWEEN PAGES

def mainPage(email,magicNumber,avatar):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)

    text = open('../users/'+email+'.txt', "r").read().split('\n')
    text[4] = avatar

    rewrite = open('../users/'+email+'.txt', 'w')
    for i in text:
        rewrite.write(i)
        rewrite.write('\n')
    rewrite.close()
    word = 'success'

    #reader = open("chat.txt").read()
    #print reader
    basic_html(email,magicNumber,word)
    
    
    #see example below:
    return '''  <h1>YOUR PAGE HERE</h1><br>
    ADD CONTENT HERE<br>
    <hr>
    example of a link to some other page that checks login: <br>
    <a href="otherpage.py'''+ cgistuff+ '''"> click here </a>to go to the other page!'''

def basic_html(email,magicNumber,word):
    print '''<!DOCTYPE HTML>
    <html>
        <head>
            <script type="text/javascript">
                window.location.href = "../'''+word+'''.py?UserEmail='''+email+'''&magicNumber='''+str(magicNumber)+'''"
            </script>
            <title>Page Redirection</title>
        </head>
        <body>
            <!-- Note: don't tell people to `click` the link, just tell them that it is a link. -->
            If you are not redirected automatically, follow this <a href="../'''+word+'''.py?UserEmail='''+email+'''&magicNumber='''+str(magicNumber)+'''">Click here</a>.
        </body>
    </html>'''

def main():
    form = cgi.FieldStorage()

    #list of all required fieldstorage keys
    requiredFields = ['UserEmail','magicNumber','avatar']
    allHere = True
    for req in requiredFields:
            allHere = allHere and req in form

    #check for required fields
    if not allHere:
        print "Not logged in properly (not all form elements)."
        return

    #get the name of the data file
    email = form['UserEmail'].value
    filename = "../users/"+email+".txt"

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
    #IP = os.environ["REMOTE_ADDR"]
    #if str(IP)!=storedIP:
    #    print "Not logged in properly (invalid IP)."
    #    return                

    #You got here? Great! Show the real page.
    avatar = form['avatar'].value
    print mainPage(email,magicNumber,avatar)            
main()
