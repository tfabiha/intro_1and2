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

    text = ""
    for files in os.listdir('../users/'):
        name = files
        name = name.split('.txt')[0]
        if name != email:
            reading = open('../users/'+files).read().split("\n")
            avatar = readfile[4]
            text += '<input type="radio" name="user" value="'+name+'" checked> '+name+' : <img src="'+avatar+'" height="62px" width="62px"><br>'
        

    return '''<!DOCTYPE html>
    <html>
    <head>
	<title>Me</title>
	<link type="text/css" rel="stylesheet" href="worlddesign.css"/>
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
        <h5 id="who">Who's profile would you like to view?</h5>
        <p id="user">
		<form method="Get" action="world.py">

		<input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
                <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">

                '''+text+'''
		</p><p id="sub">
		<input type="submit" name="submited" value="submit" class="sub">

		</form>
		</p>
	</div>
        
	</center>
    </body>
    </html>'''
    
def mainPageuser(email,magicNumber,user):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    userstuff = "&user="+user
    #see example below:

    readfile = open('../users/'+user+'.txt').read().split('\n')
    print readfile
    avatar = readfile[4]

    accountinfo = open('../accountinfo/'+user+'.txt').read().split("\n")
    about = accountinfo[0]
    interests = accountinfo[1]
    secrets = accountinfo[2]
    random = accountinfo[3]

    return '''<!DOCTYPE html>
    <html>
    <head>
	<title>'''+user+'''</title>
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
            <h5 id="am">About '''+user+'''</h5>
            <p>'''+about+'''<p>
                    </div>
        <div id="interests">
            <h5 id="in">Interests</h5>
            <p>'''+interests+'''<p>
        </div>
        <div id="secrets">
            <h5 id="se">Secrets ;)</h5>
            <p>'''+secrets+'''<p>
        </div>
        <div id="random">
            <h5 id="ra">Random Stuff</h5>
            <p>'''+random+'''<p>
        </div>
	</div>
        <a href ="world.py'''+cgistuff+userstuff+'''" class="pass"><h5 id="cp">View Info</h5></a>
         <a href ="userposts.py'''+cgistuff+userstuff+'''" class="pass"><h5 id="ba">Posts</h5></a>
        <a href ="account.py'''+cgistuff+'''" class="pass"><h5 id="me1">Me</h5></a>
         <a href ="world.py'''+cgistuff+'''" class="pass"><h5 id="wo1">World</h5></a>
        
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
    if 'user' in form:
        user = form['user'].value
        print mainPageuser(email,magicNumber,user)
    else:
        print mainPage(email,magicNumber)            
main()
