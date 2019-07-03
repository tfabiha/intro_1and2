extensions [sound]

;GIRL
to ghe

  if heading = 0
  [set shape "ghead 4"]

  if heading = 90
  [set shape "ghead 1"]

  if heading = 180
  [set shape "ghead 3"]

  if heading = 270
  [set shape "ghead 2"]

end

to gbo [x]

  if heading = 0
  [ifelse x = 0
  [set shape "gbody4.0"]
  [set shape "gbody4.1"]]

  if heading = 90
  [ifelse x = 0
  [set shape "gbody1.0"]
  [set shape "gbody1.1"]]

  if heading = 180
  [ifelse x = 0
  [set shape "gbody3.0"]
  [set shape "gbody3.1"]]

  if heading = 270
  [ifelse x = 0
  [set shape "gbody2.0"]
  [set shape "gbody2.1"]]

end



;DUDE

to bhe

  if heading = 0
  [set shape "bhead 4"]

  if heading = 90
  [set shape "bhead 1"]

  if heading = 180
  [set shape "bhead 3"]

  if heading = 270
  [set shape "bhead 2"]

end

to bbo [x]

  if heading = 0
  [ifelse x = 0
  [set shape "bbody4.0"]
  [set shape "bbody4.1"]]

  if heading = 90
  [ifelse x = 0
  [set shape "bbody1.0"]
  [set shape "bbody1.1"]]

  if heading = 180
  [ifelse x = 0
  [set shape "bbody3.0"]
  [set shape "bbody3.1"]]

  if heading = 270
  [ifelse x = 0
  [set shape "bbody2.0"]
  [set shape "bbody2.1"]]

end








to-report color-change
  report
  ((random 16 * .5) + 32)
end

to newgirl
  crt 1
  [ set size 20
    set color color-change
    set heading 180
    gbo 0
    ]
  crt 1
  [ set size 15
    set color [color] of turtle (who - 1)
    setxy ([xcor] of turtle (who - 1)) ([ycor + 11] of turtle (who - 1))
    set heading 180
    ghe
   ]
end






; TO SIT
; body-ycor = 3.5
; head-ycor = 14.5




;THE START OF THE SCREEN STUFF

to begin-screen

  ask patch 16 22 [set plabel "PRESS PLAY TO BEGIN"]
  cro 1 [set shape "press-play"
         set size 17]
  cro 1 [setxy -20 -20
         set size 7
         set heading 45
         set shape "cursor"]

  repeat 10
         [
           ask patch 16 22 [set plabel ""]
           ask turtle 1 [
           fd ((distancexy 0 0) + 7) / 20
           wait 0.1]
           ask patch 16 22 [set plabel "PRESS PLAY TO BEGIN"]
           ask turtle 1 [
           fd ((distancexy 0 0) + 7) / 20
           wait 0.1]
         ]
  ask turtle 0 [set shape "press-play1"]
  wait 0.15
  ca

  load 0
  ask patches
  [if (((pycor = 1) or (pycor = -1)) and (abs pxcor <= abs 11))
    or ((abs pxcor = 11) and (pycor = 0))
    [set pcolor white]]

  cyc 0 -10 cyc 1 -9 cyc 2 -8
  cyc 0 -7  cyc 1 -6 cyc 2 -5
  cyc 0 -4  cyc 1 -3 cyc 2 -2
  cyc 0 -1  cyc 1 0  cyc 2 1
  cyc 0 2   cyc 1 3  cyc 2 4
  cyc 0 5   cyc 1 6  cyc 2 7
  cyc 0 8   cyc 1 9  cyc 2 10

  wait 0.15
  ca
end

;FOR BEGIN-SCREEN
to cyc [x y]
  wait 0.15
  load x
  pcol y
end

to load [x]
  if x = 0
  [ask patch 8 15 [set plabel "LOADING.  "]]

  ifelse x = 1
  [ask patch 8 15 [set plabel "LOADING.. "]]
  [ask patch 8 15 [set plabel "LOADING..."]]
end

to pcol [x]
  ask patch x 0
  [set pcolor white]
end



; THE START OF THE FIRST SCENE

