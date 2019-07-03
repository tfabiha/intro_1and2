; To Animation
;490 * 380

to set-up
  ca
  ;set max-pxcor 490
  ;set max-pycor 380

  import-pcolors "ShanAraSomeHot.PNG"
  ;http://www.indiewire.com/wp-content/uploads/2014/03/some-like-it-hot.jpg
end




to background
  ca
  import-pcolors "nightscene.PNG"

  ask patches [
    if pxcor = 0 and pycor = -300 [set plabel "Chicago 1929"]]

wait 2

ask patches [

    if pxcor = 0 and pycor = -300 [set plabel " Spats Colombo and his henchmen tear through the streets"]]
wait 5
ask patches [
if pxcor = 0 and pycor = -300 [set plabel " "]]
  cro 5
  ask turtles [


    ask turtle 0 [set heading 0]
    ask turtle 0 [setxy 380 -50]
    ask turtle 0 [set shape "house bungalow"]
    wait 0.01
    ask turtle 1 [set heading 0]
    ask turtle 1 [setxy -295 -50]
    ask turtle 1 [set shape "house colonial"]
    wait 0.01
    ask turtle 2 [set heading 0]
    ask turtle 2 [setxy  100 -50]
    ask turtle 2 [set shape "building store"]
    wait 0.01
    ask turtle 3 [set heading 90]
    ask turtle 3 [setxy  380 -250]
    ask turtle 3 [set shape "truck"]
   wait 0.01
    ask turtle 4 [set heading 90]
    ask turtle 4 [set shape "van side"]
    ask turtle 4 [setxy  -80 -320]

    ask turtle 0 [set size 400]
    wait 0.01
    ask turtle 1 [set size 400]
    wait 0.01
    ask turtle 2 [set size 400]
    wait 0.05
    ask turtle 3 [set size 400]
    wait 0.01
    ask turtle 4 [set size 400]


    ]

end




  to cars-move

    crt 50
    repeat 5 [
    repeat 10 [

ask turtle 3 [fd 50]
ask turtle 4 [fd 50]
wait 0.009
ask turtle 3 [fd 50]
ask turtle 4 [fd 50]
wait 0.009
ask turtle 3 [fd 50]
ask turtle 4 [fd 50]]
    wait 0.01
ask turtles [
if who >= 5 and who <= 49 [set ycor -250
      set heading random 360

      set shape "bullet"
      set size random 300 repeat 3 [
      fd random 300
      ]

        ]]
repeat 8 [
ask turtle 3 [fd 50]
ask turtle 4 [fd 50]
wait 0.009
ask turtle 3 [fd 50]
ask turtle 4 [fd 50]
wait 0.009

ask turtle 3 [fd 50]
ask turtle 4 [fd 50]]

ask turtles [
if who >= 5 and who <= 49 [set ycor -250
      set heading random 360

      set shape "bullet"
      set size random 300 repeat 3 [
      fd random 300
      ]

        ]]]
  end

to openingmessage
ca
ask patches [

    if pxcor = 0 and pycor = -300 [set plabel " All for the mighty..."]]
wait 2.5
cro 1
ask turtles
[set shape "apple juice"
  set size 400]
ask patches [

    if pxcor = 0 and pycor = -300 [set plabel " APPLEEEE JUIICCCEEEYYY"]]
wait 1.5
ask turtles [
  set size 375
  wait 0.01
   set size 350
  wait 0.01
  set size 325
  wait 0.01
  set size 300
  wait 0.01
  set size 275
  wait 0.01
  set size 250
  wait 0.01
  set size 225
  wait 0.01
  set size 200
  wait 0.01
  set size 175
  wait 0.01
  set size 150
  wait 0.01
  set size 125
  wait 0.01
  set size 100
  wait 0.01
  set size 75
  wait 0.01
  set size 50
  wait 0.01
  set size 25
  wait 0.01

  die]

end

to scene-two
  ca
  ;https://cdn0.vox-cdn.com/thumbor/T_RBSFW23G_U0YTWty4JYFrrq_w=/0x600/cdn0.vox-cdn.com/uploads/chorus_asset/file/6517325/Pic_1.0.jpg
  import-pcolors "scene1speakeasy.PNG"
  crt 50
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "Prohibition didn't stop them from dancing and slurping thanks to Spats's illegal juices."]]
  ask turtles [set heading 0]
  ask turtle 1 [
    setxy 300 -50
    set shape "extras"
    set size 200]
  ask turtle 2 [ setxy 310 -200
    set shape "extras"
    set size 200]
  ask turtle 3 [setxy -35 -50
    set shape "joe"
    set label "JOE    "
    set size 200]
  ask turtle 4 [setxy 100 -50
    set shape "jerry"
    SET LABEL "JERRY      "
    set size 200]
  ask turtle 5 [setxy -375 -200
    set shape "spats"
    SET LABEL "SPATS"
    set size 200]
  ask turtle 0 [setxy -150 -200
    set shape "henchmen"
    set size 200]
  ask turtle 6 [setxy -200 -200
    set shape "henchmen"
    set size 200]
  ask turtle 7 [setxy -250 -200
    set shape "henchmen"
    set size 200]
  ask turtle 8 [setxy -55 -74
    set shape "saxophone"
    set size 150]
  ask turtle 9 [setxy 190 -50
    set shape "bass"
    set size 200]
  ask turtle 10 [setxy 430 -200
    set shape "toothpick charlie"
    SET LABEL "TOOTHPICK           "
    set size 200]
  ask turtles [if who >= 11 and who <= 49 [
    setxy random 600 random 800
    set shape "apple juice"
    set size 75]]

   wait 0.5
end

to animscene2
  repeat 8[
  ask turtles [lt random 35]
  wait 0.1
  ask turtles [rt random 35]
  wait 0.1
  ask turtles [fd random 20]
  wait 0.1
  ask turtles [bk random 20]
  wait 0.1]
  crt 2
  ask turtle 50 [setxy -355 -236
    set shape "person police"
    set size 300]
   ask turtle 51 [setxy -400 -236
    set shape "person police"
    set size 300]
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "But, Toothpick Charlie ratted out Spats and the police made sure to end him."
      wait 1.5]]
  ca
  crt 1
  ask turtle 0 [setxy 0 0
    set shape "toothpick charlie"
    SET LABEL "TOOTHPICK           "
    set size 400]
  wait 0.9
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "So, Spats made sure to have him killed."
      ]]
  wait 0.5
  ask turtle 0 [setxy 0 0
    set shape "deadtoothpick"
    SET LABEL "TOOTHPICK           "
    set size 400]
  wait 2.5


  end


to scene-3
  ca
  crt 6

  ask turtles [set heading 0]
   ask turtle 0 [setxy -375 -200
    set shape "spats"
    SET LABEL "SPATS"
    set size 200]
  ask turtle 1 [setxy -150 -200
    set shape "henchmen"
    set size 200]
  ask turtle 2 [setxy -200 -200
    set shape "henchmen"
    set size 200]
  ask turtle 3 [setxy -250 -200
    set shape "henchmen"
    set size 200]
  ask turtle 4 [setxy 150 -50
    set shape "joe"
    set label "JOE    "
    set size 200]
  ask turtle 5 [setxy 285 -50
    set shape "jerry"
    SET LABEL "JERRY      "
    set size 200]
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "The gangbangers fled the scene of their revenge against Toothpick."
      wait 1.5
      ]]
  wait 0.5
  repeat 3 [
  ask turtle 0 [fd 50]
ask turtle 1 [fd 50]
ask turtle 2 [fd 50]
ask turtle 3 [fd 50]
wait 0.009
ask turtle 0 [fd 50]
ask turtle 1 [fd 50]
ask turtle 2 [fd 50]
ask turtle 3 [fd 50]
wait 0.009
ask turtle 0 [fd 50]
ask turtle 1 [fd 50]
ask turtle 2 [fd 50]
ask turtle 3 [fd 50]
wait 0.009]
  wait 0.1
  ask turtle 0
[set heading (270 + 45)
  fd 20
  wait 0.1
  die]
ask turtles [ if who >= 1 and who <= 3 [
  wait 0.01
  right 60
  wait 1
  set heading 270 + 45
  fd 35
  wait 0.1
  die]]
ask patches [ if pxcor = 220 and pycor = -50 [set plabel "But, Joe and Jerry were in the wrong place. At the wrong time. And SPOTTED. So they frantically ran about."]
  ]
wait 0.5
repeat 10 [
ask turtle 4 [right random 20]
ask turtle 5 [right random 20]
wait 0.05
ask turtle 4 [fd random 50]
ask turtle 5 [fd random 50]
wait 0.05
  ask turtle 4 [lt random 20]
ask turtle 5 [lt random 20]
;ask turtle 4 [die]
;ask turtle 5 [die]
wait 0.05
ask turtle 4 [fd 300]
ask turtle 5 [fd 300]
wait 0.01]
ask patches [ if pxcor = 214 and pycor = -100 [set plabel "They needed a disguise!"]]

wait 1
end

to scene-4
  ca
  crt 2
  ask turtles [set heading 0]
  ask turtle 0 [setxy -105 -50
    set shape "joe"
    set label "JOE    "
    set size 300]
  ask turtle 1 [setxy 120 -50
    set shape "jerry"
    SET LABEL "JERRY      "
    set size 300]
  ask patches [ if pxcor = 230 and pycor = 160 [set plabel "Conversion Factor :  Joe --> Josephine   and   Jerry ---> Daphne"]]
  wait 1.5
  ask turtle 0 [setxy -105 -50
    set shape "joesephine"
    set label "JOEsephine    "
    set size 300]
  ask turtle 1 [setxy 120 -50
    set shape "daphne"
    SET LABEL "Daphne      "
    set size 300]
  wait 0.5
end

to scene-5
  ca
  import-pcolors "fixtrainscene.PNG"
  ;https://s-media-cache-ak0.pinimg.com/originals/4b/b4/8f/4bb48f26fc1ac7a4fd1c57b34766e982.jpg

  crt 52
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "They joined Sweet Sue's Societ Syncopators, an all-female band headed to Miami."]]
  ask turtles [set heading 0]
  ask turtle 1 [
    setxy 380 -50
    set shape "society"
    set size 200]
  ask turtle 2 [ setxy 380 -200
    set shape "society"
    set size 200]
  ask turtle 3 [setxy -35 -50
    set shape "joesephine"
    set label "JOEsephine    "
    set size 200]
  ask turtle 4 [setxy 100 -50
    set shape "daphne"
    SET LABEL "Daphne      "
    set size 200]
  ask turtle 5 [setxy -375 -200
    set shape "sweetsue"
    SET LABEL "Sweet Sue"
    set size 200]
  ask turtle 0 [setxy -150 -200
    set shape "Marilyn"
    set label "Sugar Kane    "
    set size 200]

  ask turtle 6 [setxy -55 -74
    set shape "saxophone"
    set size 150]
  ask turtle 7 [setxy 190 -50
    set shape "bass"
    set size 200]
  ask turtle 8 [setxy -152 -250
    set shape "ukulele"

    set size 200]
  ask turtles [if who >= 9 and who <= 29 [
    setxy random 600 random 800
    set shape "music notes 1"
    set size 25]]
  ask turtles [if who >= 30 and who <= 39 [
    setxy random 600 random 800
    set shape "music notes 2"
    set size 25]]
  ask turtles [if who >= 40 and who <= 49 [
    setxy random 600 random 800
    set shape "music notes 3"
    set size 25]]

   wait 0.5
   repeat 2[
   ask turtles [if who >= 9 and who <= 49 [repeat 100 [fd  random 100
      ]]
   ]
   ask turtles [if who >= 9 and who <= 49 [repeat 100 [right random 60
      ]]
   ]
   wait 0.1]
       wait 0.5
       ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "The beautiful ukulele player and singer Sugar immediately caught their attention."]]
       wait 1
       ask turtle 50 [ setxy -55 -74
    set shape "heart"
    set size 100]
       ask turtle 51 [setxy 160 -50
    set shape "heart"
    set size 150]
       wait 0.5
       ask turtle 50 [rt 180]
       ask turtle 50 [fd 150]
       ask turtle 50 [set heading 270]
       ask turtle 50 [fd 80]
       ask turtle 51 [rt 180]
       ask turtle 51 [fd 200]
       ask turtle 51 [set heading 270]
       ask turtle 51 [fd 230]
       wait 2


