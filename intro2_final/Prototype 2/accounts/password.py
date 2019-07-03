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
	           <li id="head"><a href ="">Quiz</a></li>
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
            <img src="../avatars/'''+avatar+'''" width="200px" height="200px">
        </div>
        <div id="coolinfo"></div>
        <div id="aboutme">
        <h5 id="am">Change Password</h5>
		<form method="Get" action="redirect_to_password.py">

		<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
                <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">

		
		Current Password:
		<input type="password" name="current_password" size="25" value="">
		<br>

                New Password:
                <input type="password" name="new_password" size="25" value="">
		<br>

		Re-Type New Password:
		<input type="password" name="retype_password" size="25" value="">
		<br>
		<input type="submit" name="submited" value="submit">

		</form>
		</p>
	</div>
	</div>
	<form method="Get" action="changeinfo.py" id="usrform">
	<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
	<input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
	<input type=submit name=submited value="Change Info">
	</form>
<form method="Get" action="changeavatar.py" id="usrform">
	<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
	<input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
	<input type=submit name=submited value="Change Avatar">
	</form>
<form method="Get" action="password" id="usrform">
	<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
	<input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
	<input type=submit name=submited value="Change Password">
	</form>
<form method="Get" action="posts.py" id="usrform">
	<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
	<input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
	<input type=submit name=submited value="Posts">
	</form>
        <form method="Get" action="world.py" id="usrform">
	<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
	<input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
	<input type=submit name=submited value="World">
        
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
