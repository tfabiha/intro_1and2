def mainPageuser(email,magicNumber,user):
    #note that ALL links to new pages must include this after the .py 
    cgistuff = "?UserEmail=" + email + "&magicNumber=" + str(magicNumber)
    userstuff = "&user="+user
    #see example below:

    readfile = open('../users/'+user+'.txt').read().split('\n')
    print readfile
    avatar = readfile[4]

    #accountinfo = open('../accountinfo/'+user+'.txt').read().split("\n")
    #about = accountinfo[0]
    #interests = accountinfo[1]
    #secrets = accountinfo[2]
    #random = accountinfo[3]

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
            <h5 id="am">About Me</h5>
            <p>'''+about+'''<p>
            <p>Side buttons don't work, so click here to look at posts.<br>
            <a href="posts.py'''+cgistuff+'''">Click ME!</a></p>
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