end

  to scene-6
    ca
    ask patches [ if pxcor = 0 and pycor = 0 [ set plabel "They traveled for days and then weeks...."]]

       crt 50
    ask turtle 0 [set heading 90
    setxy  300 -260
    set shape "sstrain"
    set size 300]
    ask turtle 1 [set heading 90
    setxy  -10 -250
    set shape "sstrainback"
    set size 350]
    repeat 30 [
    ask turtle 0 [fd 90]
    ask turtle 1 [fd 90]
    wait 0.09]
    ask patches [ if pxcor = 0 and pycor = 0 [ set plabel "As hearts flew around Sugar, Joesephine, and Daphne."]]
    ask turtles [if who >= 2 and who <= 49 [set heading 90
    setxy  random 300 random -260
    set shape "heart"
    set size 30]]

     wait 0.5
   repeat 2[
   ask turtles [if who >= 2 and who <= 49 [repeat 100 [fd  random 100
      ]]
   ]
   ask turtles [if who >= 2 and who <= 49 [repeat 100 [right random 60
      ]]
   ]
   wait 0.1]
       wait 0.5
  end

  to scene-7
    ca
    import-pcolors "beachscene3.PNG"
    ;http://img1.10bestmedia.com/Images/Photos/96123/captiva-beach-captiva_54_990x660_201404211817.jpg
    ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "They reached Florida at last!"]]
    wait 3
    ca
    import-pcolors "dancehallscene.PNG"
    ;https://s-media-cache-ak0.pinimg.com/originals/c1/b5/c1/c1b5c12135853864745f5e1a3021a19f.jpg
    crt 52
  ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "They jammed with all their hearts for the sun-burned Floridians."]]
  ask turtles [set heading 0]
  ask turtle 1 [
    setxy 380 -50
    set shape "society"
    set size 200]
  ask turtle 2 [ setxy 380 -200
    set shape "society"
    set size 200]
  ask turtle 3 [setxy -35 -50
    set shape "joesephine"
    set label "JOEsephine    "
    set size 200]
  ask turtle 4 [setxy 100 -50
    set shape "daphne"
    SET LABEL "Daphne      "
    set size 200]
  ask turtle 5 [setxy -375 -200
    set shape "sweetsue"
    SET LABEL "Sweet Sue"
    set size 200]
  ask turtle 0 [setxy -150 -200
    set shape "Marilyn"
    set label "Sugar Kane    "
    set size 200]

  ask turtle 6 [setxy -55 -74
    set shape "saxophone"
    set size 150]
  ask turtle 7 [setxy 190 -50
    set shape "bass"
    set size 200]
  ask turtle 8 [setxy -152 -250
    set shape "ukulele"

    set size 200]
  ask turtles [if who >= 9 and who <= 29 [
    setxy random 600 random 800
    set shape "music notes 1"
    set size 25]]
  ask turtles [if who >= 30 and who <= 39 [
    setxy random 600 random 800
    set shape "music notes 2"
    set size 25]]
  ask turtles [if who >= 40 and who <= 49 [
    setxy random 600 random 800
    set shape "music notes 3"
    set size 25]]

   wait 0.8
   repeat 50[
   ask turtles [repeat 10 [lt  random 20
      ]]

   ask turtles [repeat 10 [right random 20
      ]]

   wait 0.1]
       wait 0.5
       ask patches [ if pxcor = 415 and pycor = -355 [ set plabel "JOEsephine and Daphne nearly forgot about Spats an his henchmen...."]]
       wait 1
       ask turtles [set heading 0]
       wait 0.5


  end

  to scene-8
    ca
    import-pcolors "beachscene3.PNG"
    crt 51
    ask turtles [set heading 0]
    ask turtle 0 [set shape "marilyn"
      setxy -173 76
      set size 200]
    ask turtle 1 [set shape "joesephine"
      setxy -293 76
      set size 200]
    ask turtle 2 [set shape "heart"
      setxy -243 176
      set size 60]
     ask turtle 3 [setxy 400 -200
    set shape "daphne"
    set size 200]
     ask turtle 4 [setxy 330 -200
       set shape "broken heart"
       set size 80]
     ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "Daphne started to grow jealous of JOEsephine's growing relationship with Sugar."]]
     wait 3
     ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "But, sugar had enough of sax players and was looking for a millionaire."]]
     wait 3
     ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "So, Joe had to undergo his third transformation."]]
     wait 3
     ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "New Conversion: Joe--> JOEsephine --> Junior (heir to Shell Oil)"]]
     ask turtle 1 [set shape "junior"
      setxy -293 76
      set size 200]
     wait 3
      ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "Now Sugar was hooked"]]
      wait 3
      ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "But, Junior put up a facade of disinterest to draw her in."]]
      wait 3
      ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "As for Daphne?"]]
      wait 2.3
      ask turtle 5 [setxy -375 -200
        set shape "osgood"
        set label "Osgood                  "
        set size 170]
      ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "The actual owner of Shell Oil, Osgood, took an interest."]]
      ask turtle 50 [setxy  -320 -200
        set shape "heart"
        set size 60]
      wait 3
      ask patches [ if pxcor = 391 and pycor = 74 [ set plabel "Daphne though not interested in him, was interested in his money."]]
      wait 3
      ask turtles [ if who >= 6 and  who <= 49 [setxy random 980 290
        set shape "dollar bill"
        set size 200]]
     ask turtles [ if who >= 6 and  who <= 49 [repeat 10 [rt random 50 fd random 300
         stamp] wait 0.05]]
     wait 0.8
  end
  to scene-9
    ca
    import-pcolors "conferenceroom.PNG"
    crt 6
    ask turtles [set heading 0]
    ask turtle 0 [set shape "spats"
      setxy 339 -145
      set size 200]
    ask turtle 1 [setxy -200 -140
    set shape "henchmen"
    set size 200]
  ask turtle 2 [setxy -250 -140
    set shape "henchmen"
    set size 200]
  ask turtle 3 [setxy -300 -140
    set shape "henchmen"
    set size 200]
  ask turtle 4 [setxy -23 -41
    set shape "joesephine"
    set size 200]
  ask turtle 5 [setxy 123 -41
    set shape "daphne"
    set size 200]
  ask patches [ if pxcor = 400 and pycor = -276 [ set plabel "Joe and Jerry attended a Friends of Italian Opera conference."]]
  wait 3
  ask patches [ if pxcor = 400 and pycor = -276 [ set plabel "But they saw Spats and his henchmen and were recognized as the murder witnesses!"]]
  wait 3
  ask patches [ if pxcor = 400 and pycor = -276 [ set plabel "And the wild goose chase began!"]]
  wait 0.5
repeat 20 [
  ask turtle 0 [right random 10]
ask turtle 1 [right random 10]
ask turtle 2 [right random 10]
ask turtle 3 [right random 10]
ask turtle 4 [right random 10]
ask turtle 5 [right random 10]
wait 0.05
ask turtle 0 [fd random 140]
ask turtle 1 [fd random 120]
ask turtle 2 [fd random 170]
ask turtle 3 [fd random 100]
ask turtle 4 [fd random 130]
ask turtle 5 [fd random 150]
wait 0.05
  ask turtle 0 [lt random 10]
ask turtle 1 [lt random 10]
ask turtle 2 [lt random 10]
ask turtle 3 [lt random 10]
ask turtle 4 [lt random 10]
ask turtle 5 [lt random 10]
wait 0.05
ask turtle 0 [fd random 140]
ask turtle 1 [fd random 120]
ask turtle 2 [fd random 170]
ask turtle 3 [fd random 100]
ask turtle 4 [fd random 130]
ask turtle 5 [fd random 150]
wait 0.01]
wait 0.5
  end

  to scene-10
    ca
    import-pcolors "finalscene.PNG"
    crt 4
    ask turtles [set heading 270 + 25]
    ask turtle 0 [setxy 182 215
      set shape "osgood"
      set size 200]
    ask turtle 1 [setxy 98 -157
      set shape "daphne"
      set size 200]
    ask turtle 2 [setxy -179 4
      set shape "joesephine"
      set size 200]
    wait 0.9
    ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood, inseparable from Daphne, joined the two in their escape thinking he was leaving to wed with Daphne."]]
    wait 2
     ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Sugar came after, finally figuring out Junior and JOEsephine were the same."]]
    ask turtle 3 [setxy -408 -281
      set shape "marilyn"
      set size 200]
    ask turtle 3 [
      set heading 0
      wait 0.5
      fd 25
      wait 0.01
      fd 25
      wait 0.01
      fd 25
      wait 0.01
      fd 25
      wait 0.01
      fd 25
      wait 0.01
      setxy -358 -156
      wait 0.01
      setxy -308 -156
      wait 0.01
      setxy -298 -156
      wait 0.01
      set heading 270 + 5
      wait 0.01
      set heading 270 + 10
      wait 0.01
      set heading 270 + 15
      wait 0.01
      set heading 270 + 20
      wait 0.01
      set heading 270 + 25
      wait 0.01
      ]
    ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Joe: Go back and find a real millionaire. All I can offer is the fuzzy end of a lollipop."]]
    ask turtle 2 [
      set shape "joe"]
    wait 3
    ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Sugar: I don't care."]]
      wait 3
      ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: My mother is giving you her wedding gown."]]
        wait 3
        ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: I can't... we're not built the same way."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: It can be altered."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: No! I'm not really pink-headed!."]]

          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: I don't care."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: I smoke... all the time."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: Fine with me."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: I'm a sleaze! Been living with a saxophone player!"]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: I forgive you."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: I can't have children."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: We can adopt."]]
          wait 3
          ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Daphne: I'm a man!."]]
      wait 1
      ask turtle 1 [setxy 98 -157
      set shape "jerry"
      set size 200]
      wait 2
      ask patches [ if pxcor = 54 and pycor = 344 [set plabel "Osgood: Well, nobody's perfect."]]
      wait 4
      ca
      ask patches [ if pxcor = 0 and pycor = 0 [set plabel "THE END...."]]
  end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
1201
802
490
380
1.0
1
15
1
1
1
0
1
1
1
-490
490
-380
380
0
0
1
ticks
30.0

BUTTON
26
32
95
65
Set Up
set-up
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
22
76
99
109
Animate
background\nwait 0.1\ncars-move\nopeningmessage\nscene-two\nanimscene2\nscene-3\nscene-4\nscene-5\nscene-6\nscene-7\nscene-8\nscene-9\nscene-10
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

apple juice
true
0
Polygon -14835848 true false 128 94 131 79 132 69 133 56 133 44 130 41 123 41 121 36 121 31 123 27 130 26 141 26 153 26 160 26 163 29 163 36 160 39 155 40 153 43 153 56 153 70 157 88 162 95 175 107 182 122 186 136 191 155 192 191 190 235 182 245 168 247 141 249 111 243 95 230 94 199 95 188 94 177 94 158 98 134 107 108 117 98 126 95
Rectangle -6459832 true false 117 142 180 172
Circle -2674135 true false 124 150 14
Circle -2674135 true false 142 149 18
Circle -2674135 true false 162 151 14
Line -13840069 false 128 105 101 168
Line -13840069 false 182 183 155 237

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bass
true
0
Rectangle -955883 true false 132 11 156 79
Polygon -6459832 true false 103 166 107 172 108 180 108 193 102 200 98 207 96 215 90 227 88 238 88 254 93 267 102 282 122 293 149 296 177 294 191 280 202 253 203 228 202 209 189 193 183 188 180 171 186 161 198 151 203 134 208 115 209 105 208 90 202 81 193 71 176 65 159 59 136 57 120 60 109 66 96 79 88 95 85 114 83 133 89 148 97 159 103 167
Circle -16777216 true false 115 149 60
Line -7500403 true 132 7 138 261
Rectangle -1184463 true false 126 2 160 30
Circle -7500403 true true 116 4 12
Circle -7500403 true true 154 17 12
Circle -7500403 true true 116 16 12
Circle -7500403 true true 153 3 12
Line -7500403 true 137 8 143 262
Line -7500403 true 145 8 151 262
Line -7500403 true 151 6 157 260
Rectangle -2674135 true false 133 252 163 265

bird side
false
0
Polygon -7500403 true true 0 120 45 90 75 90 105 120 150 120 240 135 285 120 285 135 300 150 240 150 195 165 255 195 210 195 150 210 90 195 60 180 45 135
Circle -16777216 true false 38 98 14

boat
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 158 33 230 157 182 150 169 151 157 156
Polygon -7500403 true true 149 55 88 143 103 139 111 136 117 139 126 145 130 147 139 147 146 146 149 55

boat 2
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 157 54 175 79 174 96 185 102 178 112 194 124 196 131 190 139 192 146 211 151 216 154 157 154
Polygon -7500403 true true 150 74 146 91 139 99 143 114 141 123 137 126 131 129 132 139 142 136 126 142 119 147 148 147

