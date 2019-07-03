globals [
  wah? ; i dont remember
  hook ; the hook turtle
  rod ; the rod turtle
  level ; controls the bg
  num ; controls the ycor of the hook and fish
  on?
  money
  front?
  last-x
  list-a-turners
  hi
  gun
  gun-shape
]

;breeds
breed [fishes fish]
breed [ninjas ninja]

;properties
fishes-own [speed direction caught cost kill-left]
turtles-own [travel levels shaping]
patches-own [clicked]




to setup
  ca
  ;CHANGE THESE LATER!!!!!!!!!!!!

  set front? true
  import-drawing "RidicTitleScreen.png"

  set wah? "start-screen"
  set on? "on"

  set list-a-turners ["fish-bird" "rock fish" "johnny" "tobi"]
end

to start
  if front? and mouse-down? and mouse-inside?
  [ ask patch mouse-xcor mouse-ycor [set pcolor red]
    ask patches with [(abs pxcor <= 4) and (pycor <= 7) and (pycor >= 6)]
    [if pcolor = red [set wah? "fishing"]]
    ask patches with [(abs pxcor <= 3) and (pycor <= -1) and (pycor >= -3)]
    [if pcolor = red [set wah? "shopping"]]
    ask patches with [(abs pxcor <= 8) and (pycor <= -10) and (pycor >= -11)]
     [if pcolor = red [set wah? "achievements"]]
    cd
    ]

  if wah? = "fishing"
  [fishing]

  if wah? = "shooting"
  [shooting]

  if wah? = "shopping"
  []

  if wah? = "achievements"
  []
end




to save

end

to load

end

to loading

end





;FISHING SECTION
;FISHING SECTION
;FISHING SECTION

to fishing
  if on? = "on"
  [import-drawing "loading.jpg"
   create-hook-rod

   ;dimensions xcor: [-19, 19] ycor: [-25, 25]

   create-ninjas 53 [set hidden? true]
   ask n-of 5 ninjas [set levels 1]
   ask n-of 5 ninjas with [levels = 0] [set levels 2]
   ask n-of 6 ninjas with [levels = 0] [set levels 3]
   ask n-of 6 ninjas with [levels = 0] [set levels 4]
   ask n-of 7 ninjas with [levels = 0] [set levels 5]
   ask n-of 7 ninjas with [levels = 0] [set levels 6]
   ask n-of 8 ninjas with [levels = 0] [set levels 7]
   ask n-of 9 ninjas with [levels = 0] [set levels 8]

   ask ninjas with [levels = 1] [set breed fishes]

   ask fishes
    [ set hidden? false
      set shape one-of ["fish-bird left" "bob" "fish-bird right"]
      set size 6
      setxy (random-float 25 - 12) (random-float 42 - 21)
      set speed random 4 + 1
      if shape = "fish-bird left" [set heading 90 lt random 41 - 20 ]
      if shape = "fish-bird right" [set heading 270 lt random 41 - 20]
      ]


   ;insert start menu
  import-drawing "lvl-1.jpg"
   crt 1 [set size 40
          set heading 0
          set shape "rectangle"
          set color black
          setxy 0 25
          set hidden? false]
   crt 1 [set size 40
          set heading 0
          set shape "rectangle"
          set color black
          setxy 0 -25
          set num 20
          set hidden? false]

   ask rod [set hidden? true]
   ask hook [set hidden? false]
   ask links [set hidden? false]
   set level 1
   set on? "off"
   ]

  every .1
  [move_hook
   water-color]
end

;to starting_fishing_bg
;  ask patches with [pycor <= -7] [
;    set pcolor palette:scale-gradient [[104 177 214] [128 200 237]] pycor -19 -13]
;  ask patches with [pycor > -7] [
;    set pcolor palette:scale-gradient [[166 111 40] [131 176 157]] pycor 19 -13]
;end

