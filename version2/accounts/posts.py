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

    posts = open('../posts/'+email+'.txt').read().split('<killeverything>')
    text = ""
    for i in posts:
        text = i + '<br>' + text
    
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
            <h5 id="am">Make a Post</h5>
        
<p position="relative">
                <textarea rows="4" cols="50" name="comment" form="addpost"></textarea>
                
		<form method="Get" action="addtoposts.py" id="addpost">
                <input type="hidden" name="place" size="25" value="'''+email+'''">
                <input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
                <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
		
		<input type="submit" name="submited" value="post">

		</form>

                </p>
        </div>
        <div id="interests">
            <h5 id="in">Posts:</h5>
        '''+text+'''
        </div>
        
	</div>
        
        <a href="" class="pass"><h5 id="cp">Change Password</h5></a>
         <a href="" class="ca1"><h5 id="ca">Change Avatar</h5></a>
         <a href="" class="ci1"><h5 id="ci">Change Info</h5></a>
         <a href="posts.py'''+cgistuff+'''" class="ba1"><h5 id="ba">Posts</h5></a>
        <a href="account.py'''+cgistuff+'''" class="me2"><h5 id="me1">Me</h5></a>
         <a href="" class="wo2"><h5 id="wo1">World</h5></a>
        
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