boat 3
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 158 37 172 45 188 59 202 79 217 109 220 130 218 147 204 156 158 156 161 142 170 123 170 102 169 88 165 62
Polygon -7500403 true true 149 66 142 78 139 96 141 111 146 139 148 147 110 147 113 131 118 106 126 71

boat top
true
0
Polygon -7500403 true true 150 1 137 18 123 46 110 87 102 150 106 208 114 258 123 286 175 287 183 258 193 209 198 150 191 87 178 46 163 17
Rectangle -16777216 false false 129 92 170 178
Rectangle -16777216 false false 120 63 180 93
Rectangle -7500403 true true 133 89 165 165
Polygon -11221820 true false 150 60 105 105 150 90 195 105
Polygon -16777216 false false 150 60 105 105 150 90 195 105
Rectangle -16777216 false false 135 178 165 262
Polygon -16777216 false false 134 262 144 286 158 286 166 262
Line -16777216 false 129 149 171 149
Line -16777216 false 166 262 188 252
Line -16777216 false 134 262 112 252
Line -16777216 false 150 2 149 62

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

broken heart
true
0
Polygon -16777216 true false 175 266 186 259 200 247 211 237 220 227 230 213 242 191 250 167 253 142 253 125 248 108 236 95 225 83 215 79 199 76 185 79 172 91 162 113 178 130 157 146 186 179 167 181 182 207 165 214 176 226 168 232 175 265
Polygon -16777216 true false 138 242 127 235 113 223 102 213 93 203 83 189 71 167 63 143 60 118 60 101 65 84 77 71 88 59 98 55 114 52 128 55 141 67 151 89 135 106 156 122 127 155 146 157 131 183 148 190 137 202 145 208 138 241

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

building store
false
0
Rectangle -7500403 true true 30 45 45 240
Rectangle -16777216 false false 30 45 45 165
Rectangle -7500403 true true 15 165 285 255
Rectangle -16777216 true false 120 195 180 255
Line -7500403 true 150 195 150 255
Rectangle -16777216 true false 30 180 105 240
Rectangle -16777216 true false 195 180 270 240
Line -16777216 false 0 165 300 165
Polygon -7500403 true true 0 165 45 135 60 90 240 90 255 135 300 165
Rectangle -7500403 true true 0 0 75 45
Rectangle -16777216 false false 0 0 75 45

bullet
false
0
Polygon -1 true false 120 120 135 120
Rectangle -7500403 true true 108 128 133 149
Circle -7500403 true true 125 128 21
Polygon -1 true false 134 132 139 133 139 137 139 139 136 134

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

coin heads
false
0
Circle -7500403 true true 15 15 270
Circle -16777216 false false 22 21 256
Line -16777216 false 165 180 192 196
Line -16777216 false 42 140 83 140
Line -16777216 false 37 151 91 151
Line -16777216 false 218 167 265 167
Polygon -16777216 false false 148 265 75 229 86 207 113 191 120 175 109 162 109 136 86 124 137 96 176 93 210 108 222 125 203 157 204 174 190 191 232 230
Polygon -16777216 false false 212 142 182 128 154 132 140 152 149 162 144 182 167 204 187 206 193 193 190 189 202 174 193 158 202 175 204 158
Line -16777216 false 164 154 182 152
Line -16777216 false 193 152 202 153
Polygon -16777216 false false 60 75 75 90 90 75 105 75 90 45 105 45 120 60 135 60 135 45 120 45 105 45 135 30 165 30 195 45 210 60 225 75 240 75 225 75 210 90 225 75 225 60 210 60 195 75 210 60 195 45 180 45 180 60 180 45 165 60 150 60 150 45 165 45 150 45 150 30 135 30 120 60 105 75

coin tails
false
0
Circle -7500403 true true 15 15 270
Circle -16777216 false false 20 17 260
Line -16777216 false 130 92 171 92
Line -16777216 false 123 79 177 79
Rectangle -7500403 true true 57 101 242 133
Rectangle -16777216 false false 45 180 255 195
Rectangle -16777216 false false 75 120 225 135
Polygon -16777216 false false 81 226 70 241 86 248 93 235 89 232 108 243 97 256 118 247 118 265 123 248 142 247 129 253 130 271 145 269 131 259 162 245 153 262 168 268 197 259 177 255 187 245 174 243 193 235 209 251 193 234 225 244 208 227 240 240 222 218
Rectangle -7500403 true true 91 210 222 226
Polygon -16777216 false false 65 70 91 50 136 35 181 35 226 65 246 86 241 65 196 50 166 35 121 50 91 50 61 95 54 80 61 65
Polygon -16777216 false false 90 135 60 135 60 180 90 180 90 135 120 135 120 180 150 180 150 135 180 135 180 180 210 180 210 135 240 135 240 180 210 180 210 135

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

daphne
true
0
Rectangle -13840069 true false 162 230 169 266
Rectangle -13840069 true false 111 228 118 264
Circle -955883 true false 37 50 194
Polygon -11221820 true false 98 167 108 164 114 159 121 153 124 148 127 140 127 134 125 124 123 120 121 118 117 113 117 107 118 102 123 101 132 98 138 101 143 102 145 111 140 121 140 132 140 141 143 148 153 157 161 161 170 167 178 175 181 183 183 194 176 205 168 208 154 208 144 203 131 208 118 212 96 210 88 205 87 196 88 189 89 175 101 164
Circle -1 true false 90 152 44
Circle -1 true false 140 162 30
Circle -2674135 true false 102 166 22
Circle -2674135 true false 142 168 22
Circle -16777216 true false 109 174 10
Circle -16777216 true false 147 174 10
Circle -8630108 true false 130 191 10
Polygon -2064490 true false 115 260 107 261 95 265 91 262 91 268 95 273 102 273 107 272 111 269 111 274 121 274 121 262 113 260
Polygon -8630108 true false 168 261 176 262 188 266 192 263 192 269 188 274 181 274 176 273 172 270 172 275 162 275 162 263 170 261
Circle -13840069 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 49 65 170
Polygon -11221820 true false 230 135 236 153 240 163 245 176 249 187 245 201 233 215 224 225 222 237 221 248 213 254 209 255 201 257 197 255 197 249 197 240 199 239 200 242 200 247 204 248 209 248 213 240 213 237 209 235 204 237 201 237 201 234 207 232 212 231 216 231 217 225 218 220 222 210 236 190 236 186 235 179 230 173 225 167 219 154 216 144 216 139 229 135
Polygon -5825686 true false 216 142 216 127 218 122 223 118 228 118 232 126 233 132 233 145 225 145 216 145
Polygon -11221820 true false 33 124 27 142 23 152 18 165 14 176 18 190 30 204 39 214 41 226 42 237 50 243 54 244 62 246 66 244 66 238 66 229 64 228 63 231 63 236 59 237 54 237 50 229 50 226 54 224 59 226 62 226 62 223 56 221 51 220 47 220 46 214 45 209 41 199 27 179 27 175 28 168 33 162 38 156 44 143 47 133 47 128 34 124
Polygon -5825686 true false 30 133 30 118 32 113 37 109 42 109 46 117 47 123 47 136 39 136 30 136
Polygon -2064490 true false 95 209 85 233 79 216 67 219 80 199 57 187 74 184 54 151 70 154 68 131 92 144 85 97 96 110 93 68 105 84 120 76 120 88 158 74 152 91 175 91 170 114 191 116 173 145 208 146 189 171 204 175 186 208 191 223 169 212 179 199 184 190 181 181 172 175 167 168 156 160 146 154 138 137 138 122 141 118 144 109 141 103 131 103 128 102 123 114 126 124 129 130 127 137 131 142 138 152 116 153 106 153 100 162 94 164 94 176 89 186 96 193 90 200 97 210

deadtoothpick
false
0
Polygon -14835848 true false 65 175 64 185 63 190 61 196 53 203 51 206 49 209 48 213 50 227 60 242 65 249 68 246 67 239 62 232 60 224 60 212 67 210 69 216 67 224 68 227 76 222 77 211 77 204 74 196 74 175 65 173
Polygon -14835848 true false 220 174 221 184 222 189 224 195 232 202 234 205 236 208 237 212 235 226 225 241 220 248 217 245 218 238 223 231 225 223 225 211 218 209 216 215 218 223 217 226 209 221 208 210 208 203 211 195 211 174 220 172
Rectangle -10899396 true false 135 75 165 90
Circle -13840069 true false 110 5 80
Polygon -10899396 true false 104 89 126 195 92 272 108 273 116 274 155 185 168 275 184 278 192 273 179 194 194 89
Polygon -1 true false 59 193 76 189 101 123 119 193 179 193 191 119 211 182 226 181 194 88 164 88 149 103 149 148 134 88 94 89
Polygon -13345367 true false 117 87 118 179 118 194 96 240 117 250 134 254 148 224 157 267 186 266 198 259 178 194 178 87 169 87 163 134 133 134 126 86
Polygon -6459832 true false 116 4 113 21 71 33 71 40 109 48 117 34 144 27 180 26 188 36 224 23 222 14 178 16 167 0
Polygon -955883 true false 152 58 147 63 145 66 141 66 134 66 124 65 123 64 116 64 116 68 124 71 135 71 146 69 152 65 153 68 157 68 158 62 152 59
Polygon -8630108 true false 138 73 145 71 149 68 150 73 155 67 158 74 151 75 139 73
Polygon -1184463 true false 153 74 251 33 253 34 154 75 153 74
Polygon -5825686 true false 90 268 81 272 69 277 61 277 58 271 58 265 55 259 51 259 47 259 45 266 47 276 60 290 71 293 84 293 90 288 96 285 105 285 107 286 112 290 121 288 123 283 121 274 114 267 91 266
Polygon -5825686 true false 194 271 203 275 215 280 223 280 226 274 226 268 229 262 233 262 237 262 239 269 237 279 224 293 213 296 200 296 194 291 188 288 179 288 177 289 172 293 163 291 161 286 163 277 170 270 193 269
Polygon -2674135 true false 129 46 122 41 127 33 134 43 142 34 147 41 141 47 146 56 140 62 136 54 130 60 123 58 132 48
Polygon -2674135 true false 158 44 151 39 156 31 163 41 171 32 176 39 170 45 175 54 169 60 165 52 159 58 152 56 161 46

dollar bill
true
0
Rectangle -7500403 true true 15 90 285 210
Rectangle -1 true false 30 105 270 195
Circle -7500403 true true 120 120 60
Circle -7500403 true true 120 135 60
Circle -7500403 true true 254 178 26
Circle -7500403 true true 248 98 26
Circle -7500403 true true 18 97 36
Circle -7500403 true true 21 178 26
Circle -7500403 true true 66 135 28
Circle -1 true false 72 141 16
Circle -7500403 true true 201 138 32
Circle -1 true false 209 146 16
Rectangle -16777216 true false 64 112 86 118
Rectangle -16777216 true false 90 112 124 118
Rectangle -16777216 true false 128 112 188 118
Rectangle -16777216 true false 191 112 237 118
Rectangle -1 true false 106 199 128 205
Rectangle -1 true false 90 96 209 98
Rectangle -7500403 true true 60 168 103 176
Rectangle -7500403 true true 199 127 230 133
Line -7500403 true 59 184 104 184
Line -7500403 true 241 189 196 189
Line -7500403 true 59 189 104 189
Line -16777216 false 116 124 71 124
Polygon -1 true false 127 179 142 167 142 160 130 150 126 148 142 132 158 132 173 152 167 156 164 167 174 176 161 193 135 192
Rectangle -1 true false 134 199 184 205

dot
false
0
Circle -7500403 true true 90 90 120