to move_hook
 ask hook [
  if mouse-inside? [setxy mouse-xcor num
                    set last-x mouse-xcor]
  if not mouse-inside? [setxy last-x num]

 ifelse any? fishes with [caught = true]
 [set travel "up"]
 [set travel "down"]]


 ask fishes [if distance hook > 3
 [if ycor > 21 [set ycor -23]
      fd .1 * speed]]
 ask fishes [if distance hook <= 3
    [set caught true]]
 ask fishes with [caught = true]
 [if mouse-inside? [setxy mouse-xcor (num - 0.5)
                    set last-x mouse-xcor]
 if not mouse-inside? [setxy last-x (num - 0.5)]]


 ask fishes with [caught = 0 and (abs xcor > 12 or abs ycor > 21)]
 [set heading heading - 180]


  let sad "yes"

  ask hook [
    if travel = "up" [set num num + .4]
    if travel = "down" [set num num - .4]
    if num < -21 and level != 10 and travel = "down" [set level level + 1 set num 20 set sad "no"]
    if num > 21 and travel = "up" [set level level - 1 set num -21 set sad "no"]

    if level = 10 []
    if level = 0 [set wah? "shooting"
                  set on? true]]
  if sad = "no"
  [ask fishes with [caught != true] [set breed ninjas
                                     set hidden? true]
   ask ninjas with [levels = level] [set breed fishes
                                    fish-shape
                                    set size 6
                                    setxy (random-float 25 - 12) (random-float 42 - 21)
                                    set speed random 4 + 1
                                    if direction = " left" [set heading 90 lt random 41 - 20 ]
                                    if direction = " right" [set heading 270 lt random 41 - 20]
                                    set hidden? false

                                     ]
   set sad "yes"]

end



to create-hook-rod
  crt 1
    [set shape "line half"
     set color brown
     set rod turtle who
     set heading 220
     set size 15
     setxy 0 21
     set hidden? true]
  crt 1
    [set shape "bug"
     set hook turtle who
     set size 2
     setxy 0 21
     create-link-with rod
    set hidden? true]

  ask links [set hidden? true]
end



to fish-shape
  if level = 1 [set shaping one-of ["bob" "fish-bird" "fish-bird"]
    if shaping = "bob" [set cost 4]
    if shaping = "fish-bird" [set cost 1]
  ]

  if level = 2 [set shaping one-of ["fish-bird" "rock fish"]
    if shaping = "fish-bird" [set cost 1]
    if shaping = "rock fish" [set cost 3]
  ]

  if level = 3 [set shaping one-of ["johnny" "rock fish" "rock fish"]
    if shaping = "rock fish" [set cost 3]
    if shaping = "johnny" [set cost 5]
  ]

  if level = 4 [set shaping one-of ["johnny" "johnny" "johnny" "kyle"]
    if shaping = "johnny" [set cost 5]
    if shaping = "kyle" [set cost 8]
  ]

  if level = 5 [set shaping one-of ["kyle" "ball" "ball" "tobi"]
    if shaping = "kyle" [set cost 8]
    if shaping = "ball" [set cost 7]
    if shaping = "tobi" [set cost 12]
  ]

  if level = 6 [set shaping one-of ["teeth" "teeth" "kyle"]
    if shaping = "teeth" [set cost 12]
    if shaping = "kyle" [set cost 8]
  ]

  if level = 7 [set shaping one-of ["tobi" "bone"]
    if shaping = "tobi" [set cost 15]
    if shaping = "bone" [set cost 16]
  ]

  if level = 8 [set shaping one-of ["awesome turtle" "diamondz" "dizmondz"]
    if shaping = "awesome turtle" [set cost 20]
    if shaping = "diamondz" [set cost 18]
  ]


  ifelse member? shaping list-a-turners [ifelse random 2 = 0 [set direction " left"] [set direction " right"]
                                         set shape (word shaping direction)]
  [set shape (word shaping)]

