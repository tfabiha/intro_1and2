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

def mainPage(email,magicNumber):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    #see example below:

    users = ""
    for files in os.listdir('../users'):
        filename = files.split('.txt')[0]
        if files != email+".txt":
            users += '<input type="radio" name="user" size="25" value="' + files + '" checked>' + filename +'<br>'
    
    return '''<!DOCTYPE html>
    <html>
    <head><title> Zompirates! </title>
    <link type="text/css" rel="stylesheet" href="../ZompiratesDesign.css"/>
    </head>
    <body>
        <div id="logo">
            <center><img src="http://i.imgur.com/JskcO2E.png" width="100%" height="400px"></center>
        </div>
        <div id="header">
            <center>
                <ul id="header">
	           <li id="head"><a href ="">Quiz</a></li>
	           <li id="head"><a href ="roleplay.py'''+cgistuff+'''">Roleplay</a></li>
	           <li id="head"><a href ="../home.py'''+cgistuff+'''">Home</a></li>
	           <li id="head"><a href ="../accounts/account.py'''+cgistuff+'''">Account</a></li>
	           <li id="head"><a href ="../about.py'''+cgistuff+'''">About</a></li>
                </ul>
        `   </center>
        </div>
        <div id="join">
            <center>
                <img src="http://i.imgur.com/Gzk4eOv.png" width="100%px" height="70px">
            </center>
        </div>
        <div id="login">
        <p>
		<form method="Get" action="make_new_chats.py">

                <input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
                <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
                
		Chatname:
		<input type="text" name="chat_name" size="25" value="">
		<br>
		
		You must fill out each characters name: <br>
		
		Character 1: <input type="text" name="character1" size="20" value="">
		<br>

                Character 2: <input type="text" name="character2" size="20" value="">
		<br>

                User to Roleplay With:
                <br>'''+users+'''
		
		<input type="submit" name="submited" value="submit">

		</form>
                </p>
        </div>
    </body>
    </html>
    '''


def main():
    form = cgi.FieldStorage()

    #list of all required fieldstorage keys
    requiredFields = ['UserEmail','magicNumber']
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
    print mainPage(email,magicNumber)            
main()