extras
true
0
Polygon -6459832 true false 57 141 43 136 37 129 32 120 31 93 38 76 53 66 71 56 99 55 119 48 119 61 124 77 127 94 131 115 123 129 123 113 121 102 118 88 111 83 100 82 94 71 84 63 77 66 68 74 51 87 41 97 37 103 43 116 54 126 55 137 60 140
Polygon -1184463 true false 118 147 117 162 109 168 100 182 92 191 73 202 61 204 48 204 38 203 32 191 32 179 37 164 44 156 63 149 73 153 74 166 67 180 55 183 64 167 62 164 56 163 47 171 47 187 65 190 77 183 86 165 86 132 86 115 92 82 107 60 123 44 140 39 158 33 171 33 184 42 188 35 185 53 198 39 185 65 200 56 183 71 185 75 193 90 201 111 201 141 192 161 181 174 166 160 166 147 185 142 188 133 183 108 178 94 165 92 160 83 155 75 142 72 129 79 121 91 112 100 101 107 99 119 111 135 120 150
Polygon -14835848 true false 47 172 46 168 46 163 47 157 53 151 54 146 54 140 51 132 47 126 41 120 36 114 34 106 37 99 41 93 47 88 54 84 58 79 63 70 70 64 78 63 87 63 95 67 95 71 100 78 107 81 114 86 120 97 124 120 123 126 120 132 108 137 101 140 100 150 102 155 111 166 122 172 128 178 133 183 140 199 141 215 136 239 125 245 114 251 96 252 72 247 55 241 45 228 44 213 44 187 45 178
Polygon -2064490 true false 111 180 110 176 110 171 111 165 117 159 118 154 118 148 115 140 111 134 105 128 100 122 98 114 101 107 105 101 111 96 118 92 122 87 127 78 134 72 142 71 151 71 159 75 159 79 164 86 171 89 178 94 184 105 188 128 187 134 184 140 172 145 165 148 164 158 166 163 175 174 186 180 192 186 197 191 204 207 205 223 200 247 189 253 178 259 160 260 136 255 119 249 109 236 108 221 108 195 109 186
Polygon -13791810 true false 176 174 175 170 175 165 176 159 182 153 183 148 183 142 180 134 176 128 170 122 165 116 163 108 166 101 170 95 176 90 183 86 187 81 192 72 199 66 207 65 216 65 224 69 224 73 229 80 236 83 243 88 249 99 253 122 252 128 249 134 237 139 230 142 229 152 231 157 240 168 251 174 257 180 262 185 269 201 270 217 265 241 254 247 243 253 225 254 201 249 184 243 174 230 173 215 173 189 174 180
Circle -1 true false 172 92 34
Circle -1 true false 113 97 32
Circle -1 true false 212 94 28
Circle -1 true false 72 95 26
Circle -1 true false 43 92 26
Circle -16777216 true false 182 102 14
Circle -16777216 true false 121 106 14
Circle -16777216 true false 78 102 14
Circle -16777216 true false 48 99 14
Circle -16777216 true false 220 102 14
Polygon -5825686 true false 132 134 135 132 138 132 140 136 145 134 147 134 151 136 146 138 142 139 136 139 149 138 142 143 138 144 133 141 131 135
Polygon -1 true false 184 144 170 139 164 132 159 123 158 96 165 79 180 69 198 59 226 58 246 51 246 64 251 80 254 97 258 118 250 132 250 116 248 105 245 91 238 86 227 85 221 74 211 66 204 69 195 77 178 90 168 100 164 106 170 119 181 129 182 140 187 143
Polygon -13791810 true false 204 128 220 132
Polygon -2674135 true false 198 125 224 125 218 138 214 141 206 141 198 136 196 126 201 126
Polygon -2674135 true false 61 121 87 121 81 134 77 137 69 137 61 132 59 122 64 122

eyeball
false
0
Circle -1 true false 22 20 248
Circle -7500403 true true 83 81 122
Circle -16777216 true false 122 120 44

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

factory
false
0
Rectangle -7500403 true true 76 194 285 270
Rectangle -7500403 true true 36 95 59 231
Rectangle -16777216 true false 90 210 270 240
Line -7500403 true 90 195 90 255
Line -7500403 true 120 195 120 255
Line -7500403 true 150 195 150 240
Line -7500403 true 180 195 180 255
Line -7500403 true 210 210 210 240
Line -7500403 true 240 210 240 240
Line -7500403 true 90 225 270 225
Circle -1 true false 37 73 32
Circle -1 true false 55 38 54
Circle -1 true false 96 21 42
Circle -1 true false 105 40 32
Circle -1 true false 129 19 42
Rectangle -7500403 true true 14 228 78 270

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

heart
false
0
Polygon -2674135 true false 138 263 122 252 110 243 101 233 88 217 70 193 59 174 51 156 46 132 44 113 50 94 57 78 70 65 88 55 107 53 126 58 139 77 144 89 153 111 162 90 173 71 186 58 201 55 219 58 235 64 247 78 256 98 261 131 262 144 257 168 250 181 236 204 198 246 171 269 151 279 138 263

henchmen
true
0
Polygon -2064490 true false 176 275 186 276 194 283 207 288 218 283 216 276 209 276 209 278 208 279 207 273 215 269 222 269 225 274 226 282 225 289 222 296 212 302 200 302 187 299 184 295 184 288 182 285 178 285 177 289 176 298 165 301 165 311 163 311 162 291 162 274 176 274
Polygon -2064490 true false 125 278 115 279 107 286 94 291 83 286 85 279 92 279 92 281 93 282 94 276 86 272 79 272 76 277 75 285 76 292 79 299 89 305 101 305 114 302 117 298 117 291 119 288 123 288 124 292 125 301 136 304 136 314 138 314 139 294 139 277 125 277
Polygon -955883 true false 88 148 86 154 84 162 81 167 79 176 77 188 73 198 71 207 69 217 66 226 61 230 56 233 48 237 45 241 45 244 45 248 47 254 53 261 60 273 64 280 68 280 68 273 66 267 64 261 61 257 61 251 61 245 66 243 70 245 70 248 70 253 70 257 70 258 72 259 76 253 77 249 77 244 77 239 74 234 73 232 76 221 80 212 88 196 92 184 102 161 103 149 90 148
Polygon -955883 true false 212 148 214 154 216 162 219 167 221 176 223 188 227 198 229 207 231 217 234 226 239 230 244 233 252 237 255 241 255 244 255 248 253 254 247 261 240 273 236 280 232 280 232 273 234 267 236 261 239 257 239 251 239 245 234 243 230 245 230 248 230 253 230 257 230 258 228 259 224 253 223 249 223 244 223 239 226 234 227 232 224 221 220 212 212 196 208 184 198 161 197 149 210 148
Polygon -10899396 true false 195 90 215 150 198 164 165 105
Polygon -10899396 true false 105 90 85 150 102 164 135 105
Rectangle -11221820 true false 135 75 162 95
Circle -1184463 true false 108 3 84
Polygon -10899396 true false 105 90 120 195 112 283 140 285 144 243 150 225 158 242 162 284 188 282 180 195 195 90
Polygon -6459832 true false 120 90 105 90 180 195 180 165
Line -6459832 false 109 105 139 105
Line -6459832 false 122 125 151 117
Line -6459832 false 137 143 159 134
Line -6459832 false 158 179 181 158
Line -6459832 false 146 160 169 146
Rectangle -6459832 true false 120 193 180 201
Polygon -6459832 true false 122 4 107 16 102 39 105 53 148 34 192 27 189 17 172 2 145 0
Polygon -7500403 true true 183 90 240 15 247 22 193 90
Rectangle -6459832 true false 114 187 128 208
Rectangle -6459832 true false 177 187 191 208
Circle -1 true false 118 27 40
Circle -2674135 true false 125 34 26
Circle -16777216 true false 132 41 13
Circle -1 true false 155 33 28
Circle -2674135 true false 162 39 15
Circle -16777216 true false 165 43 8
Polygon -8630108 true false 149 74 149 73 149 69 149 66 149 64 152 59 154 59 156 59 157 59 158 61 159 65 159 69 162 66 162 62 166 60 168 60 169 60 171 64 171 67 171 72 170 73 163 74 155 74 160 76 168 76 166 82 157 82 151 79 150 70

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

house bungalow
false
0
Rectangle -7500403 true true 210 75 225 255
Rectangle -7500403 true true 90 135 210 255
Rectangle -16777216 true false 165 195 195 255
Line -16777216 false 210 135 210 255
Rectangle -16777216 true false 105 202 135 240
Polygon -7500403 true true 225 150 75 150 150 75
Line -16777216 false 75 150 225 150
Line -16777216 false 195 120 225 150
Polygon -16777216 false false 165 195 150 195 180 165 210 195
Rectangle -16777216 true false 135 105 165 135

house colonial
false
0
Rectangle -7500403 true true 270 75 285 255
Rectangle -7500403 true true 45 135 270 255
Rectangle -16777216 true false 124 195 187 256
Rectangle -16777216 true false 60 195 105 240
Rectangle -16777216 true false 60 150 105 180
Rectangle -16777216 true false 210 150 255 180
Line -16777216 false 270 135 270 255
Polygon -7500403 true true 30 135 285 135 240 90 75 90
Line -16777216 false 30 135 285 135
Line -16777216 false 255 105 285 135
Line -7500403 true 154 195 154 255
Rectangle -16777216 true false 210 195 255 240
Rectangle -16777216 true false 135 150 180 180

house efficiency
false
0
Rectangle -7500403 true true 180 90 195 195
Rectangle -7500403 true true 90 165 210 255
Rectangle -16777216 true false 165 195 195 255
Rectangle -16777216 true false 105 202 135 240
Polygon -7500403 true true 225 165 75 165 150 90
Line -16777216 false 75 165 225 165

house ranch
false
0
Rectangle -7500403 true true 270 120 285 255
Rectangle -7500403 true true 15 180 270 255
Polygon -7500403 true true 0 180 300 180 240 135 60 135 0 180
Rectangle -16777216 true false 120 195 180 255
Line -7500403 true 150 195 150 255
Rectangle -16777216 true false 45 195 105 240
Rectangle -16777216 true false 195 195 255 240
Line -7500403 true 75 195 75 240
Line -7500403 true 225 195 225 240
Line -16777216 false 270 180 270 255
Line -16777216 false 0 180 300 180

house two story
false
0
Polygon -7500403 true true 2 180 227 180 152 150 32 150
Rectangle -7500403 true true 270 75 285 255
Rectangle -7500403 true true 75 135 270 255
Rectangle -16777216 true false 124 195 187 256
Rectangle -16777216 true false 210 195 255 240
Rectangle -16777216 true false 90 150 135 180
Rectangle -16777216 true false 210 150 255 180
Line -16777216 false 270 135 270 255
Rectangle -7500403 true true 15 180 75 255
Polygon -7500403 true true 60 135 285 135 240 90 105 90
Line -16777216 false 75 135 75 180
Rectangle -16777216 true false 30 195 93 240
Line -16777216 false 60 135 285 135
Line -16777216 false 255 105 285 135
Line -16777216 false 0 180 75 180
Line -7500403 true 60 195 60 240
Line -7500403 true 154 195 154 255

jerry
true
0
Rectangle -13840069 true false 162 230 169 266
Rectangle -13840069 true false 111 228 118 264
Circle -955883 true false 37 50 194
Polygon -11221820 true false 98 167 108 164 114 159 121 153 124 148 127 140 127 134 125 124 123 120 121 118 117 113 117 107 118 102 123 101 132 98 138 101 143 102 145 111 140 121 140 132 140 141 143 148 153 157 161 161 170 167 178 175 181 183 183 194 176 205 168 208 154 208 144 203 131 208 118 212 96 210 88 205 87 196 88 189 89 175 101 164
Circle -1 true false 90 152 44
Circle -1 true false 140 162 30
Circle -2674135 true false 102 166 22
Circle -2674135 true false 142 168 22
Circle -16777216 true false 109 174 10
Circle -16777216 true false 147 174 10
Circle -8630108 true false 130 191 10
Polygon -8630108 true false 115 260 107 261 95 265 91 262 91 268 95 273 102 273 107 272 111 269 111 274 121 274 121 262 113 260
Polygon -8630108 true false 168 261 176 262 188 266 192 263 192 269 188 274 181 274 176 273 172 270 172 275 162 275 162 263 170 261
Circle -13840069 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -8630108 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Circle -1184463 false false 48 62 170
Polygon -11221820 true false 230 135 236 153 240 163 245 176 249 187 245 201 233 215 224 225 222 237 221 248 213 254 209 255 201 257 197 255 197 249 197 240 199 239 200 242 200 247 204 248 209 248 213 240 213 237 209 235 204 237 201 237 201 234 207 232 212 231 216 231 217 225 218 220 222 210 236 190 236 186 235 179 230 173 225 167 219 154 216 144 216 139 229 135
Polygon -13345367 true false 216 142 216 127 218 122 223 118 228 118 232 126 233 132 233 145 225 145 216 145
Polygon -11221820 true false 33 124 27 142 23 152 18 165 14 176 18 190 30 204 39 214 41 226 42 237 50 243 54 244 62 246 66 244 66 238 66 229 64 228 63 231 63 236 59 237 54 237 50 229 50 226 54 224 59 226 62 226 62 223 56 221 51 220 47 220 46 214 45 209 41 199 27 179 27 175 28 168 33 162 38 156 44 143 47 133 47 128 34 124
Polygon -13345367 true false 30 133 30 118 32 113 37 109 42 109 46 117 47 123 47 136 39 136 30 136

