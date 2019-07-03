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

    readfile = open('../users/'+email+'.txt').read().split('\n')
    print readfile
    avatar = readfile[4]

    accountinfo = open('../accountinfo/'+email+'.txt').read().split("\n")
    about = accountinfo[0]
    interests = accountinfo[1]
    secrets = accountinfo[2]
    random = accountinfo[3]

    return '''<!DOCTYPE html>
    <html>
    <head>
	<title>Me</title>
	<link type="text/css" rel="stylesheet" href="MeDesign.css"/>
    </head>
    <body>
	<div id="header">
       	<center>
            <ul id="header">
	           <li id="head"><a href ="../quiz.py'''+cgistuff+'''">Quiz</a></li>
	           <li id="head"><a href ="../roleplay/roleplay.py'''+cgistuff+'''">Roleplay</a></li>
	           <li id="head"><a href ="../home.py'''+cgistuff+'''">Home</a></li>
	           <li id="head"><a href ="account.py'''+cgistuff+'''">Account</a></li>
	           <li id="head"><a href ="../about.py'''+cgistuff+'''">About</a></li>
            </ul>
        </center>
    	</div>
	<center>
	<div id="me">
        <div id="avatar">
            <img src="'''+avatar+'''" width="200px" height="200px">
        </div>
        <div id="coolinfo"></div>
        <div id="aboutme">
            <h5 id="am">About Me</h5>
            <p><textarea name="about" form="usrform">'''+about+'''</textarea>
        </p>
            
        </div>
        <div id="interests">
            <h5 id="in">Interests</h5>
            <p><textarea name="interests" form="usrform">'''+interests+'''</textarea></p>
        </div>
        <div id="secrets">
            <h5 id="se">Secrets ;)</h5>
            <p><textarea name="secrets" form="usrform">'''+secrets+'''</textarea></p>
        </div>
        <div id="random">
            <h5 id="ra">Random Stuff</h5>
            <p><textarea name="random" form="usrform">'''+random+'''</textarea></p>
        </div>
        
        <form method="Get" action="redirect_to_changeinfo.py" id="usrform">
        <input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
        <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
        <input type="reset" value="reset">
        <input type="submit" name="submited" value="change">
        
        </div>
	</div>
        
        
	</center>
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