to scene-1
  import-drawing "coffee5.png"
  ;turtle 0
  crt 1
   [set shape "gsitting 2"
    set size 20
    set color 37
    setxy 25 3.5
   ]
  ;turtle 1
  crt 1
   [set shape "ghead 4"
    set size 15
    setxy 25 14.5
    set color [color] of turtle (who - 1)
   ]

  ;turtle 2
  crt 1
   [set shape "bsitting 2"
    set size 20
    set color 37
    setxy -13 3.5
   ]
  ;turtle 3
  crt 1
   [set shape "bhead 4"
    set size 15
    setxy -13 14.5
    set color [color] of turtle (who - 1)
   ]

  ;turtle 4
  cro 1 [set hidden? true
         set label-color black]

  ;turtle 5 USED TO BE A USELESS TURTLE
  cro 1 [set size 15
         setxy -13 21
         set hidden? true]

  ;turtle 6
  crt 1 [set shape "ghead 3.0"
         setxy -30 -30
         set size 15
         set color [color] of turtle 1
         set hidden? true
         ]
  ;turtle 7
  crt 1 [set shape "bhead 3.0"
         setxy -30 -30
         set size 15
         set color [color] of turtle 3
         set hidden? true
         ]
  ;turtle 8
  crt 1 [set shape "square"
         set color 38.1
         setxy 30 -30
         ]
  wait 2
  awk-silence -13 21
  wait 1
  say 1 "The barista's been gone for a while."
  wait 3
  say 3 ""

  ask turtle 3
  [set shape "bhead 1"]
  ask turtle 2
  [set shape "bsitting 2"]
  say 1 "Man, the service is terrible, right?"
  wait 3
  say 3 ""

  say 0 "Hmm?"
  ask turtle 1
  [set shape "ghead 2"]

  wait 1.5
  say 3 ""
  sound:play-sound-and-wait "wolf_call.wav"
  wait 2.67
  heartbeat 10
  say 1 "Wow."
  heartbeat 5

  say 1 "You're really..."
  heartbeat 7
  say 0 "I'm really what?"
  heartbeat 7

  ask turtle 2 [set shape "bsitting 1"]
  heartbeat 5
  say 1 "Umm."
  heartbeat 5
  say 1 "You're really hot."
  heartbeat 7
  say 1 "Wanna go out on a date with me?"
  heartbeat 10
  say 3 ""
  awk-silence 25 21
  say 0 "Me?"
  heartbeat 5
  say 0 "With you?"
  heartbeat 5
  say 0 "No thanks."

  wait 1.5
  sound:play-sound-and-wait "small_crowd_gasping.wav"
  wait 1

  ask turtle 5 [set shape "speech-heart2"]
  say 3 ""
  wait 1.5
  ask turtle 1 [set shape "ghead 4"]
  say 0 "Oh I think i'm getting a call."
  wait .5

  sound:play-sound "electronic_telephone_ring.wav"
  wait 2

  say 0 "Hello."
  wait 2
  say 0 "Yeah. Okay. I'll be right there."
  wait 3
  say 3 ""

  ask turtle 0 [set shape "gsitting 1"]
  ask turtle 1 [set shape "ghead 2"]
  wait 1
  ask turtle 3 [set shape "bhead 4"]


  gcom 270 0 4
  gcom 180 1 2

  repeat 5
  [gcom 180 0 2
   gcom 180 1 2]
   gcom 180 0 1

  repeat 13
  [gcom 270 0 2
   gcom 270 1 2]
   ;gcom 270 0 1

  ask turtle 0 [set hidden? true]
  ask turtle 1 [set hidden? true]

  wait 2

  say 1 "I'm going to be alone forever."
  sound:play-sound-and-wait "people_saying_ahh_.wav"
  wait 2.5
  say 3 ""

end


;FOR THE FIRST SCENE
to say [x y]
  ask turtle 8 [set color 38.1]

  if x = 0
  [ ask turtle 6 [set hidden? false]
    ask turtle 7 [set hidden? true]
    ask turtle 8 [set hidden? false]]

  if x = 1
  [ ask turtle 6 [set hidden? true]
    ask turtle 7 [set hidden? false]
    ask turtle 8 [set hidden? false]]

  if x = 3
  [ ask turtle 6 [set hidden? true]
    ask turtle 7 [set hidden? true]
    ask turtle 8 [set hidden? true]]

  ask turtle 8 [set label y]
end

to says [x y]
  ask turtle 8 [set color 1.7]

  if x = 0
  [ ask turtle 6 [set hidden? false]
    ask turtle 7 [set hidden? true]
    ask turtle 8 [set hidden? false
                  ]]

  if x = 1
  [ ask turtle 6 [set hidden? true]
    ask turtle 7 [set hidden? false]
    ask turtle 8 [set hidden? false]]

  if x = 3
  [ ask turtle 6 [set hidden? true]
    ask turtle 7 [set hidden? true]
    ask turtle 8 [set hidden? true]]

  ask turtle 8 [set label y]
end



