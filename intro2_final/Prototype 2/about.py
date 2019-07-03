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
    return '''<!DOCTYPE html>
    <html>
    <head>
	<title>Zompirates! About</title>
	<link type="text/css" rel="stylesheet" href="AboutDesign.css"/>
    </head>
    <body>
	<div id="header">
       	<center>
            <ul id="header">
	           <li id="head"><a href ="">Quiz</a></li>
	           <li id="head"><a href ="./roleplay/roleplay.py'''+cgistuff+'''">Roleplay</a></li>
	           <li id="head"><a href ="home.py'''+cgistuff+'''">Home</a></li>
	           <li id="head"><a href ="./accounts/account.py'''+cgistuff+'''">Account</a></li>
	           <li id="head"><a href ="about.py'''+cgistuff+'''">About</a></li>
            </ul>
        </center>
    	</div>
	<center>
	<div id="about">
		<center>
		<h5 id="team">The Team</h5>
         <img id="teampic" src="http://i.imgur.com/p1pN4lZ.png" width="700px" height="300px">
		<h5 id="backstory">The Backstory</h5>
       </center>
	</div>	
	</center>
	<div id="backstory1">
	</div>
	<div id="bstext">
	</div>	
    </body>
    </html>'''

def mainPage_notloggedin():
    return '''<!DOCTYPE html>
    <html>
    <head>
	<title>Zompirates! About</title>
	<link type="text/css" rel="stylesheet" href="AboutDesign.css"/>
    </head>
    <body>
	<div id="header">
       	<center>
            <ul id="header">
	           <li id="head"><a href ="">Quiz</a></li>
	           <li id="head"><a href ="">Roleplay</a></li>
	           <li id="head"><a href ="home.py">Home</a></li>
	           <li id="head"><a href ="">Account</a></li>
	           <li id="head"><a href ="about.py">About</a></li>
            </ul>
        </center>
    	</div>
	<center>
	<div id="about">
		<center>
		<h5 id="team">The Team</h5>
         <img id="teampic" src="http://i.imgur.com/p1pN4lZ.png" width="700px" height="300px">
		<h5 id="backstory">The Backstory</h5>
       </center>
	</div>	
	</center>
	<div id="backstory1">
	</div>
	<div id="bstext">
	</div>	
    </body>
    </html>'''
    
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
    if str(IP)!=storedIP:
        print "Not logged in properly (invalid IP)."
        return                
    

    #You got here? Great! Show the real page.
    print mainPage(email,magicNumber)            
main()
