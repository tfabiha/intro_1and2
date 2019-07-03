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

def mainPage(email,magicNumber,chat_name,character1,character2):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    #see example below:

    chatname = "../chats/"+chat_name+".txt"
    chatinfoname = "../chatsinfo/"+chat_name+"info.txt"
    
    chat = open(chatname, 'w+')
    chat.write("<p>Welcome to the chat. Enjoy!</p>")
    chat.close()

    chatinfo = open(chatinfoname, "w+")
    chatinfo.write(character1)
    chatinfo.write('/n')
    chatinfo.write(character2)
    chatinfo.close()
    
    return '''<!DOCTYPE HTML>
    <html>
        <head>
            <script type="text/javascript">
                window.location.href = "existing_chats.py''' + cgistuff +'''"
            </script>
            <title>Page Redirection</title>
        </head>
        <body> 
            <a href="existing_chats.py'''+cgistuff+'''">Click this if you aren't redirected automatically.</a>.
        </body>
    </html>'''

def main():
    form = cgi.FieldStorage()

    #list of all required fieldstorage keys
    requiredFields = ['UserEmail','magicNumber','chat_name','character1','character2']
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

    chat_name = form['chat_name'].value
    chatname = "../chats/"+chat_name+".txt"
    if os.path.isfile(chatname):
        print "I'm sorry. The chat file you were trying to create already exists.<br>Please try another name."
        return

    character1 = form['character1'].value
    character2 = form['character2'].value

    #You got here? Great! Show the real page.
    print mainPage(email,magicNumber,chat_name,character1,character2)            
main()