to awk-silence [x y]
  ask turtle 4 [
         set hidden? false
         set size 15
         repeat 2 [
         set shape "speech0"
         setxy x y
         wait .5
         set shape "speech1"
         wait .5
         set shape "speech2"
         wait .5
         set shape "speech3"
         wait .5
         ]
         set hidden? true]
end

to heartbeat [x]
  ask turtle 5 [set hidden? false
                   repeat x [
                   ifelse shape = "speech-heart1"
                   [set shape "speech-heart"]
                   [set shape "speech-heart1"]
                    wait .3]]
end

to gcom [x y z]
  repeat 10
  [ask turtle 0 [set heading x
                 gbo y
                 fd (z / 10)]
   ask turtle 1 [set heading x
                 ghe
                 fd (z / 10)]
   wait 0.018]
end





to scene-2

  cd
  ask turtles [set hidden? true]

  ask patch 11 11 [set plabel "The next day."]
  wait 2
  ask patch 11 11 [set plabel ""]

  wait 1
  import-drawing "cloudy-sky.png"

  ;turtle 9
  cro 1 [setxy -13 -8
         set color blue
         set shape "car"
         set size 14]

  ;turtle 10
  cro 1 [setxy -28 -14
         set color green
         set shape "car"
         set size 14
         set heading 90
         wait 1.5


  car 8
  says 1 "WOOOHOOO"
  car 8
  car 8
  says 1 "I'M RICH!!!!!"
  car 8
  car 8
  says 1 "I WON THE LOTTERY BABY!!!"
  car 8
  car 8
  says 1 "WOOOHOOOO"
  die
  ]
  wait 1
  says 3 ""
  wait 1
  says 0 "Wasn't that the guy from yesterday?"
  wait 3
  says 3 ""

  ask turtle 4 [setxy ([xcor] of turtle 9) ([ycor + 6] of turtle 9)
                set shape "speech-money"
                set hidden? false]
  says 0 "Maybe I should try to find him again."
  wait 2
  sound:play-sound-and-wait "small_crowd_gasping.wav"
end

to car [x]
  repeat 10 [ fd (x / 10)
   wait 0.05]
end

to scene-3

  cd
  ask turtles [set hidden? true]

  ask patch 11 11 [set plabel "A few hours later."]
  wait 2.5
  ask patch 11 11 [set plabel ""]

  wait 1
  import-drawing "coffee5.png"

  ask turtle 2
   [set shape "bsitting 2"
    set size 20
    set color 37
    setxy -13 3.5
    set hidden? false
   ]

  ask turtle 3
   [set shape "bhead 4"
    set size 15
    setxy -13 14.5
    set color [color] of turtle (who - 1)
    set hidden? false
   ]

  ask turtle 0
    [setxy -31 -19.5
     set heading 90
     gbo 0
     set hidden? false
     ]
   ask turtle 1
     [setxy -31 -8.5
      set heading 90
      ghe
      set hidden? false
      ]
  wait .7
  sound:play-sound-and-wait "crowd_booing_loudly.wav"
  wait 1
  repeat 5 [
    gcom 90 0 2
    gcom 90 1 2]

  wait 1
  ask turtle 1 [set shape "ghead 4"]
  surprise 0

  wait 1.5
  ask turtle 4 [set hidden? true]
  ask turtle 1 [set shape "ghead 1"]

  repeat 2 [
    gcom 90 0 2
    gcom 90 1 2]

  repeat 5 [
    gcom 0 0 2
    gcom 0 1 2]
  ask turtle 0 [set shape "gsitting 1"
                setxy 0 3.5]
  ask turtle 1 [set shape "ghead 2"
                setxy 0 14.5]

  wait 1

  say 0 "Hello."

  surprise 2
  wait 2
  say 3 ""
  wait 1
  ask turtle 4 [set hidden? true]
  ask turtle 3 [set shape "bhead 1"]

  say 1 "Wha...you're the girl from yesterday."
  wait 3
  say 0 "Ha. Ha."
  wait 2
  say 0 "So you remember me?"
  wait 3
  say 1 "Well yeah. You're hot."
  wait 3
  say 0 "Oh. you're so funny."
  wait 2
  say 0 "So. I haven't been able to stop"
  wait 2.5
  say 0 "thinking about you."
  wait 1.5
  say 0 "And umm...does the offer still stand?"
  wait 3
  say 1 "Uhhhhh."
  wait 2
  say 1 "Yeah."
  wait 1.5
  say 1 "Of course."
  wait 2
  say 1 "I'll pick you up at 7?"
  wait 3.5
  say 0 "It's a date."
  wait 3
  say 1 "Wow."
  wait 1.5
  say 0 "Hmm?"
  wait 1.5
  say 1 "Today must be my lucky day or"
  wait 3
  say 1 "something."
  wait 1.5
  say 1 "First I win the lottery."
  wait 3
  say 1 "And now you're here."
  wait 2.5
  say 0 "Ha. Wow. Really?"
  wait 2.5
  say 0 "Must be some coincidence."
  wait 3
  say 1 "I know right."
  wait 2.5
  say 1 "So...about that date."
  wait 3
  ca
