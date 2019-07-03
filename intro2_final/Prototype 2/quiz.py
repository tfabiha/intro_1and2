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

def mainPageresults(email,magicNumber):
    form = cgi.FieldStorage()
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    x = 0
    for i in range(1, 11):
        x += int(form['q'+str(i)].value)
    if x < 15:
        what = 'zombie'
    if x > 15:
        what = 'pirate'
    if x == 15:
        if form['q10'].value == '1':
            what = 'zombie'
        else:
            what = 'pirate'
    #see example below:
    return '''<!DOCTYPE html>

    <html>

    <title>Quiz</title>

    <link type="text/css" rel="stylesheet" href="quizdesign.css"/>

    <body>

    	<div id="header">

       	<center>

            <ul id="header">

	           <li id="head"><a href ="quiz.py'''+cgistuff+'''">Quiz</a></li>

	           <li id="head"><a href ="./roleplay/roleplay.py'''+cgistuff+'''">Roleplay</a></li>

	           <li id="head"><a href ="home.py'''+cgistuff+'''">Home</a></li>

	           <li id="head"><a href ="./account/account.py'''+cgistuff+'''">Account</a></li>

	           <li id="head"><a href ="about.py'''+cgistuff+'''">About</a></li>

            </ul>

        </center>

    	</div>

	<center>

	<div id="about">

        <center>

    <h5 id="quiz">Are you more Zombie or Pirate?</h5>

    <h4 id="ta">Quiz Results!</h4>

    <h3>You are a '''+what+'''</h3>
    </center></div>

    </body>'''


def mainPage(email,magicNumber):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    #see example below:
    return '''<!DOCTYPE html>

<html>

<title>Quiz</title>

    <link type="text/css" rel="stylesheet" href="quizdesign.css"/>

<body>

    	<div id="header">

       	<center>

            <ul id="header">

	           <li id="head"><a href ="quiz.py'''+cgistuff+'''">Quiz</a></li>

	           <li id="head"><a href ="./roleplay/roleplay.py'''+cgistuff+'''">Roleplay</a></li>

	           <li id="head"><a href ="home.py'''+cgistuff+'''">Home</a></li>

	           <li id="head"><a href ="./account/account.py'''+cgistuff+'''">Account</a></li>

	           <li id="head"><a href ="about.py'''+cgistuff+'''">About</a></li>

            </ul>

        </center>

    	</div>

	<center>

	<div id="about">

        <center>

    <h5 id="quiz">Are you more Zombie or Pirate?</h5>

    <h4 id="ta">Take the quiz below to find out!</h4>

    <form method="Get" action="quiz.py">
    <input type="hidden" name="UserEmail" size="25" value="'''+email+'''">
                <input type="hidden" name="magicNumber" size="25" value="'''+str(magicNumber)+'''">
    <h1 id="qu">1) Are you more of a meat or veggie person?</h1>

        <input type="radio" name="q1" value="1" checked>A)Meat <br>

        <input type="radio" name="q1" value="2">B)Veggies <br>

    
    <h1 id="qu">2) Would you rather go on a ship for vacation or just chill in a hotel?</h1>

    
        <input type="radio" name="q2" value="1" checked>A) Hotel <br>

        <input type="radio" name="q2" value="2" >B)Ship <br>

    
    <h1 id="qu">3) Do you like brown or green more?</h1>

     
        <input type="radio" name="q3" value="1" checked>A)Green <br>

        <input type="radio" name="q3" value="2" >B)Brown <br>

    
    <h1 id="qu">4) Would you rather fight with a cutlass or with your bare hands?</h1>

     
        <input type="radio" name="q4" value="1" checked>A)Bare Hands<br>

        <input type="radio" name="q4" value="2" >B)Cutlass <br>

    
    <h1 id="qu">5) Green eggs and ham or...gold?</h1>

     
        <input type="radio" name="q5" value="1" checked>A)Green Eggs and Ham <br>

        <input type="radio" name="q5" value="2" >B)Gold <br>

    
    <h1 id="qu">6) Would you rather be on the Flying Dutchman's Brig or a victim in a Zombie Apocolypse?</h1>

     
        <input type="radio" name="q6" value="1" checked>A)Flying Dutchman's Brig <br>

        <input type="radio" name="q6" value="2" >B)Victim of a Zombie Apocolypse <br>

    
    <h1 id="qu">7) Hats or no hats?</h1>

     
        <input type="radio" name="q7" value="1" checked>A)Hats <br>

        <input type="radio" name="q7" value="2" >B)No Hats <br>

    
    <h1 id="qu">8) Johnny Depp or Jack Sparrow?</h1>

     

        <input type="radio" name="q8" value="1" checked>A)Johnny Depp <br>

        <input type="radio" name="q8" value="2" >B)Jack Sparrow<br>

    
    <h1 id="qu">9) Would you rather get bitten or have a curse?</h1>

     
        <input type="radio" name="q9" value="1" checked>A)Get Bitten<br>

        <input type="radio" name="q9" value="2" >B)Have a curse<br>

    
    <h1 id="qu">10) Seriously, zombies or pirates?</h1>

     
        <input type="radio" name="q10" value="1" checked>A)Zombies <br>

        <input type="radio" name="q10" value="2">B)Pirates<br>

            </form></center></div>

    </body></html>'''

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

    if 'q1' in form:
        print mainPageresults(email,magicNumber)
    else:
        print mainPage(email,magicNumber)            
main()