end




;END OF FISHING SECTION :(
;END OF FISHING SECTION :(
;END OF FISHING SECTION :(





;BACKGROUND D: orz imma die
;BACKGROUND D:
;BACKGROUND D:

to water-color
  if level > 0 and level < 10 [import-drawing (word "lvl-" level ".jpg")]
end

;#a9ffe5	(169 255 229)
;#88ffc8	(136 255 200)
;#46e0c1	(70 224 193)
;#237e73	(35 126 115)
;#0c5461	(12 84 97)






;END OF BACKGROUND D: orz imma die
;END OF BACKGROUND D:
;END OF BACKGROUND D:



; STARTING SCREEN :'(
; STARTING SCREEN
; STARTING SCREEN

to start-screen

end




; END OF STARTING SCREEN
; END OF STARTING SCREEN
; END OF STARTING SCREEN





; SHOOTING D: D: D: D:
; SHOOTING
; SHOOTING

to shooting
  if on? [
    set hi 0
    import-drawing "opening-bg.jpg"
    ask rod [set hidden? false
             setxy 7 -3]
    ask hook [setxy xcor -23]
    ask fishes with [caught = true] [setxy [xcor] of hook -23]
    set on? false ]

    if hi = 0 [
      every .1 [ask hook [setxy xcor (ycor + 1)]
        ask fishes with [caught = true] [setxy [xcor] of hook [ycor] of hook]
        if [ycor] of hook = 21 [set hi 1]
      ]]

    if hi = 1 [
    cd import-drawing "sky.jpg"
    ask hook [set hidden? true]
    ask fishes with [caught = true] [set ycor -23
                                     set heading random-float 181 - 90]
    set hi 2
    crt 1 [set shape "laser gun"
      set size 5
      set gun turtle who]
    
    ]

    if hi = 2 [
      every .1 [

      if mouse-inside? [ask gun [setxy mouse-xcor mouse-ycor]
                        if mouse-down? [ ask fishes with [caught = true] [if distance hook <= 3
    [set money money + cost
     die]]]]

      ask fishes with [caught = true] [fd .2 * speed
        if abs xcor > 12 or abs ycor >  24.5 [[set heading 180]]






      ]]







end

to death

end























@#$#@#$#@
GRAPHICS-WINDOW
201
10
614
704
15
25
13.0
1
10
1
1
1
0
1
0
1
-15
15
-25
25
0
0
1
ticks
30.0

BUTTON
113
99
176
132
NIL
setup
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
32
53
95
86
NIL
save
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
113
53
176
86
NIL
load
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
113
134
176
167
NIL
start
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
969
93
1131
126
boo
create-hook-rod
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
32
149
95
182
NIL
ca
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
659
147
754
180
NIL
move_hook
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
634
66
701
99
NIL
fishing
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
667
221
762
254
NIL
water-color
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
702
378
765
411
NIL
start
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
671
479
771
512
NIL
start-screen
T
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

awesome turtle
true
0
Polygon -10899396 true false 135 90 135 60 150 45 165 60 165 90
Circle -1 true false 151 71 14
Circle -1 true false 135 71 14
Polygon -2674135 true false 210 150 240 135 240 150 270 135 270 150 285 165 270 180 270 195 240 180 240 195 195 165 210 150
Polygon -2674135 true false 90 150 60 135 60 150 30 135 30 150 15 165 30 180 30 195 60 180 60 195 105 165 90 150
Polygon -2674135 true false 135 225 105 240 120 240 105 255 120 255 105 270 120 270 120 285 135 270 150 300 165 270 180 285 180 270 195 270 180 255 195 255 180 240 195 240 165 225 120 225
Polygon -10899396 true false 195 180 225 195 225 225 210 240 210 225 180 210
Polygon -10899396 true false 105 180 75 195 75 225 90 240 90 225 120 210 105 180
Polygon -7500403 true true 120 90 180 90 210 150 195 210 150 240 105 210 90 150 120 90
Polygon -13840069 false false 150 90 150 240 210 150 90 150 150 240 120 90 180 90 150 240
Polygon -14835848 false false 105 120 150 240 195 120 105 120 105 210 195 210 195 120 150 90 105 120
Polygon -10899396 true false 195 120 210 105 210 75 225 105 225 135 210 150
Polygon -10899396 true false 90 75 90 105 105 120 90 150 75 135 75 105 90 75
Polygon -955883 true false 135 240 165 240 180 255 180 270 165 270 150 285 135 270 120 270 120 255 135 240
Polygon -1184463 true false 150 255 135 270 165 270 150 255
Polygon -16777216 true false 150 60 150 75
Polygon -955883 true false 210 165 225 150 240 165 255 150 270 165 255 180 240 165 225 180
Polygon -955883 true false 90 165 75 150 60 165 45 150 30 165 45 180 60 165 75 180
Circle -16777216 true false 155 74 6
Circle -16777216 true false 139 74 6
Line -2674135 false 158 61 149 48
Line -2674135 false 142 61 151 48

ball
true
0
Circle -2674135 true false 29 29 242
Polygon -1184463 true false 90 90 90 195 150 165 210 195 210 90 150 120 90 90

bob
true
0
Polygon -8630108 true false 202 143 210 215 201 270 227 248 226 183 205 143
Polygon -8630108 true false 156 172 168 203 170 253 191 268 190 228 181 178 160 145 156 169
Polygon -8630108 true false 114 170 124 202 121 260 135 246 147 236 131 142 113 159 113 171
Polygon -8630108 true false 84 264 100 262 108 243 100 217 95 171 80 193
Polygon -14835848 true false 223 155 234 162
Polygon -13791810 true false 81 178 82 157 67 121 62 74 94 31 148 24 203 42 221 68 229 123 225 179 179 155 150 184 130 161 95 187 75 197
Circle -8630108 true false 180 100 31
Circle -8630108 true false 118 125 15
Circle -8630108 true false 92 55 26
Circle -8630108 true false 152 53 10

bone
true
15
Circle -1 true true 60 135 30
Circle -1 true true 60 105 30
Polygon -1 true true 240 105 225 120 120 120 90 120 75 105 75 165 90 150 225 150 240 165 240 105
Circle -1 true true 225 105 30
Circle -1 true true 225 135 30
Circle -16777216 true false 238 114 6
Circle -16777216 true false 70 115 6

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

diamondz
true
9
Circle -1184463 false false 110 170 110
Polygon -13791810 true true 120 60 195 60 225 90 161 165 90 90 120 60
Polygon -16777216 false false 120 60 90 90 160 165 225 90 195 60 120 60
Polygon -16777216 false false 90 90 225 90 195 60 165 60 180 90 135 90 150 60 120 60 90 90
Polygon -16777216 false false 135 90 159 165 180 90 135 90
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 105 165 120
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 107 167 116
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 109 169 112
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 112 172 106
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110
Circle -1184463 false false 110 170 110

fish-bird left
true
6
Polygon -13840069 true true 118 211 188 210 159 191 202 163 218 83 183 56 167 88 129 55 84 87 86 164 121 198
Polygon -2674135 true false 202 164 241 194 248 112 218 84
Polygon -2674135 true false 76 238 151 253 226 223 142 192 76 238
Polygon -2674135 true false 55 210 29 129 48 85 89 86 87 160
Circle -2674135 true false 115 92 24
Line -16777216 false 105 241 117 221
Line -16777216 false 132 227 135 244
Line -16777216 false 158 225 170 240
Line -16777216 false 181 221 194 234
Line -16777216 false 44 107 72 93
Line -16777216 false 51 123 71 114
Line -16777216 false 50 149 82 138
Line -16777216 false 55 169 80 158
Line -16777216 false 56 185 67 181
Line -16777216 false 222 110 238 122
Line -16777216 false 215 130 236 141
Line -16777216 false 216 149 235 158
Polygon -13840069 true true 127 56 149 27 157 21 160 35 163 50 166 26 171 23 179 43 185 59 177 111 126 58

fish-bird right
true
6
Polygon -13840069 true true 182 211 112 210 141 191 98 163 82 83 117 56 133 88 171 55 216 87 214 164 179 198
Polygon -2674135 true false 98 164 59 194 52 112 82 84
Polygon -2674135 true false 224 238 149 253 74 223 158 192 224 238
Polygon -2674135 true false 245 210 271 129 252 85 211 86 213 160
Circle -2674135 true false 161 92 24
Line -16777216 false 195 241 183 221
Line -16777216 false 168 227 165 244
Line -16777216 false 142 225 130 240
Line -16777216 false 119 221 106 234
Line -16777216 false 256 107 228 93
Line -16777216 false 249 123 229 114
Line -16777216 false 250 149 218 138
Line -16777216 false 245 169 220 158
Line -16777216 false 244 185 233 181
Line -16777216 false 78 110 62 122
Line -16777216 false 85 130 64 141
Line -16777216 false 84 149 65 158
Polygon -13840069 true true 173 56 151 27 143 21 140 35 137 50 134 26 129 23 121 43 115 59 123 111 174 58

girl
true
0
Polygon -16777216 true false 105 60 120 45 165 45 195 75 210 150 210 180 195 210 150 240 105 210 90 180 90 135 90 90 105 60
Polygon -2064490 true false 106 76 106 121 136 151 151 151 181 121 181 76 166 61 151 61 121 61 106 76
Line -16777216 false 150 60 105 90
Polygon -16777216 true false 150 60 105 90 105 75 120 60 150 60 165 60 180 75 150 60
Circle -16777216 true false 160 93 10
Circle -16777216 true false 125 94 10
Polygon -2674135 true false 131 127 140 122 150 123 159 128 147 133
Polygon -16777216 false false 135 127 156 127
Polygon -6459832 false false 139 84 131 85 116 90
Polygon -6459832 false false 157 85 173 87
Polygon -6459832 true false 173 87 179 93
Polygon -6459832 true false 173 87 177 92 173 87
Polygon -6459832 true false 174 88 178 94 173 87
Polygon -6459832 false false 180 90 165 90
Polygon -2064490 true false 181 86 174 89 161 90 167 93 178 96 180 85
Polygon -2064490 true false 181 85 181 98 175 99 177 87 183 83
Polygon -2064490 true false 123 88 123 97 116 97 116 87 123 86
Polygon -2064490 true false 135 148 133 171 152 172 151 148 135 150
Polygon -5825686 true false 134 172 96 185 86 281 84 298 102 297 113 206 111 288 181 291 166 204 194 295 215 295 186 187 152 168 131 171
Polygon -16777216 false false 136 150 150 152

heat gun
true
0
Polygon -7500403 true true 150 150 330 300 330 270 165 120 165 150
Polygon -7500403 true true 120 165 285 300 330 300 150 150 135 165
Polygon -2064490 true false 265 207 310 222 340 252 325 312 250 312 220 267 220 237
Circle -1 true false 255 225 60
Polygon -6459832 true false 279 265 273 273 282 280 272 290 283 300 290 300 283 293 289 283 284 276 288 269
Circle -2674135 true false 144 115 40
Circle -2674135 true false 115 130 40

hook a
true
0
Circle -955883 false false 135 135 30
Polygon -955883 true false 147 166 147 252 103 295 56 265 59 231 47 230 40 270 109 313 156 268 154 164
Polygon -955883 true false 44 228 46 182 74 238 45 231
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 135 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 137 135 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 136 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 133 134 30
Circle -955883 false false 134 133 30
Circle -955883 false false 134 133 30
Circle -955883 false false 134 133 30
Circle -955883 false false 134 133 30
Circle -955883 false false 134 133 30

hook b
true
0
Polygon -8630108 true false 207 290 224 289 190 260 192 301 238 353 275 369 306 313 322 260 158 149 150 159 298 268 271 339 206 289
Circle -8630108 true false 141 142 18
Polygon -8630108 true false 99 290 82 289 116 260 114 301 68 353 31 369 0 313 -16 260 147 149 156 159 8 268 35 339 100 289
Circle -8630108 true false 141 142 18

johnny left
true
7
Polygon -14835848 true true 105 14 90 44 90 74 105 89 135 89 150 59 150 29 135 14 120 44 105 14
Polygon -14835848 true true 108 77 87 118 89 193 123 252 146 225 146 171 135 114 133 53
Polygon -955883 true false 93 100 80 93 71 109 63 152 65 197 76 225 90 240 106 219
Polygon -955883 true false 96 68 76 80 65 65 65 51 68 32 77 24 97 45
Polygon -14835848 true true 122 252 146 274 173 277 203 272 181 237 145 224
Polygon -955883 true false 174 264 192 279 219 272 230 254 224 233 200 223 165 236
Circle -16777216 true false 105 52 13

johnny right
true
7
Polygon -14835848 true true 195 14 210 44 210 74 195 89 165 89 150 59 150 29 165 14 180 44 195 14
Polygon -14835848 true true 192 77 213 118 211 193 177 252 154 225 154 171 165 114 167 53
Polygon -955883 true false 207 100 220 93 229 109 237 152 235 197 224 225 210 240 194 219
Polygon -955883 true false 204 68 224 80 235 65 235 51 232 32 223 24 203 45
Polygon -14835848 true true 178 252 154 274 127 277 97 272 119 237 155 224
Polygon -955883 true false 126 264 108 279 81 272 70 254 76 233 100 223 135 236
Circle -16777216 true false 182 52 13

kyle
true
0
Polygon -2674135 true false 87 207 26 113 93 54 208 55 266 112 226 208
Polygon -955883 true false 76 125 89 101 99 100 83 143
Polygon -955883 true false 217 118 194 99 187 107 215 127
Polygon -955883 true false 105 204 97 225 108 252 124 238 116 224 122 198
Polygon -955883 true false 205 202 217 223 212 248 193 246 202 225 193 202
Circle -16777216 true false 115 97 16
Circle -16777216 true false 159 97 16
Polygon -955883 true false 284 116 264 98 227 96 202 121 205 162 238 176 286 172 296 156 276 153 254 160 237 154 234 138 234 126 251 138 273 126 295 130
Polygon -955883 true false 13 174 33 192 70 194 95 169 92 128 59 114 11 118 1 134 21 137 43 130 60 136 63 152 63 164 46 152 24 164 2 160

laser gun
true
0
Polygon -955883 true false 210 210 150 165 150 135 180 150 225 180
Polygon -6459832 true false 210 210 240 195 327 295 345 285 345 315 315 330 210 210
Polygon -6459832 true false 225 270 225 285 240 285 225 270
Polygon -2674135 true false 105 60 105 90
Polygon -6459832 false false 211 181 211 211 301 316 316 331 346 316 346 286 241 166
Polygon -2674135 true false 345 315 345 405 300 405 300 360 210 255 210 210 315 330 345 315
Polygon -2674135 false false 210 240 210 300 240 300 240 285
Polygon -2674135 false false 210 180 210 210 240 195 240 165
Polygon -6459832 true false 210 180 210 210 240 210
Polygon -2674135 true false 240 165 210 180 315 300 345 285

line half
true
0
Line -7500403 true 150 0 150 150

rectangle
true
0
Rectangle -16777216 true false 285 105 1065 180
Rectangle -16777216 true false -765 105 15 180
Rectangle -16777216 true false 15 105 315 180

rifle gun
true
0
Circle -13840069 true false 135 135 30
Polygon -13840069 true false 165 150 345 240 360 270 390 300 390 345 345 300 360 270 345 300 330 285 330 330 315 330 300 330 315 285 225 240 210 285 180 270 195 240 210 210 150 165
Polygon -13840069 false false 300 270 285 300 330 315 345 285
Polygon -13840069 true false 225 135 225 120

rock fish left
true
0
Polygon -1184463 true false 101 164 70 238 124 232 149 256 170 230 226 231 191 158 103 162
Polygon -2674135 true false 112 173 91 223 125 213 148 241 166 215 205 216 179 166 150 178
Polygon -7500403 true true 138 200 93 155 123 50 183 65 204 162 138 200
Circle -1184463 true false 128 89 16

rock fish right
true
0
Polygon -1184463 true false 199 164 230 238 176 232 151 256 130 230 74 231 109 158 197 162
Polygon -2674135 true false 188 173 209 223 175 213 152 241 134 215 95 216 121 166 150 178
Polygon -7500403 true true 162 200 207 155 177 50 117 65 96 162 162 200
Circle -1184463 true false 156 89 16

scale
true
0
Circle -1 false false -431 -446 892
Circle -2064490 true false 108 48 85
Polygon -2064490 true false 135 135 135 150 135 180 105 180 60 270 240 270 195 180 150 180 150 135 135 120 135 150
Rectangle -1184463 true false 120 225 180 240
Polygon -2064490 true false 150 135 165 120 165 195 150 180 150 135
Rectangle -13345367 true false 30 120 270 135

teeth
true
15
Circle -1 true true 132 58 95
Circle -1 true true 73 58 95
Polygon -1 true true 210 135 210 210 180 240 165 210 165 180 150 180 150 135
Polygon -1 true true 90 135 90 210 120 240 135 210 135 180 150 180 150 135
Circle -16777216 true false 177 92 15
Circle -16777216 true false 108 92 15

tobi left
true
1
Polygon -1 true false 75 256 120 226 105 136 120 16 150 1 165 16 180 91 165 226 210 241 150 271 75 256
Polygon -1 true false 120 165 99 183 90 105 120 105 120 165
Polygon -1 true false 165 120 210 150 165 90
Polygon -1 true false 165 75 210 75 195 60 195 45 165 60
Polygon -2674135 true true 117 204 131 184 139 152 115 129 126 102 170 148 176 100 139 83 156 67 167 42 148 1 118 13 105 144 116 204
Circle -16777216 true false 120 23 12
Polygon -2674135 true true 117 225 147 237 166 199 120 224

tobi right
true
1
Polygon -1 true false 225 256 180 226 195 136 180 16 150 1 135 16 120 91 135 226 90 241 150 271 225 256
Polygon -1 true false 180 165 201 183 210 105 180 105 180 165
Polygon -1 true false 135 120 90 150 135 90
Polygon -1 true false 135 75 90 75 105 60 105 45 135 60
Polygon -2674135 true true 183 204 169 184 161 152 185 129 174 102 130 148 124 100 161 83 144 67 133 42 152 1 182 13 195 144 184 204
Circle -16777216 true false 168 23 12
Polygon -2674135 true true 183 225 153 237 134 199 180 224

wierd tree hook
true
0
Circle -10899396 false false 135 135 30
Polygon -10899396 true false 150 165 135 180 120 195 135 225 165 225 180 195 150 165
Polygon -6459832 true false 135 225 135 255 135 270 165 270 165 225
Polygon -955883 true false 120 285 180 285 195 270 105 270 120 285
Polygon -955883 true false 105 270 90 255 75 255 75 270 105 300 120 285 105 270
Polygon -955883 true false 195 270 210 255 225 255 225 270 195 300 180 285 195 270

@#$#@#$#@
NetLogo 5.0.2
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