end

to surprise [x]
  ask turtle 4 [setxy ([xcor] of turtle x) ([ycor + 17] of turtle x)
                set shape "speech-ex"
                set hidden? false
                ]
end

to START
  ca
  begin-screen
  scene-1
  scene-2
  scene-3
end
























@#$#@#$#@
GRAPHICS-WINDOW
286
13
935
683
35
35
9.0
1
30
1
1
1
0
1
1
1
-35
35
-35
35
0
0
1
ticks
30.0

BUTTON
113
284
182
317
START
START
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
30
33
261
231
WARNING: There is sound in this animation. I don't exactly know why, but if you wish to replay this animation, you must close the program after playing once, and open it again. :)
18
0.0
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

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bbody1.0
false
0
Polygon -7500403 true true 144 80 161 81 220 148 205 178 142 99
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -10899396 true false 151 187 134 188 120 225 139 241 153 206
Polygon -14835848 true false 105 30 180 30 195 120 180 210 165 225 150 240 120 210 105 150 105 105 105 30
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -10899396 true false 149 187 166 188 180 225 161 241 147 206
Polygon -7500403 true true 156 80 139 81 80 148 95 178 158 99

bbody1.1
false
0
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -10899396 true false 149 187 166 188 180 225 161 241 147 206
Polygon -7500403 true true 156 80 139 81 80 148 95 178 158 99
Polygon -14835848 true false 105 30 180 30 195 120 180 210 165 225 150 240 120 210 105 150 105 105 105 30
Polygon -7500403 true true 144 80 161 81 220 148 205 178 142 99
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -10899396 true false 151 187 134 188 120 225 139 241 153 206

bbody2.0
false
0
Polygon -7500403 true true 156 80 139 81 80 148 95 178 158 99
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -10899396 true false 149 187 166 188 180 225 161 241 147 206
Polygon -14835848 true false 195 30 120 30 105 120 120 210 135 225 150 240 180 210 195 150 195 105 195 30
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -10899396 true false 151 187 134 188 120 225 139 241 153 206
Polygon -7500403 true true 144 80 161 81 220 148 205 178 142 99

bbody2.1
false
0
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -10899396 true false 151 187 134 188 120 225 139 241 153 206
Polygon -7500403 true true 144 80 161 81 220 148 205 178 142 99
Polygon -14835848 true false 195 30 120 30 105 120 120 210 135 225 150 240 180 210 195 150 195 105 195 30
Polygon -7500403 true true 156 80 139 81 80 148 95 178 158 99
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -10899396 true false 149 187 166 188 180 225 161 241 147 206

bbody4.0
false
0
Polygon -7500403 true true 175 219 190 191 205 281 175 281 175 221
Polygon -10899396 true false 177 216 190 191 199 243 175 251 175 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90
Polygon -14835848 true false 105 30 195 30 195 105 198 181 180 226 150 241 120 226 100 179 105 105 105 30
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -7500403 true true 125 219 110 191 95 281 125 281 125 221
Polygon -10899396 true false 123 216 110 191 101 243 125 251 125 221

bbody4.1
false
0
Polygon -7500403 true true 125 219 110 191 95 281 125 281 125 221
Polygon -10899396 true false 123 216 110 191 101 243 125 251 125 221
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -14835848 true false 105 30 195 30 195 105 198 181 180 226 150 241 120 226 100 179 105 105 105 30
Polygon -7500403 true true 175 219 190 191 205 281 175 281 175 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90
Polygon -10899396 true false 177 216 190 191 199 243 175 251 175 221

bhead 1
false
0
Circle -7500403 true true 84 85 134
Circle -16777216 true false 182 131 16
Polygon -16777216 true false 212 181 212 183 201 182 185 184 202 190 211 187
Circle -1 true false 188 134 9
Polygon -1184463 true false 188 84 197 93 209 120 194 105 194 120 179 105 164 135 149 120 149 150 164 180 176 223 160 218 132 206 115 202 96 194 81 180 74 165 74 150 70 132 78 109 92 95 105 69 119 75 139 59 149 75 174 60 175 66 177 73