joe
true
0
Polygon -1184463 true false 200 158 214 206 223 211 224 214 225 217 225 225 223 231 211 242 206 243 206 237 211 234 215 230 216 222 212 220 208 224 208 228 208 231 202 228 202 219 206 215 206 206 194 183 189 168 189 158 197 157
Polygon -1184463 true false 96 164 82 212 73 217 72 220 71 223 71 231 73 237 85 248 90 249 90 243 85 240 81 236 80 228 84 226 88 230 88 234 88 237 94 234 94 225 90 221 90 212 102 189 107 174 107 164 99 163
Rectangle -11221820 true false 129 217 148 279
Rectangle -11221820 true false 154 217 173 279
Polygon -5825686 true false 142 154 135 152 128 151 119 144 111 143 97 143 93 150 91 163 98 173 109 179 118 182 119 201 120 219 121 224 154 224 179 221 179 196 177 183 176 175 197 172 218 162 222 158 222 147 220 141 212 139 204 139 198 142 190 146 181 149 174 152 165 153 160 153 151 155 135 155
Rectangle -955883 true false 138 120 157 156
Polygon -7500403 true true 105 60 105 45
Polygon -1184463 true false 95 74 96 66 100 58 107 50 117 42 128 39 153 38 164 44 177 51 180 67 185 89 181 100 174 105 167 116 167 128 170 134 167 145 162 145 155 143 153 141 152 149 146 149 142 141 142 134 132 133 124 131 116 119 104 114 95 112 92 108 90 91 95 72
Polygon -10899396 true false 155 263 167 263 179 260 192 257 202 257 211 264 211 275 199 285 185 285 170 285 157 285 153 282 152 272 157 262
Polygon -10899396 true false 147 263 135 263 123 260 110 257 100 257 91 264 91 275 103 285 117 285 132 285 145 285 147 283 150 272 145 262
Line -16777216 false 134 225 133 259
Line -16777216 false 139 227 138 261
Line -16777216 false 144 226 143 260
Line -16777216 false 162 228 161 262
Line -16777216 false 165 225 164 259
Line -16777216 false 169 225 168 259
Circle -13345367 true false 136 150 22
Circle -2064490 true false 140 155 14
Polygon -2674135 true false 143 157 125 149 125 173 141 165 142 158
Polygon -2674135 true false 151 157 169 149 169 173 153 165 152 158
Circle -13840069 true false 142 179 8
Circle -13840069 true false 142 191 8
Circle -13840069 true false 143 208 8
Polygon -14835848 true false 157 199 173 199 174 209 174 214 172 216 168 216 161 216 159 214 157 206 159 200
Circle -1 true false 108 69 34
Circle -1 true false 150 69 26
Circle -6459832 true false 118 79 18
Circle -14835848 true false 155 76 14
Circle -16777216 true false 123 84 10
Circle -16777216 true false 158 80 8
Line -2674135 false 146 98 146 108
Line -2674135 false 147 107 154 107
Polygon -11221820 true false 135 121 139 116 142 115 147 114 151 118 152 119 157 116 163 117 163 123 158 126 151 126 144 126 137 122 138 130 149 130 154 122
Polygon -6459832 true false 186 85 192 70 192 63 192 48 185 42 176 34 151 25 128 22 104 28 84 45 78 78 76 108 68 116 86 108 86 118 88 109 95 117 95 111 92 97 96 84 102 60 110 49 127 40 141 40 158 46 177 60 180 74 185 86

joesephine
true
0
Polygon -1184463 true false 200 158 214 206 223 211 224 214 225 217 225 225 223 231 211 242 206 243 206 237 211 234 215 230 216 222 212 220 208 224 208 228 208 231 202 228 202 219 206 215 206 206 194 183 189 168 189 158 197 157
Polygon -1184463 true false 96 164 82 212 73 217 72 220 71 223 71 231 73 237 85 248 90 249 90 243 85 240 81 236 80 228 84 226 88 230 88 234 88 237 94 234 94 225 90 221 90 212 102 189 107 174 107 164 99 163
Rectangle -11221820 true false 129 217 148 279
Rectangle -11221820 true false 154 217 173 279
Polygon -5825686 true false 142 152 135 150 128 149 119 142 111 141 97 141 93 148 91 161 98 171 109 177 118 180 119 199 120 217 113 248 150 252 191 249 179 194 177 181 176 173 197 170 218 160 222 156 222 145 220 139 212 137 204 137 198 140 190 144 181 147 174 150 165 151 160 151 151 153 135 153
Rectangle -955883 true false 138 120 157 156
Polygon -7500403 true true 105 60 105 45
Polygon -1184463 true false 95 74 96 66 100 58 107 50 117 42 128 39 153 38 164 44 177 51 180 67 185 89 181 100 174 105 167 116 167 128 170 134 167 145 162 145 155 143 153 141 152 149 146 149 142 141 142 134 132 133 124 131 116 119 104 114 95 112 92 108 90 91 95 72
Polygon -10899396 true false 155 263 167 263 179 260 192 257 202 257 211 264 211 275 199 285 184 285 167 278 163 285 152 285 152 272 157 262
Polygon -10899396 true false 147 263 135 263 123 260 110 257 100 257 91 264 91 275 103 285 117 285 133 278 138 286 147 285 150 272 145 262
Circle -13345367 true false 136 150 22
Circle -2064490 true false 140 155 14
Polygon -2674135 true false 143 157 125 149 125 173 141 165 142 158
Polygon -2674135 true false 151 157 169 149 169 173 153 165 152 158
Circle -13840069 true false 142 179 8
Circle -13840069 true false 142 191 8
Circle -13840069 true false 143 208 8
Polygon -14835848 true false 157 199 173 199 174 209 174 214 172 216 168 216 161 216 159 214 157 206 159 200
Circle -1 true false 108 69 34
Circle -1 true false 150 69 26
Circle -6459832 true false 118 79 18
Circle -14835848 true false 155 76 14
Circle -16777216 true false 123 84 10
Circle -16777216 true false 158 80 8
Line -2674135 false 146 98 146 108
Line -2674135 false 147 107 154 107
Polygon -2674135 true false 135 121 139 116 142 115 147 114 151 118 152 119 157 116 163 117 163 123 158 126 151 126 144 126 137 122 138 130 149 130 154 122
Polygon -6459832 true false 126 133 117 164 104 177 104 158 92 175 90 152 72 167 75 140 67 140 74 120 69 120 72 98 80 76 75 76 88 62 85 61 103 46 122 32 139 29 145 33 159 33 174 47 186 56 192 79 191 92 201 114 195 121 200 127 191 130 203 153 190 153 191 177 179 153 182 199 175 178 174 157 169 155 174 138 171 133 165 124 168 112 175 105 183 98 183 89 183 79 178 71 175 66 159 60 151 53 149 46 139 51 128 54 123 63 111 67 103 75 103 89 103 103 114 109 117 121 123 125 127 134

junior
true
0
Polygon -1184463 true false 200 158 214 206 223 211 224 214 225 217 225 225 223 231 211 242 206 243 206 237 211 234 215 230 216 222 212 220 208 224 208 228 208 231 202 228 202 219 206 215 206 206 194 183 189 168 189 158 197 157
Polygon -1184463 true false 96 164 82 212 73 217 72 220 71 223 71 231 73 237 85 248 90 249 90 243 85 240 81 236 80 228 84 226 88 230 88 234 88 237 94 234 94 225 90 221 90 212 102 189 107 174 107 164 99 163
Rectangle -13345367 true false 129 217 148 279
Rectangle -13345367 true false 154 217 173 279
Polygon -1 true false 142 154 135 152 128 151 119 144 111 143 97 143 93 150 91 163 98 173 109 179 118 182 119 201 120 219 121 224 154 224 179 221 179 196 177 183 176 175 197 172 218 162 222 158 222 147 220 141 212 139 204 139 198 142 190 146 181 149 174 152 165 153 160 153 151 155 135 155
Rectangle -955883 true false 138 120 157 156
Polygon -7500403 true true 105 60 105 45
Polygon -1184463 true false 95 74 96 66 100 58 107 50 117 42 128 39 153 38 164 44 177 51 180 67 185 89 181 100 174 105 167 116 167 128 170 134 167 145 162 145 155 143 153 141 152 149 146 149 142 141 142 134 132 133 124 131 116 119 104 114 95 112 92 108 90 91 95 72
Polygon -6459832 true false 155 263 167 263 179 260 192 257 202 257 211 264 211 275 199 285 185 285 170 285 157 285 153 282 152 272 157 262
Polygon -6459832 true false 147 263 135 263 123 260 110 257 100 257 91 264 91 275 103 285 117 285 132 285 145 285 147 283 150 272 145 262
Line -16777216 false 134 225 133 259
Line -16777216 false 139 227 138 261
Line -16777216 false 144 226 143 260
Line -16777216 false 162 228 161 262
Line -16777216 false 165 225 164 259
Line -16777216 false 169 225 168 259
Circle -11221820 true false 136 150 22
Circle -2674135 true false 140 155 14
Polygon -2674135 true false 143 157 125 149 125 173 141 165 142 158
Polygon -2674135 true false 151 157 169 149 169 173 153 165 152 158
Circle -13840069 true false 142 179 8
Circle -13840069 true false 142 191 8
Circle -13840069 true false 143 208 8
Polygon -13345367 true false 157 199 173 199 174 209 174 214 172 216 168 216 161 216 159 214 157 206 159 200
Circle -1 true false 108 69 34
Circle -1 true false 150 69 26
Circle -6459832 true false 118 79 18
Circle -14835848 true false 155 76 14
Circle -16777216 true false 123 84 10
Circle -16777216 true false 158 80 8
Line -2674135 false 146 98 146 108
Line -2674135 false 147 107 154 107
Polygon -14835848 true false 135 121 139 116 142 115 147 114 151 118 152 119 157 116 163 117 163 123 158 126 151 126 144 126 137 122 138 130 149 130 154 122
Polygon -6459832 true false 186 85 192 70 192 63 192 48 185 42 176 34 151 25 128 22 104 28 84 45 78 78 76 108 68 116 86 108 86 118 88 109 95 117 95 111 92 97 96 84 102 60 110 49 127 40 141 40 158 46 177 60 180 74 185 86

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

marilyn
true
0
Polygon -2674135 true false 126 250 120 269 126 282 117 289 131 287 131 292 136 291 136 282 130 271 136 256 143 241 129 238 127 251
Polygon -2674135 true false 167 250 173 269 167 282 176 289 162 287 162 292 157 291 157 282 163 271 157 256 150 241 164 238 166 251
Rectangle -955883 true false 138 122 153 167
Polygon -2064490 true false 138 146 132 138 117 137 106 129 102 109 106 96 104 84 102 77 102 70 105 58 114 50 125 50 142 61 147 69 150 76 155 84 158 74 162 61 167 50 182 47 193 54 199 63 199 77 206 105 199 125 189 135 171 141 159 152 153 157 147 153 142 147 140 146
Polygon -5825686 true false 123 119 131 116 136 112 146 113 152 119 158 116 166 114 173 115 176 123 169 128 159 128 151 128 143 129 140 126 137 122 125 121 132 130 141 133 150 133 157 137 165 132 165 130
Circle -1 true false 112 69 34
Circle -11221820 true false 118 76 24
Circle -16777216 true false 124 81 13
Circle -1 true false 164 78 24
Circle -11221820 true false 170 83 14
Circle -16777216 true false 173 86 7
Line -8630108 false 157 96 161 108
Line -8630108 false 161 107 154 106
Polygon -1184463 true false 155 83 144 67 129 52 119 51 108 58 102 75 107 90 108 101 104 110 106 123 114 132 117 143 117 162 94 168 79 134 78 76 95 47 117 27 152 31 169 25 197 30 231 65 223 151 200 163 191 145 193 128 205 106 199 81 199 68 192 54 183 50 169 50 158 72 158 84
Line -6459832 false 108 45 96 60
Line -6459832 false 98 61 90 93
Line -6459832 false 87 81 89 128
Line -6459832 false 96 107 99 157
Line -6459832 false 108 137 111 157
Line -6459832 false 86 133 94 147
Line -6459832 false 196 45 212 90
Line -6459832 false 226 74 218 130
Line -6459832 false 209 122 204 157
Line -6459832 false 201 126 199 147
Line -6459832 false 206 54 218 77
Line -6459832 false 211 101 216 114
Line -6459832 false 214 135 214 150
Line -6459832 false 153 56 123 42
Line -6459832 false 165 41 188 47
Line -6459832 false 154 66 148 61
Line -6459832 false 155 46 164 32
Line -6459832 false 159 50 165 47
Line -6459832 false 174 33 195 35
Line -6459832 false 116 37 127 36
Line -6459832 false 138 35 151 38
Line -6459832 false 214 55 218 61
Polygon -955883 true false 145 166 126 167 122 177 130 185 146 190 150 194 162 189 175 183 177 174 172 169 158 167
Polygon -14835848 true false 128 166 115 168 104 171 98 174 95 182 95 181 90 190 90 201 105 203 112 195 115 200 115 213 124 225 121 232 116 243 116 257 131 259 153 259 179 258 179 245 173 229 169 224 173 216 177 209 175 197 175 195 180 198 184 207 197 206 197 197 197 188 193 183 192 180 184 172 169 168 174 173 175 177 151 192 142 189 134 185 129 182 125 177 129 166
Polygon -955883 true false 102 201 108 221 116 228 125 230 141 231 129 231 142 241 127 237 142 246 126 242 136 250 122 245 117 237 105 229 92 204 91 200 102 201 101 203
Polygon -955883 true false 185 206 179 226 171 233 162 235 146 236 158 236 145 246 160 242 145 251 161 247 151 255 165 250 170 242 182 234 195 209 196 205 185 206 186 208
Circle -1 true false 128 161 10
Circle -1 true false 149 164 10
Circle -2064490 true false 134 167 10
Circle -2064490 true false 147 168 8
Circle -1 true false 140 169 10
Polygon -1184463 true false 116 229 120 231 117 236 112 233 117 227
Polygon -1184463 true false 183 211 193 213 188 220 181 219 183 213
Line -13345367 false 124 225 136 230
Line -13345367 false 138 230 157 230
Line -13345367 false 153 231 168 225
Line -11221820 false 124 213 134 216
Line -11221820 false 155 218 162 214
Line -13840069 false 132 238 133 248
Line -13840069 false 160 241 156 248
Circle -16777216 true false 184 107 4

