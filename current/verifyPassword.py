#!/usr/bin/python
print 'content-type: text/html\n'
import cgi
import cgitb
import hashlib
cgitb.enable()
import random
import os
import os.path


form = cgi.FieldStorage()

requiredFields = ['UserEmail','UserPassword']
allHere = True
for req in requiredFields:
	allHere = allHere and req in form
print allHere

if allHere:
    email = form['UserEmail'].value
    filename = "./users/"+email+".txt"
    if os.path.isfile(filename):
        password = form['UserPassword'].value
        userInfo = open(filename).read().split("\n")
        storedHash = userInfo[1]

        hasher = hashlib.new('sha256')
        hasher.update(password)
        inputHash = hasher.hexdigest()
        
        if(storedHash == inputHash):
            #print "Same passwords!<br>"
            #this is where you put information you want to hide behind a login.
            magicNumber = random.randint(100000,1000000)
            userInfo[2] = str(magicNumber)
            IP = os.environ["REMOTE_ADDR"]
            userInfo[3] = str(IP)
            outText = "\n".join(userInfo)
            outFile = open(filename,'w')
            outFile.write(outText)
            outFile.close()
            print '''You have successfully authenticated. <br> Please <a href="mainpage.py?UserEmail='''+email+'''&magicNumber='''+str(magicNumber)+'''"> click here </a>to go to the site!'''
        else:
            print "<b>Invalid</b> password.<br>"
    else:
        print "No account data found"