bhead 2
false
0
Circle -7500403 true true 82 85 134
Circle -16777216 true false 102 131 16
Polygon -16777216 true false 90 182 90 184 104 183 110 187 95 189 91 188
Circle -1 true false 103 134 9
Polygon -1184463 true false 112 84 103 93 91 120 106 105 106 120 121 105 136 135 151 120 151 150 136 180 124 223 140 218 168 206 185 202 204 194 219 180 226 165 226 150 230 132 222 109 208 95 195 69 181 75 161 59 151 75 126 60 125 66 123 73

bhead 3
false
0
Circle -7500403 true true 85 82 134
Circle -16777216 true false 120 126 18
Polygon -16777216 true false 170 174 157 177 145 177 133 176 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -1184463 true false 147 70 167 53 181 71 205 62 211 89 235 94 227 111 246 121 235 154 217 176 207 199 196 188 201 174 206 161 204 140 189 138 195 117 170 112 165 94 150 83
Polygon -1184463 true false 153 70 133 53 119 71 95 62 89 89 65 94 73 111 54 121 65 154 83 176 93 199 104 188 99 174 94 161 96 140 111 138 105 117 130 112 135 94 150 83

bhead 3.0
false
0
Rectangle -1 true false 45 45 255 240
Circle -7500403 true true 85 82 134
Circle -16777216 true false 120 126 18
Polygon -16777216 true false 165 180 157 177 145 177 132 178 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -1184463 true false 147 70 167 53 181 71 205 62 211 89 235 94 227 111 246 121 235 154 217 176 207 199 196 188 201 174 206 161 204 140 189 138 195 117 170 112 165 94 150 83
Polygon -1184463 true false 153 70 133 53 119 71 95 62 89 89 65 94 73 111 54 121 65 154 83 176 93 199 104 188 99 174 94 161 96 140 111 138 105 117 130 112 135 94 150 83

bhead 4
false
0
Circle -7500403 true true 85 82 134
Circle -16777216 true false 120 126 18
Polygon -16777216 true false 167 179 157 177 145 177 136 181 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -1184463 true false 147 70 167 53 181 71 205 62 211 89 235 94 227 111 246 121 235 154 217 176 207 199 194 189 201 174 206 161 204 140 189 138 195 117 170 112 165 94 150 83
Polygon -1184463 true false 153 70 133 53 119 71 95 62 89 89 65 94 73 111 54 121 65 154 83 176 93 199 104 188 99 174 94 161 96 140 111 138 105 117 130 112 135 94 150 83
Polygon -1184463 true false 95 180 115 200 132 186 147 202 165 188 177 199 189 187 197 190 218 147 180 92 157 82 132 83 105 109 93 137

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bsitting 1
false
0
Polygon -7500403 true true 196 180 207 179 232 189 230 247 230 269 203 268 203 244 207 224 207 211 182 208 196 180
Polygon -10899396 true false 197 173 207 178 232 188 230 253 233 253 203 253 202 240 203 227 205 213 181 209 166 164
Polygon -7500403 true true 116 31 96 63 112 162 165 180 115 88
Polygon -14835848 true false 195 30 112 30 105 105 90 180 111 210 145 210 180 210 200 179 207 82 195 30
Polygon -7500403 true true 194 33 214 57 240 150 225 165 195 90
Polygon -10899396 true false 90 180 113 209 99 209 89 194 90 180
Polygon -7500403 true true 198 239 174 240 174 261 196 258 198 239
Polygon -10899396 true false 198 238 174 240 174 247 197 244 197 239

bsitting 2
false
0
Polygon -7500403 true true 190 29 210 61 207 134 141 178 191 86
Polygon -7500403 true true 102 239 126 240 126 261 104 258 102 239
Polygon -10899396 true false 90 180 113 209 99 209 89 194 90 180
Polygon -7500403 true true 110 29 90 61 93 134 159 178 109 86
Polygon -14835848 true false 121 29 191 30 201 107 210 180 189 210 155 210 113 210 90 180 99 106 110 29
Polygon -7500403 true true 198 239 174 240 174 261 196 258 198 239
Polygon -10899396 true false 198 238 174 240 174 247 197 244 197 239
Polygon -10899396 true false 210 180 187 209 201 209 211 194 210 180
Polygon -10899396 true false 102 238 126 240 126 247 103 244 103 239