music notes 1
true
0
Polygon -7500403 true true 75 210 96 212 118 218 131 229 135 238 135 243 131 251 118 261 96 268 75 270 55 268 33 262 19 251 15 242 15 238 19 229 33 218 54 212
Rectangle -7500403 true true 120 90 135 255
Polygon -7500403 true true 225 165 246 167 268 173 281 184 285 193 285 198 281 206 268 216 246 223 225 225 205 223 183 217 169 206 165 197 165 193 169 184 183 173 204 167
Polygon -7500403 true true 120 60 120 105 285 45 285 0
Rectangle -7500403 true true 270 15 285 195

music notes 2
true
0
Polygon -7500403 true true 135 195 156 197 178 203 191 214 195 223 195 228 191 236 178 246 156 253 135 255 115 253 93 247 79 236 75 227 75 223 79 214 93 203 114 197
Rectangle -7500403 true true 180 30 195 225

music notes 3
true
0
Polygon -7500403 true true 135 195 156 197 178 203 191 214 195 223 195 228 191 236 178 246 156 253 135 255 115 253 93 247 79 236 75 227 75 223 79 214 93 203 114 197
Rectangle -7500403 true true 180 30 195 225
Polygon -7500403 true true 194 66 210 80 242 93 271 94 293 84 301 68 269 69 238 60 213 46 197 34 193 30

osgood
true
0
Polygon -1184463 true false 121 260 108 270 90 276 79 279 69 277 65 289 85 300 111 294 116 281 118 297 127 300 133 259 120 259
Polygon -1184463 true false 158 262 171 272 189 278 200 281 210 279 214 291 194 302 168 296 163 283 161 299 152 302 146 261 159 261
Polygon -5825686 true false 162 174 166 191 167 214 167 229 163 239 157 242 149 244 149 246 149 250 152 256 156 261 159 267 164 272 168 274 168 271 164 262 159 254 159 252 164 250 168 265 170 284 175 291 176 287 176 270 176 251 181 288 184 297 188 297 189 283 186 254 193 283 196 287 199 287 200 268 188 239 196 240 197 250 200 249 200 250 203 242 203 229 201 226 201 224 194 220 181 215 179 175 158 173
Polygon -5825686 true false 109 166 105 183 104 206 104 221 108 231 114 234 122 236 122 238 122 242 119 248 115 253 112 259 107 264 103 266 103 263 107 254 112 246 112 244 107 242 103 257 101 276 96 283 95 279 95 262 95 243 90 280 87 289 83 289 82 275 85 246 78 275 75 279 72 279 71 260 83 231 75 232 74 242 71 241 71 242 68 234 68 221 70 218 70 216 77 212 90 207 92 167 113 165
Polygon -6459832 true false 116 226 108 273 133 274 135 234 146 278 174 275 154 218 118 219 117 233
Rectangle -5825686 true false 121 130 140 159
Polygon -2064490 true false 98 99 99 93 101 87 104 84 108 80 115 77 118 73 123 66 129 55 134 45 137 41 143 41 143 47 144 51 146 62 151 72 148 80 153 89 161 93 167 100 172 109 172 122 168 135 159 141 144 144 139 142 135 136 132 134 127 134 123 139 116 144 101 148 92 144 89 137 87 128 89 113 98 97
Circle -1 true false 89 82 44
Circle -8630108 true false 97 91 28
Circle -1 true false 125 81 51
Circle -10899396 true false 134 89 34
Circle -13840069 true false 104 96 16
Circle -8630108 true false 140 95 22
Polygon -2674135 true false 123 125 131 125 131 126 128 129 125 128 124 124
Circle -1184463 true false 121 19 30
Polygon -14835848 true false 117 149 115 159 107 165 90 166 79 171 79 178 97 187 114 187 116 227 155 224 155 186 164 188 176 188 183 183 182 171 171 165 148 160 142 160 140 149 119 148
Polygon -955883 true false 118 148 125 168 118 192 132 215 144 191 133 168 139 147 118 148

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Polygon -7500403 true true 105 90 135 195 105 285 120 285 120 255 150 255 180 255 180 285 195 285 165 195 195 90
Rectangle -7500403 true true 140 75 162 94
Polygon -7500403 true true 105 90 75 165 105 225 90 165 120 105 105 90
Polygon -7500403 true true 195 90 225 165 195 225 210 165 180 105 195 90
Polygon -7500403 true true 124 23 130 15 138 12 155 12 164 12 167 19 173 26 174 38 170 46 170 54 173 63 165 74 155 83 145 78 138 78 137 67 136 59 129 54 130 38 127 29 126 24 126 23

person police
false
0
Polygon -13840069 true false 191 244 191 247 192 254 192 260 195 267 195 277 195 283 201 290 205 294 205 301 200 305 196 307 196 315 196 319 196 324 196 329 199 334 204 338 209 341 217 343 224 343 228 341 232 337 235 337 237 337 237 339 237 341 237 346 237 349 232 353 226 355 220 355 212 355 206 355 200 350 196 348 191 348 187 352 181 355 174 356 169 356 165 352 165 346 168 344 172 337 177 334 178 329 175 324 171 322 170 319 172 316 178 311 181 305 181 290 177 278 172 272 167 263 163 250 163 241 192 243
Polygon -13840069 true false 110 245 110 248 109 255 109 261 106 268 106 278 106 284 100 291 96 295 96 302 101 306 105 308 105 316 105 320 105 325 105 330 102 335 97 339 92 342 84 344 77 344 73 342 69 338 66 338 64 338 64 340 64 342 64 347 64 350 69 354 75 356 81 356 89 356 95 356 101 351 105 349 110 349 114 353 120 356 127 357 132 357 136 353 136 347 133 345 129 338 124 335 123 330 126 325 130 323 131 320 129 317 123 312 120 306 120 291 124 279 129 273 134 264 138 251 138 242 109 244
Polygon -13840069 true false 233 204 242 210 245 217 242 228 236 239 229 241 231 235 235 230 235 224 231 222 228 230 228 235 223 228 223 222 226 212 224 205 220 202 230 196 232 203
Polygon -13840069 true false 67 203 58 209 55 216 58 227 64 238 71 240 69 234 65 229 65 223 69 221 72 229 72 234 77 227 77 221 74 211 76 204 80 201 70 195 68 202
Polygon -1 true false 124 91 150 165 178 91
Polygon -13345367 true false 134 91 149 106 134 181 149 196 164 181 149 106 164 91
Polygon -13345367 true false 180 195 120 195 106 245 122 251 144 254 150 225 155 255 182 253 194 247
Polygon -13345367 true false 120 90 101 104 60 195 84 208 117 132 120 195 180 195 182 142 215 206 240 195 196 104 180 90 165 105 150 165 135 105 120 90
Rectangle -10899396 true false 132 75 167 92
Circle -13840069 true false 111 6 78
Polygon -13345367 true false 150 26 110 41 97 29 137 -1 158 6 185 0 201 6 196 23 204 34 180 33
Line -13345367 false 112 91 185 91
Line -16777216 false 148 143 150 196
Rectangle -16777216 true false 116 186 182 198
Rectangle -16777216 true false 109 183 124 227
Rectangle -16777216 true false 176 183 195 205
Circle -1 true false 152 143 9
Circle -1 true false 152 166 9
Polygon -1184463 true false 172 112 191 112 185 133 179 133
Polygon -1184463 true false 175 6 194 6 189 21 180 21
Line -1184463 false 149 24 197 24
Rectangle -16777216 true false 101 177 122 187
Rectangle -16777216 true false 179 164 183 186
Circle -1 true false 123 34 31
Circle -955883 true false 131 42 16
Circle -1 true false 160 39 20
Circle -8630108 true false 162 43 14
Circle -16777216 true false 134 46 10
Circle -16777216 true false 136 47 6
Circle -16777216 true false 165 47 6
Line -5825686 false 156 58 155 64
Line -5825686 false 155 64 161 65
Polygon -6459832 true false 137 71 141 68 145 66 150 69 151 70 155 67 161 73 153 74 143 76 139 71

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

saxophone
true
0
Polygon -1184463 true false 104 100 108 88 114 81 119 77 127 73 132 69 144 66 157 65 179 64 179 62 194 62 194 68 181 69 181 68 175 68 154 70 143 75 132 79 126 88 122 100 124 123 125 142 131 174 132 206 125 222 115 230 99 229 87 224 75 214 68 205 55 182 56 174 68 168 81 162 91 160 93 167 95 175 99 191 106 202 109 195 106 178 104 153 101 124 101 107 105 99
Polygon -1184463 true false 111 130 111 187
Circle -6459832 true false 99 111 13
Circle -1 true false 104 134 6
Circle -16777216 true false 104 150 10
Circle -7500403 true true 106 168 8
Circle -6459832 true false 106 182 12
Circle -7500403 true true 77 173 14
Circle -6459832 true false 87 185 8
Rectangle -6459832 true false 179 62 196 69

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

