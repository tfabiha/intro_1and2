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

def mainPage(email,magicNumber,about,interests,secrets,random):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    
    text = open('../accountinfo/'+email+'.txt', "r").read().split('\n')
    text[0] = about
    text[1] = interests
    text[2] = secrets
    text[3] = random

    rewrite = open('../accountinfo/'+email+'.txt',"w")
    for i in text:
        rewrite.write(i)
        rewrite.write('\n')
    rewrite.close()

    #reader = open("chat.txt").read()
    #print reader
    basic_html(email,magicNumber)
    
    
    #see example below:
    return '''  <h1>YOUR PAGE HERE</h1><br>
    ADD CONTENT HERE<br>
    <hr>
    example of a link to some other page that checks login: <br>
    <a href="otherpage.py'''+ cgistuff+ '''"> click here </a>to go to the other page!'''

def basic_html(email,magicNumber):
    print '''<!DOCTYPE HTML>
    <html>
        <head>
            <script type="text/javascript">
                window.location.href = "account.py?UserEmail='''+email+'''&magicNumber='''+str(magicNumber)+'''"
            </script>
            <title>Page Redirection</title>
        </head>
        <body>
            If you are not redirected automatically, follow this <a href="account.py?UserEmail='''+email+'''&magicNumber='''+str(magicNumber)+'''">Click here</a>.
        </body>
    </html>'''

def main():
    form = cgi.FieldStorage()

    #list of all required fieldstorage keys
    requiredFields = ['UserEmail','magicNumber','about','interests','secrets','random']
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

    #chat_name = form["chat_name"].value
    #chatname = "../chatstuff/chats/"+chat_name+".txt"
    #if not os.path.isfile(chatname):
    #    print "I'm sorry. The chat file you were trying to see does not exist.<br>Go back and please try another name.<br><a href='./existing_chats.py?UserEmail="+email+"&magicNumber"+magicNumber+"'></a>"
    #    return

    about = cgi.escape(form['about'].value)
    interests = cgi.escape(form['interests'].value)
    secrets = cgi.escape(form['secrets'].value)
    random = cgi.escape(form['random'].value)
    print mainPage(email,magicNumber,about,interests,secrets,random)            
main()