bsitting 3
false
0
Polygon -7500403 true true 104 180 93 179 68 189 70 247 70 269 97 268 97 244 93 224 93 211 118 208 104 180
Polygon -10899396 true false 103 173 93 178 68 188 70 253 67 253 97 253 98 240 97 227 95 213 119 209 134 164
Polygon -7500403 true true 184 31 204 63 188 162 135 180 185 88
Polygon -14835848 true false 105 30 188 30 195 105 210 180 189 210 155 210 120 210 100 179 93 82 105 30
Polygon -7500403 true true 106 33 86 57 60 150 75 165 105 90
Polygon -10899396 true false 210 180 187 209 201 209 211 194 210 180
Polygon -7500403 true true 102 239 126 240 126 261 104 258 102 239
Polygon -10899396 true false 102 238 126 240 126 247 103 244 103 239

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

bully1.0
true
0
Circle -7500403 true true 86 80 134
Circle -16777216 true false 124 114 22
Circle -1 true false 135 120 9
Polygon -1184463 true false 120 90 135 80 130 72 122 59 114 52 130 46 141 51 151 60 157 76 161 86 128 89
Circle -16777216 true false 163 114 22
Circle -1 true false 174 120 9
Polygon -16777216 true false 143 176 156 176 167 176 172 187 159 183 151 182 135 185 136 184
Line -6459832 false 158 145 171 158
Line -16777216 false 158 145 171 158
Polygon -16777216 false false 171 159 168 163 160 163

bully2.0
false
0
Circle -7500403 true true 86 78 134
Circle -16777216 true false 124 114 22
Circle -1 true false 135 120 9
Circle -16777216 true false 163 114 22
Circle -1 true false 174 120 9
Polygon -16777216 true false 143 176 156 176 167 176 172 187 159 183 151 182 135 185 136 184
Line -6459832 false 158 145 171 158
Line -16777216 false 158 145 171 158
Polygon -16777216 false false 171 159 168 163 160 163
Polygon -2674135 true false 157 81 122 114 126 89 115 110 106 131 114 155 105 178 90 186 74 149 71 112 91 78 125 54 162 55 208 66 226 93 225 136 221 175 210 157 195 116 176 91 148 104

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

cameo-block
false
0
Rectangle -7500403 true true -135 135 510 201

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

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cursor
true
0
Polygon -16777216 true false 150 5 40 250 150 205 260 250
Polygon -1 true false 150 30 60 225 150 195 240 225

cylinder
false
0
Circle -7500403 true true 0 0 300

door-closed
true
0
Rectangle -6459832 true false 150 90 165 210

door-opened
true
0
Rectangle -6459832 true false 150 90 270 105
Rectangle -7500403 true true 150 105 270 255

dot
false
0
Circle -7500403 true true 90 90 120

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

gbody1.0
false
0
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -13791810 true false 141 170 160 170 188 248 164 252 139 189
Polygon -7500403 true true 156 50 139 51 80 118 95 148 158 69
Polygon -13345367 true false 105 30 180 30 210 75 180 210 165 225 135 225 120 210 105 180 120 105 105 30
Polygon -7500403 true true 144 50 161 51 220 118 205 148 142 69
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -13791810 true false 159 170 140 170 112 248 136 252 161 189

gbody1.1
false
0
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -13791810 true false 159 170 140 170 112 248 136 252 161 189
Polygon -7500403 true true 144 50 161 51 220 118 205 148 142 69
Polygon -13345367 true false 105 30 180 30 210 75 180 210 165 225 135 225 120 210 105 180 120 105 105 30
Polygon -7500403 true true 156 50 139 51 80 118 95 148 158 69
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -13791810 true false 141 170 160 170 188 248 164 252 139 189

gbody2.0
false
0
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -13791810 true false 159 170 140 170 112 248 136 252 161 189
Polygon -7500403 true true 144 50 161 51 220 118 205 148 142 69
Polygon -13345367 true false 195 30 120 30 90 75 120 210 135 225 165 225 180 210 195 180 180 105 195 30
Polygon -7500403 true true 156 50 139 51 82 128 100 153 158 69
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -13791810 true false 141 170 160 170 188 248 164 252 139 189

gbody2.1
false
0
Polygon -7500403 true true 149 187 166 188 194 265 172 269 147 206
Polygon -13791810 true false 141 170 160 170 188 248 164 252 139 189
Polygon -7500403 true true 156 50 139 51 80 118 95 148 158 69
Polygon -13345367 true false 195 30 120 30 90 75 120 210 135 225 165 225 180 210 195 180 180 105 195 30
Polygon -7500403 true true 146 52 163 53 226 116 210 141 144 71
Polygon -7500403 true true 151 187 134 188 106 265 128 269 153 206
Polygon -13791810 true false 159 170 140 170 112 248 136 252 161 189