society
true
0
Polygon -6459832 true false 54 139 53 154 45 160 36 174 28 183 9 194 -3 196 -16 196 -26 195 -32 183 -32 171 -27 156 -20 148 -1 141 9 145 10 158 3 172 -9 175 0 159 -2 156 -8 155 -17 163 -17 179 1 182 13 175 22 157 22 124 22 107 28 74 43 52 59 36 76 31 94 25 107 25 120 34 124 27 121 45 134 31 121 57 136 48 119 63 121 67 129 82 137 103 137 133 128 153 117 166 102 152 102 139 121 134 124 125 119 100 114 84 101 84 96 75 91 67 78 64 65 71 57 83 48 92 37 99 35 111 47 127 56 142
Polygon -955883 true false 119 147 118 162 110 168 101 182 93 191 74 202 62 204 49 204 39 203 33 191 33 179 38 164 45 156 64 149 74 153 75 166 68 180 56 183 65 167 63 164 57 163 48 171 48 187 66 190 78 183 87 165 87 132 87 115 93 82 108 60 124 44 141 39 159 33 172 33 185 42 189 35 186 53 199 39 186 65 201 56 184 71 186 75 194 90 202 111 202 141 193 161 182 174 167 160 167 147 186 142 189 133 184 108 179 92 166 92 161 83 156 75 143 72 130 79 122 91 113 100 102 107 100 119 112 135 121 150
Polygon -2674135 true false 47 172 46 168 46 163 47 157 53 151 54 146 54 140 51 132 47 126 41 120 36 114 34 106 37 99 41 93 47 88 54 84 58 79 63 70 70 64 78 63 87 63 95 67 95 71 100 78 107 81 114 86 120 97 124 120 123 126 120 132 108 137 101 140 100 150 102 155 111 166 122 172 128 178 133 183 140 199 141 215 136 239 125 245 114 251 96 252 72 247 55 241 45 228 44 213 44 187 45 178
Polygon -8630108 true false 111 180 110 176 110 171 111 165 117 159 118 154 118 148 115 140 111 134 105 128 100 122 98 114 101 107 105 101 111 96 118 92 122 87 127 78 134 72 142 71 151 71 159 75 159 79 164 86 171 89 178 94 184 105 188 128 187 134 184 140 172 145 165 148 164 158 166 163 175 174 186 180 192 186 197 191 204 207 205 223 200 247 189 253 178 259 160 260 136 255 119 249 109 236 108 221 108 195 109 186
Polygon -14835848 true false 176 174 175 170 175 165 176 159 182 153 183 148 183 142 180 134 176 128 170 122 165 116 163 108 166 101 170 95 176 90 183 86 187 81 192 72 199 66 207 65 216 65 224 69 224 73 229 80 236 83 243 88 249 99 253 122 252 128 249 134 237 139 230 142 229 152 231 157 240 168 251 174 257 180 262 185 269 201 270 217 265 241 254 247 243 253 225 254 201 249 184 243 174 230 173 215 173 189 174 180
Polygon -1184463 true false 182 140 181 155 173 161 164 175 156 184 137 195 125 197 112 197 102 196 96 184 96 172 101 157 108 149 127 142 137 146 138 159 131 173 119 176 128 160 126 157 120 156 111 164 111 180 129 183 141 176 150 158 150 125 150 108 156 75 171 53 187 37 204 32 222 26 235 26 248 35 252 28 249 46 262 32 249 58 264 49 247 64 249 68 257 83 265 104 265 134 256 154 245 167 230 153 230 140 249 135 252 126 247 101 242 87 229 85 224 76 219 68 206 65 193 72 185 84 176 93 165 100 163 112 175 128 184 143
Circle -1 true false 172 92 34
Circle -1 true false 113 97 32
Circle -1 true false 212 94 28
Circle -1 true false 72 95 26
Circle -1 true false 43 92 26
Circle -16777216 true false 182 102 14
Circle -16777216 true false 121 106 14
Circle -16777216 true false 78 102 14
Circle -16777216 true false 48 99 14
Circle -16777216 true false 220 102 14
Polygon -2674135 true false 203 126 206 124 209 124 211 128 216 126 218 126 222 128 217 130 213 131 207 131 220 130 213 135 209 136 204 133 202 127
Polygon -2064490 true false 62 121 65 119 68 119 70 123 75 121 77 121 81 123 76 125 72 126 66 126 79 125 72 130 68 131 63 128 61 122
Polygon -5825686 true false 132 134 135 132 138 132 140 136 145 134 147 134 151 136 146 138 142 139 136 139 149 138 142 143 138 144 133 141 131 135

spats
true
0
Polygon -1184463 true false 122 270 122 275 122 279 122 283 121 289 117 292 111 295 107 295 105 295 102 294 97 293 92 290 87 289 81 291 82 286 86 285 93 282 98 278 104 277 111 270 122 269
Polygon -1184463 true false 170 275 170 280 170 284 170 288 171 294 175 297 181 300 185 300 187 300 190 299 195 298 200 295 205 294 211 296 210 291 206 290 199 287 194 283 188 282 181 275 170 274
Polygon -955883 true false 222 171 222 176 224 191 230 200 236 202 243 204 244 206 245 210 242 219 236 225 231 233 227 238 221 238 223 234 225 229 228 226 231 220 231 214 228 207 224 207 221 215 221 222 219 228 216 224 217 217 217 203 218 201 215 187 212 176 220 169
Polygon -955883 true false 86 175 86 180 84 195 78 204 72 206 65 208 64 210 63 214 66 223 72 229 77 237 81 242 87 242 85 238 83 233 80 230 77 224 77 218 80 211 84 211 87 219 87 226 89 232 92 228 91 221 91 207 90 205 93 191 96 180 88 173
Rectangle -1184463 true false 138 75 163 91
Rectangle -1 true false 120 90 180 180
Polygon -10899396 true false 135 90 150 105 135 180 150 195 165 180 150 105 165 90
Polygon -2064490 true false 120 90 105 105 79 197 98 197 116 126 120 195 109 270 121 277 132 251 150 225 163 249 170 283 188 281 180 192 182 125 213 194 231 187 195 105 180 90 150 165
Circle -955883 true false 119 20 62
Line -7500403 true 172 90 161 94
Line -7500403 true 128 90 139 94
Polygon -13345367 true false 195 225 195 300 270 270 270 195
Rectangle -13791810 true false 180 225 195 300
Polygon -14835848 true false 180 226 195 226 270 196 255 196
Polygon -13345367 true false 216 205 216 219 251 205 250 191
Line -5825686 false 180 90 150 165
Line -5825686 false 120 90 150 165
Polygon -1184463 true false 182 57 179 50 178 46 171 36 164 33 159 29 153 28 152 34 149 40 144 40 141 29 133 31 128 39 123 46 112 52 102 52 89 52 83 51 81 46 81 37 86 28 92 25 99 24 102 22 102 26 98 33 97 35 103 35 111 26 123 18 132 14 144 8 154 6 167 6 172 7 177 10 175 10 177 10 177 14 179 18 181 23 183 28 184 32 184 39 184 56
Line -5825686 false 120 193 181 192
Circle -1 true false 123 31 24
Circle -1 true false 153 44 21
Circle -16777216 true false 128 38 13
Circle -16777216 true false 155 47 13
Polygon -11221820 true false 132 69 131 69 134 64 137 57 139 57 144 64 149 65 151 60 157 62 160 70 150 71 155 75 145 77 139 74 131 71
Line -5825686 false 151 71 133 69
Line -14835848 false 147 53 145 55
Line -14835848 false 144 55 148 55
Polygon -2674135 true false 122 163 140 163 141 172 137 182 132 184 127 185 123 181 121 173 121 162

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

sstrain
false
9
Rectangle -7500403 true false 0 180 300 195
Polygon -1 true false 283 161 274 128 255 114 231 105 165 105 15 105 15 150 15 195 15 210 285 210
Circle -13345367 true false 17 195 30
Circle -13345367 true false 50 195 30
Circle -13345367 true false 220 195 30
Circle -13345367 true false 253 195 30
Rectangle -14835848 false false 0 195 300 180
Rectangle -1 true false 11 111 18 118
Rectangle -1 true false 270 129 277 136
Rectangle -8630108 true false 91 195 210 210
Rectangle -955883 true false 1 180 10 195
Line -16777216 false 290 150 291 182
Rectangle -16777216 true false 165 90 195 90
Rectangle -16777216 true false 290 180 299 195
Polygon -1184463 true false 285 180 267 158 239 135 180 120 15 120 16 113 180 113 240 120 270 135 282 154
Polygon -2064490 true false 284 179 267 160 239 139 180 127 15 127 16 120 180 120 240 127 270 142 282 161
Rectangle -16777216 true false 210 115 254 135
Line -7500403 false 225 105 225 150
Line -7500403 false 240 105 240 150
Circle -5825686 true false 25 204 14
Circle -5825686 true false 228 203 14
Circle -5825686 true false 59 204 14
Circle -5825686 true false 262 203 14

sstrainback
false
0
Polygon -1 true false 15 206 15 150 15 135 30 120 270 120 285 135 285 150 285 206 270 210 30 210
Circle -2674135 true false 240 195 30
Circle -2674135 true false 210 195 30
Circle -2674135 true false 60 195 30
Circle -2674135 true false 30 195 30
Rectangle -16777216 true false 30 140 268 165
Line -7500403 true 60 135 60 165
Line -7500403 true 60 135 60 165
Line -7500403 true 90 135 90 165
Line -7500403 true 120 135 120 165
Line -7500403 true 150 135 150 165
Line -7500403 true 180 135 180 165
Line -7500403 true 210 135 210 165
Line -7500403 true 240 135 240 165
Rectangle -14835848 true false 5 195 19 207
Rectangle -955883 true false 281 195 295 207
Rectangle -1184463 true false 15 165 285 173
Rectangle -2064490 true false 15 180 285 188

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

sweetsue
true
0
Polygon -1184463 true false 116 89 97 112 92 120 83 125 71 125 62 118 60 107 63 98 64 107 71 116 83 110 87 102 87 85 87 68 91 46 104 32 126 17 169 16 173 21 185 35 190 46 194 56 194 71 195 78 195 93 203 106 212 104 217 96 214 113 206 119 194 118 176 99 173 78 158 61 127 58 118 76
Polygon -1 true false 152 92 152 97 152 101 152 105 154 107 157 110 163 111 168 111 171 111 174 111 175 111 179 113 179 114 182 118 184 125 188 133 193 140 198 144 207 148 210 147 212 145 214 142 215 140 216 138 218 134 218 138 218 148 218 152 218 156 216 161 211 161 204 159 186 144 179 136 166 124 157 124 154 127 154 136 158 152 163 164 164 172 159 184 156 188 153 192 149 203 149 209 159 227 168 230 174 230 168 234 150 234 138 228 138 237 132 235 132 221 132 206 140 184 145 169 140 158 139 91 150 91
Polygon -6459832 true false 139 90 128 97 128 101 128 105 126 107 123 110 117 111 112 111 109 111 106 111 105 111 101 113 101 114 98 118 96 125 92 133 87 140 82 144 73 148 70 147 68 145 66 142 65 140 64 138 62 134 62 138 62 148 62 152 62 156 64 161 69 161 76 159 94 144 101 136 114 124 123 124 126 127 126 136 122 152 117 164 116 172 121 184 124 188 127 192 131 203 131 209 121 227 112 230 106 230 112 234 130 234 142 228 142 237 148 235 148 221 148 206 140 184 135 169 140 158 141 91 139 89
Polygon -10899396 true false 107 62 106 51 114 48 123 47 124 42 128 36 140 37 141 49 148 47 155 42 159 42 160 44 161 50 165 53 176 52 179 58 175 67 178 76 176 88 178 96 175 104 170 114 161 117 155 114 152 107 145 94 142 92 132 96 133 101 136 115 129 127 119 130 114 137 107 137 104 132 113 121 117 116 118 108 121 102 115 92 105 91 94 92 81 97 81 102 83 110 77 116 70 112 70 102 75 89 88 83 103 79 113 74 112 67 106 55
Circle -1 true false 119 51 30
Circle -1 true false 147 68 26
Circle -16777216 true false 126 59 14
Circle -16777216 true false 150 72 18
Circle -2674135 true false 128 61 10
Circle -2674135 true false 153 75 12
Circle -2064490 true false 156 96 14
Circle -2064490 true false 110 49 10
Polygon -13791810 true false 119 75 112 78 101 79 92 79 90 72 80 68 76 66 77 58 71 55 65 52 56 56 58 60 63 64 64 66 66 72 73 78 80 83 93 87 108 87 117 87 118 89 123 92 132 89 134 84 124 81 121 75
Polygon -5825686 true false 122 155 131 157 140 159 156 156 156 155 158 156 159 153 165 164 164 175 158 188 152 198 127 198 123 190 116 183 115 167 120 151
Polygon -2064490 true false 88 141 94 161 99 140 103 133 106 130 112 121 117 116 117 110 108 110 102 111 95 122 86 140
Polygon -2064490 true false 128 128 136 113 136 109 142 118 147 119 152 117 156 111 163 113 172 110 178 112 182 117 190 134 195 141 205 146 190 190 186 164 185 153 183 141 177 136 171 128 166 125 159 125 156 126 156 135 160 149 161 154 140 153 121 154 125 137 125 131 129 124
Circle -5825686 true false 61 54 10

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tile brick
false
0
Rectangle -1 true false 0 0 300 300
Rectangle -2674135 true false 15 225 150 285
Rectangle -6459832 true false 165 225 300 285
Rectangle -6459832 true false 75 150 210 210
Rectangle -6459832 true false 0 150 60 210
Rectangle -1184463 true false 225 150 300 210
Rectangle -6459832 true false 165 75 300 135
Rectangle -955883 true false 15 75 150 135
Rectangle -6459832 true false 0 0 60 60
Rectangle -6459832 true false 225 0 300 60
Rectangle -2674135 true false 75 0 210 60

tile log
false
0
Rectangle -6459832 true false 0 0 300 300
Line -16777216 false 0 30 45 15
Line -16777216 false 45 15 120 30
Line -16777216 false 120 30 180 45
Line -16777216 false 180 45 225 45
Line -16777216 false 225 45 165 60
Line -16777216 false 165 60 120 75
Line -16777216 false 120 75 30 60
Line -16777216 false 30 60 0 60
Line -16777216 false 300 30 270 45
Line -16777216 false 270 45 255 60
Line -16777216 false 255 60 300 60
Polygon -16777216 false false 15 120 90 90 136 95 210 75 270 90 300 120 270 150 195 165 150 150 60 150 30 135
Polygon -10899396 false false 63 134 166 135 230 142 270 120 210 105 116 120 88 122
Polygon -16777216 false false 22 45 84 53 144 49 50 31
Line -16777216 false 0 180 15 180
Line -16777216 false 15 180 105 195
Line -16777216 false 105 195 180 195
Line -16777216 false 225 210 165 225
Line -16777216 false 165 225 60 225
Line -16777216 false 60 225 0 210
Line -16777216 false 300 180 264 191
Line -16777216 false 255 225 300 210
Line -10899396 false 16 196 116 211
Line -16777216 false 180 300 105 285
Line -16777216 false 135 255 240 240
Line -16777216 false 240 240 300 255
Line -16777216 false 135 255 105 285
Line -10899396 false 180 0 240 15
Line -10899396 false 240 15 300 0
Line -16777216 false 0 300 45 285
Line -16777216 false 45 285 45 270
Line -16777216 false 45 270 0 255
Polygon -16777216 false false 150 270 225 300 300 285 228 264
Line -16777216 false 223 209 255 225
Line -16777216 false 179 196 227 183
Line -16777216 false 228 183 266 192

tile stones
false
1
Polygon -6459832 true false 0 240 45 195 75 180 90 165 90 135 45 120 0 135
Polygon -6459832 true false 300 240 285 210 270 180 270 150 300 135 300 225
Polygon -7500403 true false 225 300 240 270 270 255 285 255 300 285 300 300
Polygon -10899396 true false 0 285 30 300 0 300
Polygon -6459832 true false 225 0 210 15 210 30 255 60 285 45 300 30 300 0
Polygon -13840069 true false 0 30 30 0 0 0
Polygon -7500403 true false 15 30 75 0 180 0 195 30 225 60 210 90 135 60 45 60
Polygon -10899396 true false 0 105 30 105 75 120 105 105 90 75 45 75 0 60
Polygon -14835848 true false 300 60 240 75 255 105 285 120 300 105
Polygon -7500403 true false 120 75 120 105 105 135 105 165 165 150 240 150 255 135 240 105 210 105 180 90 150 75
Polygon -6459832 true false 75 300 135 285 195 300
Polygon -7500403 true false 30 285 75 285 120 270 150 270 150 210 90 195 60 210 15 255
Polygon -10899396 true false 180 285 240 255 255 225 255 195 240 165 195 165 150 165 135 195 165 210 165 255

tile water
false
0
Rectangle -11221820 true false -1 0 299 300
Polygon -1 true false 105 259 180 290 212 299 168 271 103 255 32 221 1 216 35 234
Polygon -1 true false 300 161 248 127 195 107 245 141 300 167
Polygon -1 true false 0 157 45 181 79 194 45 166 0 151
Polygon -1 true false 179 42 105 12 60 0 120 30 180 45 254 77 299 93 254 63
Polygon -1 true false 99 91 50 71 0 57 51 81 165 135
Polygon -1 true false 194 224 258 254 295 261 211 221 144 199

toothpick charlie
false
0
Polygon -14835848 true false 65 175 64 185 63 190 61 196 53 203 51 206 49 209 48 213 50 227 60 242 65 249 68 246 67 239 62 232 60 224 60 212 67 210 69 216 67 224 68 227 76 222 77 211 77 204 74 196 74 175 65 173
Polygon -14835848 true false 220 174 221 184 222 189 224 195 232 202 234 205 236 208 237 212 235 226 225 241 220 248 217 245 218 238 223 231 225 223 225 211 218 209 216 215 218 223 217 226 209 221 208 210 208 203 211 195 211 174 220 172
Rectangle -10899396 true false 135 75 165 90
Circle -13840069 true false 110 5 80
Polygon -10899396 true false 104 89 126 195 92 272 108 273 116 274 155 185 168 275 184 278 192 273 179 194 194 89
Polygon -1 true false 59 193 76 189 101 123 119 193 179 193 191 119 211 182 226 181 194 88 164 88 149 103 149 148 134 88 94 89
Polygon -13345367 true false 117 87 118 179 118 194 96 240 117 250 134 254 148 224 157 267 186 266 198 259 178 194 178 87 169 87 163 134 133 134 126 86
Polygon -6459832 true false 116 4 113 21 71 33 71 40 109 48 117 34 144 27 180 26 188 36 224 23 222 14 178 16 167 0
Circle -1 true false 123 33 30
Circle -1 true false 156 37 23
Circle -5825686 true false 130 39 17
Circle -5825686 true false 160 42 15
Circle -16777216 true false 162 44 10
Circle -16777216 true false 133 43 10
Polygon -955883 true false 152 58 147 63 145 66 141 66 134 66 124 65 123 64 116 64 116 68 124 71 135 71 146 69 152 65 153 68 157 68 158 62 152 59
Polygon -8630108 true false 138 73 145 71 149 68 150 73 155 67 158 74 151 75 139 73
Polygon -1184463 true false 153 74 251 33 253 34 154 75 153 74
Polygon -5825686 true false 90 268 81 272 69 277 61 277 58 271 58 265 55 259 51 259 47 259 45 266 47 276 60 290 71 293 84 293 90 288 96 285 105 285 107 286 112 290 121 288 123 283 121 274 114 267 91 266
Polygon -5825686 true false 194 271 203 275 215 280 223 280 226 274 226 268 229 262 233 262 237 262 239 269 237 279 224 293 213 296 200 296 194 291 188 288 179 288 177 289 172 293 163 291 161 286 163 277 170 270 193 269

train
false
0
Rectangle -7500403 true true 30 105 240 150
Polygon -7500403 true true 240 105 270 30 180 30 210 105
Polygon -7500403 true true 195 180 270 180 300 210 195 210
Circle -7500403 true true 0 165 90
Circle -7500403 true true 240 225 30
Circle -7500403 true true 90 165 90
Circle -7500403 true true 195 225 30
Rectangle -7500403 true true 0 30 105 150
Rectangle -16777216 true false 30 60 75 105
Polygon -7500403 true true 195 180 165 150 240 150 240 180
Rectangle -7500403 true true 135 75 165 105
Rectangle -7500403 true true 225 120 255 150
Rectangle -16777216 true false 30 203 150 218

train freight boxcar
false
0
Rectangle -7500403 true true 10 100 290 195
Rectangle -16777216 false false 9 99 289 195
Circle -16777216 true false 253 195 30
Circle -16777216 true false 220 195 30
Circle -16777216 true false 50 195 30
Circle -16777216 true false 17 195 30
Rectangle -16777216 true false 290 180 299 195
Rectangle -16777216 true false 105 90 135 90
Rectangle -16777216 true false 1 180 10 195
Rectangle -16777216 false false 105 105 195 180
Line -16777216 false 150 105 150 180

train freight engine
false
0
Rectangle -7500403 true true 0 180 300 195
Polygon -7500403 true true 281 194 282 134 278 126 165 120 165 105 15 105 15 150 15 195 15 210 285 210
Polygon -955883 true false 281 179 263 150 225 150 15 150 15 135 270 135 282 148
Circle -16777216 true false 17 195 30
Circle -16777216 true false 50 195 30
Circle -16777216 true false 205 195 30
Circle -16777216 true false 238 195 30
Rectangle -7500403 true true 164 90 224 195
Rectangle -16777216 true false 176 98 214 120
Line -7500403 true 196 90 196 150
Rectangle -16777216 false false 165 90 225 180
Rectangle -16777216 false false 0 195 300 180
Rectangle -1 true false 11 111 18 118
Rectangle -1 true false 280 131 287 138
Rectangle -16777216 true false 91 195 201 212
Rectangle -16777216 true false 1 180 10 195
Line -16777216 false 290 150 291 182
Rectangle -7500403 true true 88 97 119 106
Rectangle -7500403 true true 42 96 73 105
Line -16777216 false 165 105 15 105
Rectangle -16777216 true false 165 90 195 90
Line -16777216 false 252 116 237 116
Rectangle -1184463 true false 199 85 208 92
Rectangle -16777216 true false 290 180 299 195
Line -16777216 false 224 98 165 98

train freight hopper empty
false
0
Circle -16777216 true false 253 195 30
Circle -16777216 true false 220 195 30
Circle -16777216 true false 50 195 30
Circle -16777216 true false 17 195 30
Rectangle -16777216 true false 105 90 135 90
Rectangle -16777216 true false 285 180 294 195
Polygon -7500403 true true 15 105 15 120 45 180 45 195 255 195 255 180 285 120 285 105
Rectangle -7500403 false true 15 105 285 195
Rectangle -16777216 true false 6 180 15 195
Polygon -7500403 true true 90 195 105 210 120 195
Polygon -7500403 true true 135 195 150 210 165 195
Polygon -7500403 true true 180 195 195 210 210 195
Polygon -16777216 false false 15 105 15 120 45 180 45 195 255 195 255 180 285 120 285 105
Line -16777216 false 60 105 60 195
Line -16777216 false 240 105 240 195
Line -16777216 false 180 105 180 195
Line -16777216 false 120 105 120 195

train freight hopper full
false
0
Circle -16777216 true false 253 195 30
Circle -16777216 true false 220 195 30
Circle -16777216 true false 50 195 30
Circle -16777216 true false 17 195 30
Rectangle -16777216 true false 105 90 135 90
Rectangle -16777216 true false 285 180 294 195
Polygon -7500403 true true 15 105 15 120 45 180 45 195 255 195 255 180 285 120 285 105
Rectangle -7500403 false true 15 105 285 195
Rectangle -16777216 true false 6 180 15 195
Polygon -7500403 true true 90 195 105 210 120 195
Polygon -7500403 true true 135 195 150 210 165 195
Polygon -7500403 true true 180 195 195 210 210 195
Polygon -16777216 false false 15 105 15 120 45 180 45 195 255 195 255 180 285 120 285 105
Line -16777216 false 60 105 60 195
Line -16777216 false 240 105 240 195
Line -16777216 false 180 105 180 195
Line -16777216 false 120 105 120 195
Polygon -6459832 true false 15 106 60 83 97 75 133 66 186 76 235 79 285 106

train switcher engine
false
0
Polygon -7500403 true true 45 210 45 180 45 150 53 130 151 123 248 131 255 150 255 195 255 210 60 210
Circle -16777216 true false 225 195 30
Circle -16777216 true false 195 195 30
Circle -16777216 true false 75 195 30
Circle -16777216 true false 45 195 30
Line -7500403 true 150 135 150 165
Rectangle -7500403 true true 120 90 180 195
Rectangle -16777216 true false 132 98 170 120
Line -7500403 true 150 90 150 150
Rectangle -16777216 false false 120 90 180 180
Rectangle -7500403 true true 30 180 270 195
Rectangle -16777216 false false 30 180 270 195
Line -16777216 false 270 150 270 180
Rectangle -1 true false 245 131 252 138
Rectangle -1 true false 48 131 55 138
Polygon -16777216 true false 255 179 227 169 227 158 255 168
Polygon -16777216 true false 255 162 227 152 227 141 255 151
Polygon -16777216 true false 45 162 73 152 73 141 45 151
Polygon -16777216 true false 45 179 73 169 73 158 45 168
Rectangle -16777216 true false 112 195 187 210
Rectangle -16777216 true false 264 180 279 195
Rectangle -16777216 true false 21 180 36 195
Line -16777216 false 30 150 30 180
Line -16777216 false 120 98 180 98

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

ukulele
true
0
Rectangle -5825686 true false 171 133 237 152
Polygon -2064490 true false 139 120 145 120 150 117 164 115 172 115 183 118 191 124 194 134 195 144 195 156 187 167 167 172 150 169 143 165 132 162 121 167 108 166 97 157 93 146 92 133 99 120 105 117 110 115 120 115 133 118
Polygon -2064490 true false 102 149 121 148
Circle -10899396 true false 129 127 26
Rectangle -8630108 true false 221 130 253 156
Circle -1184463 true false 240 125 10
Circle -1184463 true false 223 150 10
Circle -1184463 true false 224 125 10
Circle -1184463 true false 239 150 10
Line -1184463 false 246 139 110 135
Line -1184463 false 246 135 110 131
Line -1184463 false 246 144 110 140
Line -1184463 false 246 148 110 144
Rectangle -2674135 true false 105 128 112 148

van side
false
0
Polygon -7500403 true true 26 147 18 125 36 61 161 61 177 67 195 90 242 97 262 110 273 129 260 149
Circle -16777216 true false 43 123 42
Circle -16777216 true false 194 124 42
Polygon -16777216 true false 45 68 37 95 183 96 169 69
Line -7500403 true 62 65 62 103
Line -7500403 true 115 68 120 100
Polygon -1 true false 271 127 258 126 257 114 261 109
Rectangle -16777216 true false 19 131 27 142

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.3.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