gbody3.0
false
0
Polygon -7500403 true true 165 210 190 191 202 264 175 267 175 221
Polygon -13791810 true false 165 210 190 191 200 252 175 254 175 221
Polygon -7500403 true true 135 210 110 191 95 281 125 281 125 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90
Polygon -13345367 true false 105 30 195 30 210 90 192 202 180 226 150 241 120 226 109 197 90 90 105 30
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -13791810 true false 124 209 110 191 98 260 125 265 125 221

gbody3.1
false
0
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -7500403 true true 135 210 110 191 98 264 125 267 125 221
Polygon -13791810 true false 135 210 110 191 100 252 125 254 125 221
Polygon -7500403 true true 165 210 190 191 205 281 175 281 175 221
Polygon -13345367 true false 105 30 195 30 210 90 192 202 180 226 150 241 120 226 109 197 90 90 105 30
Polygon -13791810 true false 176 209 190 191 202 260 175 265 175 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90

gbody4.0
false
0
Polygon -7500403 true true 173 197 188 169 203 259 173 259 173 199
Polygon -13791810 true false 175 195 188 170 200 244 172 245 173 200
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -13345367 true false 105 30 195 30 195 105 198 181 180 226 150 241 120 226 100 179 105 105 105 30
Polygon -7500403 true true 125 219 110 191 95 281 125 281 125 221
Polygon -13791810 true false 123 216 110 191 98 265 126 266 125 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90

gbody4.1
false
0
Polygon -7500403 true true 194 33 214 57 236 145 225 181 195 90
Polygon -7500403 true true 127 196 112 168 97 258 127 258 127 198
Polygon -13791810 true false 124 196 111 171 99 245 127 246 126 201
Polygon -13345367 true false 105 30 195 30 195 105 198 181 180 226 150 241 120 226 100 179 105 105 105 30
Polygon -7500403 true true 175 219 190 191 205 281 175 281 175 221
Polygon -13791810 true false 177 216 190 191 202 265 174 266 175 221
Polygon -7500403 true true 106 33 86 57 64 145 75 181 105 90

ghead 1
false
0
Circle -7500403 true true 84 85 134
Circle -16777216 true false 180 129 20
Polygon -2674135 true false 210 182 210 179 198 180 190 187 205 189 209 188
Circle -1 true false 188 134 9
Polygon -13791810 true false 186 69 205 86 210 99 196 108 171 116 160 134 164 151 167 182 170 203 177 235 182 253 165 256 145 257 127 255 110 251 85 231 75 206 65 165 64 123 79 97 115 69 167 69 189 69

ghead 2
false
0
Circle -7500403 true true 82 86 134
Circle -16777216 true false 102 131 16
Polygon -2674135 true false 90 182 88 179 105 180 107 182 100 184 91 188
Circle -1 true false 103 134 9
Polygon -13791810 true false 114 69 95 86 90 99 104 108 129 116 140 134 136 151 133 182 130 203 123 235 118 253 135 256 155 257 173 255 190 251 215 231 225 206 235 165 236 123 221 97 185 69 133 69 111 69

ghead 3
false
0
Circle -7500403 true true 85 83 134
Circle -16777216 true false 120 126 18
Polygon -2674135 true false 166 177 156 173 144 174 136 181 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -13791810 true false 150 60 150 90 128 110 99 128 97 160 111 195 105 225 84 229 66 219 60 180 60 120 90 75 135 60 150 60
Polygon -13791810 true false 150 60 150 90 172 110 201 128 203 160 189 195 195 225 216 229 234 219 240 180 240 120 210 75 165 60 150 60
Rectangle -13791810 true false 135 60 164 90

ghead 3.0
false
0
Rectangle -1 true false 45 45 255 240
Circle -7500403 true true 85 83 134
Circle -16777216 true false 120 126 18
Polygon -2674135 true false 166 177 156 173 144 174 136 181 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -13791810 true false 150 60 150 90 128 110 99 128 97 160 111 195 105 225 84 229 66 219 60 180 60 120 90 75 135 60 150 60
Polygon -13791810 true false 150 60 150 90 172 110 201 128 203 160 189 195 195 225 216 229 234 219 240 180 240 120 210 75 165 60 150 60
Rectangle -13791810 true false 135 60 164 90

ghead 4
false
0
Circle -7500403 true true 85 83 134
Circle -16777216 true false 120 126 18
Polygon -2674135 true false 166 177 156 173 144 174 136 181 151 183 165 181
Circle -1 true false 125 133 9
Circle -16777216 true false 162 126 18
Circle -1 true false 166 133 9
Polygon -13791810 true false 150 60 150 90 128 110 99 128 97 160 111 195 105 225 84 229 66 219 60 180 60 120 90 75 135 60 150 60
Polygon -13791810 true false 150 60 150 90 172 110 201 128 203 160 189 195 195 225 216 229 234 219 240 180 240 120 210 75 165 60 150 60
Rectangle -13791810 true false 90 90 210 225
Rectangle -13791810 true false 135 60 165 135

gsitting 1
false
0
Polygon -7500403 true true 104 180 93 179 68 189 70 247 70 269 97 268 97 244 93 224 93 211 118 208 104 180
Polygon -13791810 true false 103 173 93 178 68 188 70 253 67 253 97 253 98 240 97 227 95 213 119 209 134 164
Polygon -7500403 true true 184 31 204 63 188 162 135 180 185 88
Polygon -13345367 true false 105 30 188 30 184 109 210 180 189 210 155 210 120 210 100 179 93 82 105 30
Polygon -7500403 true true 106 33 86 57 80 150 97 175 105 90
Polygon -13791810 true false 210 180 187 209 201 209 211 194 210 180
Polygon -7500403 true true 102 239 126 240 126 261 104 258 102 239
Polygon -13791810 true false 102 238 126 240 126 247 103 244 103 239

gsitting 2
false
0
Polygon -7500403 true true 110 29 90 61 99 160 159 178 109 86
Polygon -7500403 true true 102 239 126 240 126 261 104 258 102 239
Polygon -13791810 true false 90 180 113 209 99 209 89 194 90 180
Polygon -7500403 true true 190 29 210 61 201 160 141 178 191 86
Polygon -13345367 true false 121 29 191 30 195 105 210 180 189 210 155 210 113 210 90 180 105 105 110 29
Polygon -7500403 true true 198 239 174 240 174 261 196 258 198 239
Polygon -13791810 true false 198 238 174 240 174 247 197 244 197 239
Polygon -13791810 true false 210 180 187 209 201 209 211 194 210 180
Polygon -13791810 true false 102 238 126 240 126 247 103 244 103 239

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

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

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

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

press-play
true
0
Circle -1 true false 0 0 300
Circle -16777216 true false 30 30 240
Polygon -1 true false 225 155 105 105 105 150 105 210

press-play1
true
4
Circle -7500403 true false 0 0 300
Circle -16777216 true false 30 30 240
Polygon -7500403 true false 225 155 105 105 105 150 105 210

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

speech-ex
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10
Polygon -16777216 true false 141 117 135 75 153 75 149 117 141 117
Circle -16777216 true false 140 125 12

speech-heart
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10
Polygon -2674135 true false 144 91 145 137 121 112 117 100 119 89 128 83 135 86 143 92
Polygon -2674135 true false 143 91 142 137 166 112 170 100 168 89 159 83 152 86 144 92

speech-heart1
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10
Polygon -2674135 true false 141 104 145 137 157 120 169 106 169 95 163 89 156 90 145 98
Polygon -2674135 true false 149 104 145 137 133 120 121 106 121 95 127 89 134 90 145 98

speech-heart2
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10
Polygon -2674135 true false 141 91 142 137 118 112 114 100 116 89 125 83 132 86 140 92
Polygon -2674135 true false 154 90 153 136 177 111 181 99 179 88 170 82 163 85 155 91
Polygon -1 true false 139 89 131 103 139 113 133 119 142 128 137 134 150 142 140 87
Polygon -2674135 true false 153 88 145 102 153 112 147 118 156 127 151 133 164 141 154 86
Polygon -1 true false 169 121 150 136 168 149 171 124
Polygon -1 true false 146 78 167 81 144 99 138 83 148 79

speech-money
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10
Polygon -14835848 true false 179 92 172 75 147 69 127 71 121 86 116 101 124 113 151 112 168 117 150 140 127 139 117 145 126 148 146 152 162 142 179 121 171 109 136 99 135 85 160 83
Rectangle -14835848 true false 143 61 152 160

speech0
true
0
Circle -1 true false 83 49 122
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10

speech1
true
0
Circle -1 true false 83 49 122
Circle -16777216 true false 98 99 22
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10

speech2
true
0
Circle -1 true false 83 49 122
Circle -16777216 true false 98 99 22
Circle -16777216 true false 131 99 22
Circle -1 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10

speech3
true
0
Circle -1 true false 83 49 122
Circle -16777216 true false 98 99 22
Circle -16777216 true false 131 99 22
Circle -16777216 true false 164 98 22
Circle -1 true false 200 133 22
Circle -1 true false 213 158 16
Circle -1 true false 205 177 10

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

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
