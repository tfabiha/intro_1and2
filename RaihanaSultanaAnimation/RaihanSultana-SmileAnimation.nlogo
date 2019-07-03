extensions [sound]

to go
  ca
  whiten

  smile
  happyface
  wait .8
  slide
  firstbk
  walk
 crt 1
 [set shape "personsad0"
   set color black
   set size 15
   set heading 0
   setxy 0 -7.8]
 pplbk
 wait .5
 words
 wait .5
 crying
  rain
  wait 1
  slide
  bathroom
wait .8
words2
wait .8
personcrybathroom
wait .8
slide
bldgs
wait .5
words3
wait .8
slide
newbk
wait .8
burst
wait .8
bloom
wait 1.5
ca
colorslide
wait .2
colorsmile
wait .8
ca
words4
wait .8
ca
ccolor
wait 1
ca
colorslide
theend
end

to whiten
  ask patches [
    set pcolor white]
end

to smile
  smile1
  wait .5
  smile2
  wait .5
  smile3
  wait .5
  smile4
  wait .5
  smile5
end

to smile1
  crt 1
 [
    set shape "letterS"
    set size 10
    set heading 0
    setxy -8 5]
end

to smile2
  crt 1
  [
    set shape "letterM"
    set size 10
    set heading 0
    setxy -3 5]
end

to smile3
  crt 1
 [
    set shape "letterI"
    set size 11
    set heading 0
    setxy -1 5]
end

to smile4
  crt 1
  [
    set shape "letterL"
    set size 10
    set heading 0
    setxy 1 5]
end

to smile5
  crt 1
  [
    set shape "letterE"
    set size 10
    set heading 0
    setxy 5 5.5]
end

to happyface
  crt 1
   [
     set shape "firsthappy"
     set heading 0
     set size 5
     setxy -1 -3
   wait .5
   die ]

   crt 1 [
   set shape "secondhappy"
   set heading 0
   set size 5
   setxy -1 -3
   wait .5
   die]

  crt 1 [
    set shape "thirdhappy"
    set heading 0
    set size 5
    setxy -1 -3
    wait .5
    die]

 crt 1 [
    set shape "fourthhappy"
    set heading 0
    set size 5
    setxy -1 -3]
end

patches-own [secplace]

to slide
  ca
  ask patches  [
    if abs pxcor <= 1
    [set pcolor white]]
  ask patches [set pcolor [pcolor] of patch (pxcor + 1) pycor ]
  ask patches [set secplace [pcolor] of patch
    (pxcor + 1) pycor]
  ask patches [set pcolor secplace]
wait .3
ask patches  [
    if abs pxcor <= 5
    [set pcolor white]]
  ask patches [set pcolor [pcolor] of patch (pxcor + 1) pycor ]
  ask patches [set secplace [pcolor] of patch
    (pxcor + 1) pycor]
  ask patches [set pcolor secplace]
  wait .3
  ask patches  [
    if abs pxcor <= 8
    [set pcolor white]]
  ask patches [set pcolor [pcolor] of patch (pxcor + 1) pycor ]
  ask patches [set secplace [pcolor] of patch
    (pxcor + 1) pycor]
  ask patches [set pcolor secplace]
  wait .3
  ask patches  [
    if abs pxcor <= 10
    [set pcolor white]]
  ask patches [set pcolor [pcolor] of patch (pxcor + 1) pycor ]
  ask patches [set secplace [pcolor] of patch
    (pxcor + 1) pycor]
  ask patches [set pcolor secplace]
  ask patches [set pcolor white]
end

to firstbk
  ask patches [
    set pcolor white
    if pycor < -10 [set pcolor black]]
  end

to rain
  repeat 2
  [crt 1
  [
    set shape "raincloud1"
    set color gray
    set size 25
    set heading 0
  setxy 2 -5
  wait .3
  die ]
crt 1
  [
    set shape "raincloud2"
    set color gray
    set size 25
    set heading 5
setxy 2 -5
 wait .3
  die]
  crt 1
  [
    set shape "raincloud3"
    set color gray
    set size 25
    set heading 0
setxy 2 -5
 wait .3
 die ]
  crt 1
  [
    set shape "raincloud4"
    set color gray
    set size 25
    set heading 0
  setxy 2 -5
  die]]
  end

to crying
crt 1
   [
    set shape "personsad"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
  crt 1
  [
    set shape "personsad2"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
  crt 1
 [
    set shape "personsad3"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
  crt 1
  [
    set shape "personsad4"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
crt 1
  [
    set shape "personsad5"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
  crt 1
  [
    set shape "personsad6"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
    wait .3
    die]
    crt 1
 [
    set shape "personsad7"
    set color black
    set size 15
    setxy 0 -7.8
    set heading 0
  ]
end

to walk
 crt 1
 [
   set shape "personsad"
   set size 15
   setxy -13 -7.8
   set color black
   set heading 0
   wait .3
   die]
  crt 1
 [
  set shape "personsad"
   set size 15
   setxy -12 -7.8
   set color black
   set heading 0
   wait .3
   die]
 crt 1
 [
   set shape "personsad"
   set size 15
   setxy -11 -7.8
   set color black
   set heading 0
   wait .3
   die]
 crt 1
 [  set shape "personsad"
   set size 15
   setxy -10 -7.8
   set color black
   set heading 0
   wait .3

 die]
 crt 1
 [
  set shape "personsad"
   set size 15
   setxy -9 -7.8
   set color black
   set heading 0
   wait .3
   die]
 crt 1
  [
  set shape "personsad"
   set size 15
   setxy -8 -7.8
   set color black
   set heading 0
   wait .3
   die]
  crt 1
 [
  set shape "personsad"
   set size 15
   setxy -7 -7.8
   set color black
   set heading 0
   wait .3
   die]
  crt 1
 [
  set shape "personsad"
   set size 15
   setxy -6 -7.8
   set color black
   set heading 0
   wait .3
   die]
  crt 1
 [
  set shape "personsad"
   set size 15
   setxy -5 -7.8
   set color black
   set heading 0
   wait .3
   die] crt 1
  [
  set shape "personsad"
   set size 15
   setxy -4 -7.8
   set color black
   set heading 0
   wait .3
   die] crt 1
 [
  set shape "personsad"
   set size 15
   setxy -3 -7.8
   set color black
   set heading 0
   wait .3
   die]
  crt 1
  [ set shape "personsad"
   set size 15
   setxy 0 -7.8
   set color black
   set heading 0
die]


end

to words
  crt 1
  [set shape "freak"
    set size 8
    setxy -13 2
    set color black
    set heading 0
    set heading -45
  wait .5
  ]
  crt 1
  [set shape "godie"
    set color black
    set size 9
    set heading 0
    setxy 13 2 ]
wait .5
crt 1[set shape "loser"
  set color black
  set size 15
  set heading 0
  setxy -10 5]
end

to pplbk
   crt 1
 [set shape "pplbk"
   set color black
   set heading 0
   set size 15
   setxy -10 -6]
 wait .4
 crt 1
 [set shape "pplbk"
   set color black
   set heading 0
   set size 15
   setxy 11 -6]
end

 to words1
   crt 1
  [set color black
    set label "Should I die today?"
    setxy -2 11
    wait 1.5
    die]
  crt 1
  [set color black
    set label "No, today's not the day"
    setxy -1 11
    wait 1.5
   die]
  crt 1
  [set color black
    set label "Maybe tomorrow"
    setxy -2 11
  ]
end

to bathroom
  import-pcolors "bathroom.png"
  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -12 -12
    wait .3
    die]
  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -11 -12
    wait .3
    die]
      crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -10 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -9 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -7 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -6 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -4 -12
    wait .3
    die]
    crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -3 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -2 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy -1 -12
    wait .3
    die]
    crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy 1 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy 2 -12
    wait .3
    die]
    crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy 3 -12
    wait .3
    die]  crt 1
  [set size 20
    set shape "personsad"
    set heading 0
    set color black
    setxy 4 -12
    wait .3
    die]
  crt 1
  [set shape "personbk"
    set size 20
    set heading 0
    set color black
    setxy 4 -12]
  crt 1
  [set shape "personsadd"
    set size 20
    set heading 0
    set color black
    setxy 8.5 -7]
end

to words2
  crt 1
  [set color black
    setxy 10 -13
    set label "Why am I alive"
  wait 1.2
  die]
  crt 1
  [set color black
    setxy 10 -13
    set label "Does anyone even care"
    wait 1.2
    die]
  crt 1
  [set color black
    setxy 10 -13
    set label "Probably not"
    wait 1.2
    die]
  end

to personcrybathroom
  crt 1 [
    set size 20
    set shape "personcry1"
    set heading 0
    set color black
    setxy 8.5 -7
    wait .3
    die]
  crt 1[
    set size 20
    set shape "personcry2"
    set heading 0
    set color black
    setxy 8.5 -7
    wait .3]
end

to bldgs
  import-pcolors "bldgs.png"
  crt 1 [
    set shape "personsad"
    set color black
    set size 9
    set heading 0
    setxy -14 7
    wait .3
    die]
  crt 1
  [set shape "personsad"
    set color black
    set size 9
    set heading 0
    setxy -13 7
    wait .3
    die]
  crt 1
  [
    set shape "personsad"
    set color black
    set size 9
    set heading 0
    setxy -12 7
  ]
end

to words3
 crt 1
  [set color black
    set label "Should I die today?"
    setxy -2 11
wait .9
die]
  crt 1
  [set color black
    set label "No, today's not the day"
    setxy -1 11
    wait .9
    die]
  crt 1
  [set color black
    set label "Maybe tomorrow"
    setxy -2 11
    wait .7
  ]
end

to newbk
  import-pcolors "newbk.png"
wait .4
crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -12 -8.5
  wait .3
  die]
crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -11 -8.5
  wait .3
  die]crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -10 -8.5
  wait .3
  die]crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -9 -8.5
  wait .3
  die]crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -8 -8.5
  wait .3
  die]crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -7 -8.5
  wait .3
  die]
crt 1
[set color black
  set shape "personsad"
  set size 12
  set heading 0
  setxy -6 -8.5
  wait .8
]
crt 1
[set color black
set shape "personhappy"
set size 12
set heading 0
setxy 10 -8.5
wait .3
die]
crt 1
[set color black
set shape "personhappy"
set size 12
set heading 0
setxy 10 -8.5
wait .3
die]
crt 1
[set color black
  set heading 0
  set shape "personhappy"
  setxy 9 -8.5
  set size 12
  wait .3
  die]
crt 1
[set color black
  set size 12
  set heading 0
  setxy 8 -8.5
  set shape "personhappy"
  wait .8
  die]
crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave1"
  wait .2
  die]
crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave2"
  wait .2
  die]crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave3"
  wait .2
  die]crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave4"
  wait .2
  die]crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave5"
  wait .2
  die]crt 1
[set color black
  set heading 0
  set size 12
  setxy 8 -8.5
  set shape "wave6"
  wait .2
  die]
crt 1[
  set shape "personhappy"
  set size 12
  set color black
  set heading 0
  setxy 8 -8.5
 ]
crt 1
[set color black
  set label "Hi"
  setxy 10 -12
wait .8
die]
crt 1
[set shape "personh"
  set color black
  set size 12
  set heading 0
  setxy -6 -8.5
  wait .5]
crt 1
[set color black
  setxy -10 -12
  set label "Hi"
  wait 1
die]
crt 1
[set shape "heartperson"
  set color black
  setxy -6 -8.5
  set heading 0
  set size 12
  wait .5]
end

to burst
  import-pcolors "burst1.png"
  wait .8
  import-pcolors "burst2.png"
  wait .8
  import-pcolors "burst3.png"
  wait .8
  import-pcolors "burst4.png"
end

to colorslide
  import-pcolors "colors1.png"
wait .2
import-pcolors "colors2.png"
wait .2
import-pcolors "colors3.png"
wait .2
import-pcolors "recolor1.png"
wait .2
import-pcolors "recolor2.png"
wait .2
import-pcolors "recolor3.png"
wait .2
ask patches [
  set pcolor black]
end

to ColorS
  crt 1 [
     set shape "Sletter"
     set size 20
     set color green
     set heading 0
     setxy -6 0
     wait .3
     die]

crt 1 [
     set shape "Sletter"
     set size 20
     set color orange
     set heading 0
     setxy -6 0
     wait .3
     die]
crt 1 [
     set shape "Sletter"
     set size 20
     set color red
     set heading 0
     setxy -6 0
     wait .3
     die]
crt 1 [
     set shape "Sletter"
     set size 20
     set color white
     set heading 0
     setxy -6 0]
end

to ColorM


 crt 1 [

     set shape "Mletter"
     set size 20
     set color green
     set heading 0
     setxy -3 2
     wait .3
     die]

crt 1 [
     set shape "Mletter"
     set size 20
     set color orange
     set heading 0
     setxy -3 2
     wait .3
     die]
crt 1 [
     set shape "Mletter"
     set size 20
     set color red
     set heading 0
     setxy -3 2
     wait .3
     die]
crt 1 [
     set shape "Mletter"
     set size 20
     set color white
     set heading 0
     setxy -3 2]
end


to ColorI
 crt 1 [
    set shape "Iletter"
    set size 20
    set color green
    set heading 0
    setxy 0 1
    wait .3
    die]
  crt 1 [
    set shape "Iletter"
    set size 20
    set color orange
    set heading 0
    setxy 0 1
    wait .3
    die]
  crt 1[
    set shape "Iletter"
    set size 20
    set color red
    set heading 0
    setxy 0 1
    wait .3
    die]
  crt 1 [
    set shape "Iletter"
    set size 20
    set color white
    set heading 0
    setxy 0 1
  ]
end

to ColorL
crt 1
  [set shape "Lletter"
    set size 20
    set heading 0
    set color green
    setxy 6 1
 wait .3
 die
  ]
   crt 1
  [set shape "Lletter"
    set size 20
    set heading 0
    set color orange
    setxy 6 1
 wait .3
 die]
   crt 1
  [set shape "Lletter"
    set size 20
    set heading 0
    set color red
    setxy 6 1
 wait .3
 die
  ] crt 1
  [set shape "Lletter"
    set size 20
    set heading 0
    set color white
    setxy 6 1
  ]

end

 to colorE
   crt 1
    [set shape "Eletter"
    set size 20
    set heading 0
    set color green
    setxy 11 2
 wait .3
 die
  ]
   crt 1
  [set shape "Eletter"
    set size 20
    set heading 0
    set color orange
    setxy 11 2
 wait .3
 die]
   crt 1
  [set shape "Eletter"
    set size 20
    set heading 0
    set color red
    setxy 11 2
 wait .3
 die
  ] crt 1
  [set shape "Eletter"
    set size 20
    set heading 0
    set color white
    setxy 11 2
  ]

end

 to Colorsmile
   colorS

   colorM

   colorI

   colorL

   colorE
 end

 to words4
   crt 1 [
     set shape "because"
     set size 22
     set heading 0
     set color white
     setxy -5 10 ]
   wait .3
   crt 1
   [ set shape "you"
     set size 15
     set heading 0
     set color white
     setxy 7 11.5]
 wait .3
 crt 1[
   set shape "never"
   set heading 0
   set color white
   set size 15
   setxy 0 7]
wait .3
crt 1[
  set shape "know"
  set heading 0
  set color white
  set size 15
  setxy -5 3]
 wait .3
 crt 1 [
   set shape "whose"
   set heading 0
   set color white
   set size 15
   setxy 5 3]
wait .3
crt 1 [
  set shape "life"
  set heading 0
  set size 15
  set color white
  setxy 1 -2]
wait .3
crt 1 [
  set shape "youwill"
  set size 22
  set heading 0
  set color white
  setxy -4 -9]
wait .3
crt 1 [
  set shape "fill"
  set size 15
  set heading 0
  set color white
  setxy 6 -8.6]
wait .3
 crt 1 [
   set shape "with"
   set size 15
   set heading 0
   set color white
   setxy 1 -13]
 end

   to colorC
     crt 1
     [set shape "Cletter"
       set size 20
       set heading 0
       set color green
       setxy -8 0
       wait .3
       die]
      crt 1
     [set shape "Cletter"
       set size 20
       set heading 0
       set color orange
       setxy -8 0
       wait .3
       die] crt 1
     [set shape "Cletter"
       set size 20
       set heading 0
       set color red
       setxy -8 0
       wait .3
       die] crt 1
     [set shape "Cletter"
       set size 20
       set heading 0
       set color white
       setxy -8 0
     ]
   end

   to colorO
     crt 1
      [set shape "oletter"
       set size 25
       set heading 0
       set color green
       setxy -4 1.5
       wait .3
       die]
      crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color orange
       setxy -4 1.5
       wait .3
       die] crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color red
       setxy -4 1.5
       wait .3
       die] crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color white
       setxy -4 1.5
     ]
   end


   to colorL2
     crt 1
      [set shape "Lletter"
       set size 20
       set heading 0
       set color green
       setxy 2 1
       wait .3
       die]
      crt 1
     [set shape "Lletter"
       set size 20
       set heading 0
       set color orange
       setxy 2 1
       wait .3
       die] crt 1
     [set shape "Lletter"
       set size 20
       set heading 0
       set color red
       setxy 2 1
       wait .3
       die] crt 1
     [set shape "Lletter"
       set size 20
       set heading 0
       set color white
       setxy 2 1
     ]
   end
      to colorO2
     crt 1
      [set shape "oletter"
       set size 25
       set heading 0
       set color green
       setxy 5.5 1.5
       wait .3
       die]
      crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color orange
       setxy 5.5 1.5
       wait .3
       die] crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color red
       setxy 5.5 1.5
       wait .3
       die] crt 1
     [set shape "oletter"
       set size 25
       set heading 0
       set color white
       setxy 5.5 1.5
     ]
   end

        to colorR
     crt 1
     [set shape "Rletter"
       set size 22
       set heading 0
       set color green
       setxy 12 2
       wait .3
       die]
      crt 1
     [set shape "Rletter"
       set size 22
       set heading 0
       set color orange
       setxy 12 2
       wait .3
       die] crt 1
     [set shape "Rletter"
       set size 22
       set heading 0
       set color red
       setxy 12 2
       wait .3
       die] crt 1
     [set shape "Rletter"
       set size 22
       set heading 0
       set color white
       setxy 12 2
     ]
   end

       to ccolor
         colorC

         colorO

         colorL2

         colorO2

         colorR

       end

       to theend
         ca
         crt 1
         [set color white
         set shape "theend"
         set size 40
         set heading 0
         setxy 0 0]
        crt 1
        [set color black
          set shape "lastperson"
          set size 20
          set heading 0
          setxy 0 -12]
       end


to bloom
  crt 1
  [set shape "firstbloom"
    set size 8
    set heading 0
    set color pink
    setxy -10 -6.2
    wait .4
    die]
    crt 1
  [set shape "secondbloom"
    set size 8
    set heading 0
    set color pink
    setxy -10 -6.2
    wait .4
    die]
crt 1
[set shape "thirdbloom"
    set size 8
    set heading 0
    set color pink
    setxy -10 -6.2
    wait .4
    die]
crt 1
[set shape "lastbloom"
    set size 8
    set heading 0
    set color pink
    setxy -10 -6.2
   ]
wait .3
crt 1
  [set shape "firstbloom"
    set size 8
    set heading 0
    set color red
    setxy 12 -6.2
    wait .4
    die]
    crt 1
  [set shape "secondbloom"
    set size 8
    set heading 0
    set color red
    setxy 12 -6.2
    wait .4
    die]
crt 1
[set shape "thirdbloom"
    set size 8
    set heading 0
    set color red
    setxy 12 -6.2
    wait .4
    die]
crt 1
[set shape "lastbloom"
    set size 8
    set heading 0
    set color red
    setxy 12 -6.2
   ]

end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
649
470
16
16
13.0
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
87
41
150
74
GO!!
go
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

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

because
true
15
Line -1 true 30 130 28 86
Line -1 true 29 105 46 105
Line -1 true 45 106 48 127
Line -1 true 31 129 48 126
Line -1 true 59 114 72 114
Line -1 true 73 114 70 107
Line -1 true 72 108 61 108
Line -1 true 61 109 57 127
Line -1 true 57 126 76 128
Line -1 true 96 108 84 111
Line -1 true 85 111 88 127
Line -1 true 88 126 99 126
Line -1 true 125 108 116 110
Line -1 true 116 110 108 127
Line -1 true 110 128 122 128
Line -1 true 122 110 132 133
Line -1 true 121 129 129 125
Line -1 true 140 107 142 123
Line -1 true 143 123 151 126
Line -1 true 153 127 158 121
Line -1 true 159 121 158 105
Line -1 true 185 106 173 111
Line -1 true 173 112 182 122
Line -1 true 183 122 169 133
Line -1 true 203 120 211 109
Line -1 true 211 109 199 108
Line -1 true 201 110 201 122
Line -1 true 202 121 202 132
Line -1 true 203 132 215 128

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

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

cletter
true
15
Line -1 true 162 70 128 64
Line -1 true 127 64 103 74
Line -1 true 102 75 91 145
Line -1 true 91 143 102 161
Line -1 true 103 160 129 168
Line -1 true 129 169 169 155

cloud
false
0
Circle -7500403 true true 13 118 94
Circle -7500403 true true 86 101 127
Circle -7500403 true true 51 51 108
Circle -7500403 true true 118 43 95
Circle -7500403 true true 158 68 134

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

dot
false
0
Circle -7500403 true true 90 90 120

eletter
true
15
Line -1 true 116 96 117 192
Line -1 true 117 98 165 95
Line -1 true 117 141 143 140
Line -1 true 117 193 169 195

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

fill
true
15
Line -1 true 77 113 78 179
Line -1 true 77 114 97 110
Line -1 true 78 138 90 134
Line -1 true 104 138 105 176
Line -1 true 103 124 103 127
Line -1 true 120 104 123 177
Line -1 true 137 105 138 176

firstbloom
true
0
Rectangle -13840069 true false 143 251 160 312

firsthappy
false
0
Circle -16777216 true false 8 8 285
Circle -1 true false 60 75 60
Circle -1 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240
Circle -16777216 true false 36 141 108
Circle -16777216 true false 75 180 90
Circle -16777216 true false 168 153 85
Circle -16777216 true false 101 146 127

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

fourthhappy
false
0
Circle -16777216 true false 8 8 285
Circle -1 true false 60 75 60
Circle -1 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240
Circle -16777216 true false 36 141 108
Circle -16777216 true false 75 180 90
Circle -16777216 true false 168 153 85
Circle -16777216 true false 101 146 127
Polygon -1 true false 67 199 82 191 102 201 128 208 159 210 182 206 203 198 210 192 224 205 218 216 199 227 183 233 162 235 141 236 112 233 94 226 76 215 67 204 65 203 67 200
Polygon -1 true false 62 194 76 185 82 191 67 204 60 197 63 194
Polygon -1 true false 213 186 231 201 218 215 211 191 212 188
Polygon -1 true false 60 196 54 190 49 184 69 172 78 187 62 196
Polygon -1 true false 214 188 220 178 237 194 231 199 230 202 216 189
Polygon -1 true false 49 185 42 177 37 172 67 159 71 173 50 185
Polygon -1 true false 221 179 226 165 246 186 228 202 216 184
Polygon -1 true false 45 178 76 216 76 215 45 182 42 177

freak
true
0
Rectangle -16777216 true false 40 144 48 199
Rectangle -16777216 true false 40 141 77 147
Rectangle -16777216 true false 45 165 62 170
Rectangle -16777216 true false 85 142 91 197
Rectangle -16777216 true false 86 141 115 146
Rectangle -16777216 true false 111 143 116 163
Rectangle -16777216 true false 90 160 115 167
Rectangle -16777216 true false 99 163 105 179
Rectangle -16777216 true false 105 178 110 188
Rectangle -16777216 true false 110 185 115 197
Rectangle -16777216 true false 126 142 131 196
Rectangle -16777216 true false 128 139 155 144
Rectangle -16777216 true false 132 165 147 169
Rectangle -16777216 true false 129 191 157 196
Rectangle -16777216 true false 164 142 169 197
Rectangle -16777216 true false 164 142 192 148
Rectangle -16777216 true false 190 142 195 197
Rectangle -16777216 true false 168 169 193 172
Rectangle -16777216 true false 206 142 213 198
Rectangle -16777216 true false 213 164 223 167
Rectangle -16777216 true false 222 156 226 167
Rectangle -16777216 true false 226 142 232 155
Rectangle -16777216 true false 222 166 226 175
Rectangle -16777216 true false 227 174 231 198
Rectangle -16777216 true false 246 140 256 193
Rectangle -16777216 true false 246 201 255 211

godie
true
0
Rectangle -16777216 true false 79 58 83 95
Rectangle -16777216 true false 79 55 104 61
Rectangle -16777216 true false 81 90 103 96
Rectangle -16777216 true false 101 81 107 94
Rectangle -1 true false 97 82 109 82
Rectangle -16777216 true false 96 78 113 81
Rectangle -16777216 true false 123 57 129 96
Rectangle -16777216 true false 125 57 147 61
Rectangle -16777216 true false 145 58 150 98
Rectangle -16777216 true false 123 94 149 98
Rectangle -16777216 true false 69 133 74 182
Rectangle -16777216 true false 71 131 92 137
Rectangle -16777216 true false 91 134 98 141
Rectangle -16777216 true false 96 139 102 177
Rectangle -16777216 true false 73 178 91 183
Rectangle -16777216 true false 91 173 98 179
Rectangle -16777216 true false 115 133 122 180
Rectangle -16777216 true false 134 133 139 178
Rectangle -16777216 true false 136 133 158 138
Rectangle -16777216 true false 139 153 151 156
Rectangle -16777216 true false 136 175 158 180
Rectangle -16777216 true false 175 130 182 171
Rectangle -16777216 true false 175 183 183 191

heartperson
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 133 89 155 91
Line -16777216 true 128 108 106 157
Line -16777216 true 164 109 187 152
Circle -16777216 true true 103 155 8
Circle -16777216 true true 184 150 10
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Line -16777216 true 127 82 133 89
Polygon -2674135 true false 146 138 143 131 136 127 131 127 129 130 129 135 135 141 142 151 148 159 155 147 161 135 163 129 157 126 151 122 164 130 148 136 158 143
Polygon -2674135 true false 146 137 149 128 153 126 156 126 162 126 162 131 156 143 146 137
Polygon -2674135 true false 145 139 147 134 155 142 144 140

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

iletter
true
15
Line -1 true 157 89 157 183
Line -1 true 138 91 173 91
Line -1 true 145 184 171 184

know
true
15
Line -1 true 67 95 70 176
Line -1 true 68 148 89 127
Line -1 true 72 145 94 176
Line -1 true 101 133 103 177
Line -1 true 103 143 119 136
Line -1 true 119 136 122 176
Line -1 true 133 138 134 172
Line -1 true 133 139 152 136
Line -1 true 151 135 151 174
Line -1 true 135 172 152 172
Line -1 true 165 135 169 170
Line -1 true 169 169 180 133
Line -1 true 181 136 190 169
Line -1 true 193 136 191 166

lastbloom
true
13
Rectangle -13840069 true false 143 251 160 312
Rectangle -13840069 true false 143 240 161 266
Circle -1184463 true false 137 221 32
Polygon -2064490 true true 141 227 119 219 97 233 116 242 135 237 141 227
Polygon -2064490 true true 167 228 183 225 207 241 182 245 167 240 165 229
Polygon -2064490 true true 135 235 121 245 121 266 137 256 140 247 135 235
Polygon -2064490 true true 168 240 160 251 165 263 186 266 180 248 168 242
Polygon -2064490 true true 159 220 165 201 186 200 182 220 167 228
Polygon -2064490 true true 141 225 123 215 118 195 137 204 147 222 145 201 151 190 159 204 159 221 144 225

lastperson
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 133 89 155 91
Line -1 false 128 108 106 157
Line -1 false 164 109 187 152
Circle -1 true false 103 155 8
Circle -1 true false 184 150 10
Polygon -1 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Line -16777216 true 127 82 133 89
Polygon -2674135 true false 146 138 143 131 136 127 131 127 129 130 129 135 135 141 142 151 148 159 155 147 161 135 163 129 157 126 151 122 164 130 148 136 158 143
Polygon -2674135 true false 146 137 149 128 153 126 156 126 162 126 162 131 156 143 146 137
Polygon -2674135 true false 145 139 147 134 155 142 144 140
Rectangle -16777216 true true 121 107 182 109
Rectangle -16777216 true true 111 105 167 110

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

lettere
true
0
Rectangle -16777216 true false 120 90 135 210
Rectangle -16777216 true false 135 90 210 105
Rectangle -16777216 true false 135 135 180 150
Rectangle -16777216 true false 135 195 210 210

letteri
true
0
Rectangle -16777216 true false 150 90 165 195

letterl
true
0
Rectangle -16777216 true false 135 75 150 195
Rectangle -16777216 true false 135 180 225 195

letterm
true
0
Rectangle -16777216 true false 99 74 114 194
Rectangle -1 true false 120 76 120 120
Rectangle -16777216 true false 104 74 133 86
Rectangle -16777216 true false 131 74 142 131
Rectangle -16777216 true false 142 74 148 131
Rectangle -16777216 true false 137 74 180 85
Rectangle -16777216 true false 166 76 181 193

letters
true
0
Rectangle -16777216 true false 105 45 210 60
Rectangle -16777216 true false 105 60 120 120
Rectangle -16777216 true false 105 120 210 135
Rectangle -16777216 true false 195 135 210 210
Rectangle -16777216 true false 105 195 210 210

life
true
15
Line -1 true 57 107 58 183
Line -1 true 76 141 78 184
Line -1 true 114 108 92 109
Line -1 true 93 107 96 183
Line -1 true 88 141 108 143
Line -1 true 117 140 117 181
Line -1 true 115 140 136 140
Line -1 true 136 139 115 160
Line -1 true 118 182 139 182

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

lletter
true
15
Line -1 true 106 89 105 180
Line -1 true 106 179 164 182

loser
true
15
Line -1 true 41 116 41 169
Line -1 true 41 169 65 168
Line -1 true 74 163 74 133
Line -1 true 74 134 86 134
Line -1 true 88 134 88 165
Line -1 true 74 163 89 163
Line -1 true 113 131 99 141
Line -1 true 101 142 114 158
Line -1 true 115 159 102 168
Line -1 true 126 150 138 139
Line -1 true 124 136 126 166
Line -1 true 127 166 144 164
Line -1 true 124 134 139 141
Line -1 true 153 133 154 166
Line -1 true 155 140 169 131

mletter
true
15
Line -1 true 92 194 91 109
Line -1 true 92 109 119 149
Line -1 true 119 148 142 107
Line -1 true 141 108 149 196

never
true
15
Line -1 true 50 128 53 164
Line -1 true 51 128 72 126
Line -1 true 72 126 75 160
Line -1 true 89 141 109 137
Line -1 true 87 128 90 156
Line -1 true 87 129 110 135
Line -1 true 91 157 114 154
Line -1 true 118 128 132 159
Line -1 true 132 159 141 130
Line -1 true 153 128 157 160
Line -1 true 152 128 172 126
Line -1 true 170 126 156 147
Line -1 true 158 160 180 158
Line -1 true 188 126 188 162
Line -1 true 189 133 207 126

oletter
true
15
Line -1 true 160 104 126 104
Line -1 true 127 105 118 141
Line -1 true 118 141 128 178
Line -1 true 130 179 156 180
Line -1 true 161 103 171 139
Line -1 true 172 139 158 184

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

personbk
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Line -16777216 true 128 108 106 157
Line -16777216 true 164 109 187 152
Circle -16777216 true true 103 155 8
Circle -16777216 true true 184 150 10
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -1 true false 114 43 60

personcry1
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 165 180 135 180 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -13345367 true false 162 72 6
Circle -13345367 true false 123 75 6
Circle -13345367 true false 160 84 6
Circle -13345367 true false 133 82 4

personcry2
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 165 180 135 180 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -13345367 true false 165 85 8
Circle -13345367 true false 121 87 6
Circle -13345367 true false 159 79 4
Circle -13345367 true false 131 76 6

personh
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 133 89 155 91
Line -16777216 true 128 108 106 157
Line -16777216 true 164 109 187 152
Circle -16777216 true true 103 155 8
Circle -16777216 true true 184 150 10
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Line -16777216 true 127 82 133 89

personhappy
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 108 106 157
Line -16777216 true 164 109 187 152
Circle -16777216 true true 103 155 8
Circle -16777216 true true 184 150 10
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8

personsad
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Line -16777216 true 128 108 106 157
Line -16777216 true 164 109 187 152
Circle -16777216 true true 103 155 8
Circle -16777216 true true 184 150 10
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14

personsad0
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14

personsad2
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Line -16777216 true 128 109 111 152
Line -16777216 true 161 109 182 154
Line -16777216 true 110 152 121 151
Line -16777216 true 183 154 168 149
Circle -1 true false 121 146 8
Circle -1 true false 162 145 8
Circle -1 true false 128 48 18
Circle -1 true false 159 50 15
Circle -16777216 false true 125 59 12
Circle -16777216 false true 156 57 12
Circle -13345367 true false 124 75 4
Circle -13345367 true false 156 73 6
Circle -13345367 true false 132 78 6
Circle -13345367 true false 164 82 6

personsad3
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Line -16777216 true 128 109 111 152
Line -16777216 true 161 109 182 154
Line -16777216 true 112 151 128 134
Line -16777216 true 180 152 160 136
Circle -1 true false 124 127 11
Circle -1 true false 155 129 10
Circle -13345367 true false 118 78 6
Circle -13345367 true false 129 73 7
Circle -13345367 true false 157 74 7
Circle -13345367 true false 161 85 7

personsad4
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Line -16777216 true 128 110 114 133
Line -16777216 true 163 107 181 134
Line -16777216 true 113 132 132 119
Line -16777216 true 180 134 163 122
Circle -1 true false 130 115 10
Circle -1 true false 153 116 11
Circle -13345367 true false 120 71 4
Circle -13345367 true false 125 78 6
Circle -13345367 true false 151 73 7
Circle -13345367 true false 160 80 6
Circle -13345367 true false 165 72 4

personsad5
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 130 100 10
Circle -1 true false 153 101 11
Line -16777216 true 125 104 113 121
Line -16777216 true 113 121 130 109
Line -16777216 true 165 103 177 119
Line -16777216 true 163 110 177 119
Circle -13345367 true false 121 78 4
Circle -13345367 true false 132 75 6
Circle -13345367 true false 123 86 6
Circle -13345367 true false 155 74 6
Circle -13345367 true false 166 79 6
Circle -13345367 true false 158 86 4

personsad6
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -16777216 true true 130 85 10
Circle -16777216 true true 153 86 11
Line -16777216 true 128 111 110 127
Line -16777216 true 110 127 131 91
Line -16777216 true 162 112 178 136
Line -16777216 true 178 136 159 90
Circle -13345367 true false 117 72 6
Circle -13345367 true false 121 83 8
Circle -13345367 true false 132 74 6
Circle -13345367 true false 157 70 4
Circle -13345367 true false 165 77 4
Circle -13345367 true false 151 77 6

personsad7
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -16777216 true true 130 70 10
Circle -16777216 true true 153 71 11
Line -16777216 true 135 79 112 122
Line -16777216 true 111 123 129 109
Line -16777216 true 160 77 174 122
Line -16777216 true 174 122 162 111
Circle -13345367 true false 116 71 8
Circle -13345367 true false 123 85 4
Circle -13345367 true false 130 81 6
Circle -13345367 true false 164 72 6
Circle -13345367 true false 165 83 4
Circle -13345367 true false 150 81 8

personsadd
true
14
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 95 133 90
Line -16777216 true 133 89 155 91
Polygon -16777216 true true 127 106 163 108 175 170 165 180 135 180 119 176 129 109
Circle -16777216 false true 110 36 74
Polygon -2674135 true false 150 135 135 120
Polygon -2674135 true false 143 134 138 129 131 131 131 141 139 148 144 155 141 137 143 135
Polygon -2674135 true false 150 153 147 139 149 134 153 129 158 135 159 139 157 142 151 154 149 145
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14

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

pplbk
true
0
Polygon -7500403 true true 70 254 72 233 79 218 82 200 91 184 87 179 80 172 78 161 79 151 85 142 93 137 105 137 119 143 124 160 121 178 114 185 119 194 126 207 127 217 134 231 144 232 144 208 148 198 149 185 153 177 157 165 159 158 156 151 150 145 150 138 150 129 154 120 168 110 181 110 188 114 195 120 196 130 197 143 192 153 187 158 189 166 192 176 198 187 201 200 203 216 204 232 210 247 210 258 72 259 71 254
Polygon -2674135 true false 87 160 89 155 96 167 88 161
Polygon -2674135 true false 106 165 111 154 112 159 107 166 106 166
Polygon -2674135 true false 160 131 164 127 171 144 161 131
Polygon -2674135 true false 178 140 182 127 185 133 178 141

raincloud1
true
0
Circle -7500403 true true 90 45 30
Circle -7500403 true true 106 30 42
Circle -7500403 true true 71 57 37
Circle -7500403 true true 93 49 56
Circle -7500403 true true 133 45 40
Circle -7500403 true true 136 56 46
Circle -13345367 true false 90 107 13
Circle -13345367 true false 82 147 12
Circle -13345367 true false 115 131 13
Circle -13345367 true false 146 111 10
Circle -13345367 true false 160 138 9
Circle -13345367 true false 107 177 12
Circle -13345367 true false 143 164 11

raincloud2
true
0
Circle -13345367 true false 109 98 12
Circle -7500403 true true 90 45 30
Circle -7500403 true true 106 30 42
Circle -7500403 true true 71 57 37
Circle -7500403 true true 93 49 56
Circle -7500403 true true 133 45 40
Circle -7500403 true true 136 56 46
Circle -13345367 true false 92 114 13
Circle -13345367 true false 82 152 12
Circle -13345367 true false 116 136 13
Circle -13345367 true false 148 120 10
Circle -13345367 true false 161 146 9
Circle -13345367 true false 143 170 11

raincloud3
true
0
Circle -13345367 true false 109 108 12
Circle -7500403 true true 90 45 30
Circle -7500403 true true 106 30 42
Circle -7500403 true true 71 57 37
Circle -7500403 true true 93 49 56
Circle -7500403 true true 133 45 40
Circle -7500403 true true 136 56 46
Circle -13345367 true false 92 125 13
Circle -13345367 true false 82 158 12
Circle -13345367 true false 117 143 13
Circle -13345367 true false 148 127 10
Circle -13345367 true false 161 149 9
Circle -13345367 true false 142 176 11

raincloud4
true
0
Circle -13345367 true false 109 114 12
Circle -7500403 true true 90 45 30
Circle -7500403 true true 106 30 42
Circle -7500403 true true 71 57 37
Circle -7500403 true true 93 49 56
Circle -7500403 true true 133 45 40
Circle -7500403 true true 136 56 46
Circle -13345367 true false 93 131 13
Circle -13345367 true false 83 160 12
Circle -13345367 true false 118 150 13
Circle -13345367 true false 148 133 10
Circle -13345367 true false 160 154 9
Circle -13345367 true false 142 179 11

rletter
true
15
Line -1 true 104 105 106 197
Line -1 true 105 107 140 105
Line -1 true 142 105 147 127
Line -1 true 149 127 140 137
Line -1 true 106 142 138 137
Line -1 true 116 140 152 193

secondbloom
true
0
Rectangle -13840069 true false 143 251 160 312
Rectangle -13840069 true false 143 240 161 266
Circle -1184463 true false 137 221 32

secondhappy
false
0
Circle -16777216 true false 8 8 285
Circle -1 true false 60 75 60
Circle -1 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240
Circle -16777216 true false 36 141 108
Circle -16777216 true false 75 180 90
Circle -16777216 true false 168 153 85
Circle -16777216 true false 101 146 127
Polygon -1 true false 67 199 82 191 102 201 128 208 159 210 182 206 203 198 210 192 224 205 218 216 199 227 183 233 162 235 141 236 112 233 94 226 76 215 67 204 65 203 67 200
Polygon -1 true false 62 194 76 185 82 191 67 204 60 197 63 194
Polygon -1 true false 213 186 231 201 218 215 211 191 212 188

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

sletter
true
15
Line -1 true 45 75 105 75
Line -1 true 47 75 46 112
Line -1 true 45 113 105 118
Line -1 true 105 117 104 160
Line -1 true 106 161 44 163

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

theend
false
0
Rectangle -2064490 true false 99 83 131 91
Rectangle -2064490 true false 115 89 121 117
Rectangle -2064490 true false 134 84 141 116
Rectangle -2064490 true false 136 96 160 103
Rectangle -2064490 true false 155 84 162 116
Rectangle -2064490 true false 170 84 177 117
Rectangle -2064490 true false 172 84 186 89
Rectangle -2064490 true false 174 112 188 117
Rectangle -2064490 true false 174 98 188 103
Rectangle -2064490 true false 110 136 117 169
Rectangle -2064490 true false 113 164 127 169
Rectangle -2064490 true false 113 149 127 154
Rectangle -2064490 true false 113 136 127 141
Rectangle -2064490 true false 135 137 141 166
Rectangle -2064490 true false 152 137 158 166
Polygon -2064490 true false 136 147 139 137 157 163 153 164 136 141
Rectangle -2064490 true false 165 136 172 167
Polygon -2064490 true false 169 136 189 141 193 161 170 167 172 161 184 157 181 147 170 143 170 136

thirdbloom
true
13
Rectangle -13840069 true false 143 251 160 312
Rectangle -13840069 true false 143 240 161 266
Circle -1184463 true false 137 221 32
Polygon -2064490 true true 141 227 119 219 97 233 116 242 135 237 141 227
Polygon -2064490 true true 167 228 183 225 207 241 182 245 167 240 165 229
Polygon -2064490 true true 135 235 121 245 121 266 137 256 140 247 135 235
Polygon -2064490 true true 168 240 160 251 165 263 186 266 180 248 168 242

thirdhappy
false
0
Circle -16777216 true false 8 8 285
Circle -1 true false 60 75 60
Circle -1 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240
Circle -16777216 true false 36 141 108
Circle -16777216 true false 75 180 90
Circle -16777216 true false 168 153 85
Circle -16777216 true false 101 146 127
Polygon -1 true false 67 199 82 191 102 201 128 208 159 210 182 206 203 198 210 192 224 205 218 216 199 227 183 233 162 235 141 236 112 233 94 226 76 215 67 204 65 203 67 200
Polygon -1 true false 62 194 76 185 82 191 67 204 60 197 63 194
Polygon -1 true false 213 186 231 201 218 215 211 191 212 188
Polygon -1 true false 60 196 54 190 49 184 69 172 78 187 62 196
Polygon -1 true false 214 188 220 178 237 194 231 199 230 202 216 189

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

wave1
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 128 108 99 143
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 93 140 8
Circle -16777216 true true 185 150 8

wave2
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 127 107 94 138
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 91 135 6
Circle -16777216 true true 185 150 8

wave3
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 91 129 6
Circle -16777216 true true 185 150 8
Line -16777216 true 129 106 118 124
Line -16777216 true 119 123 96 130

wave4
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 91 119 6
Circle -16777216 true true 185 150 8
Line -16777216 true 129 106 118 124
Line -16777216 true 118 123 95 121

wave5
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 90 104 6
Circle -16777216 true true 185 150 8
Line -16777216 true 129 106 118 124
Line -16777216 true 118 123 94 107

wave6
true
14
Circle -16777216 false true 110 36 74
Circle -1 true false 110 37 71
Circle -16777216 true true 124 59 12
Circle -16777216 true true 156 58 12
Line -16777216 true 164 109 187 152
Polygon -2674135 true false 127 106 163 108 175 170 163 193 131 193 119 176 129 109
Polygon -2674135 true false 150 135 135 120
Circle -1 true false 129 52 14
Circle -1 true false 159 50 14
Circle -16777216 false true 124 58 14
Circle -16777216 false true 156 56 14
Circle -16777216 false true 110 37 72
Polygon -16777216 true true 127 84 131 91 139 95 147 96 155 96 163 90 165 83 162 84 160 88 156 93 143 92 136 89 132 84 129 80 127 80 129 85
Circle -16777216 true true 135 130 6
Circle -16777216 true true 151 129 6
Polygon -16777216 true true 133 144 136 152 143 153 156 152 159 144 155 143 152 151 140 151 136 144 133 144
Circle -16777216 true true 125 59 12
Circle -16777216 true true 156 56 14
Circle -1 true false 125 60 6
Circle -1 true false 157 57 8
Circle -16777216 true true 90 97 6
Circle -16777216 true true 185 150 8
Line -16777216 true 129 106 116 117
Line -16777216 true 117 117 93 101

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

whose
true
15
Line -1 true 39 140 52 178
Line -1 true 52 178 59 141
Line -1 true 59 138 72 178
Line -1 true 73 178 79 133
Line -1 true 86 104 88 179
Line -1 true 87 146 102 142
Line -1 true 101 141 102 178
Line -1 true 113 142 114 178
Line -1 true 114 143 130 142
Line -1 true 132 141 133 181
Line -1 true 114 178 132 183
Line -1 true 163 138 142 145
Line -1 true 143 144 162 169
Line -1 true 161 168 141 183
Line -1 true 176 154 195 148
Line -1 true 196 148 175 139
Line -1 true 176 141 174 179
Line -1 true 173 181 194 171

with
true
15
Line -1 true 50 138 61 188
Line -1 true 61 190 67 145
Line -1 true 68 146 81 191
Line -1 true 81 190 87 139
Line -1 true 96 143 97 187
Line -1 true 98 132 96 136
Line -1 true 110 116 112 186
Line -1 true 102 143 127 141
Line -1 true 134 121 134 186
Line -1 true 135 151 156 144
Line -1 true 155 144 155 188

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

you
true
15
Line -1 true 67 114 83 144
Line -1 true 96 118 69 184
Circle -1 false true 106 116 32
Line -1 true 152 120 155 146
Line -1 true 155 146 169 150
Line -1 true 170 150 179 141
Line -1 true 176 118 179 142

youwill
true
15
Line -1 true 41 123 52 148
Line -1 true 64 124 43 180
Circle -1 false true 67 125 23
Line -1 true 95 129 97 150
Line -1 true 97 148 111 153
Line -1 true 112 152 116 147
Line -1 true 116 148 114 125
Line -1 true 142 129 144 150
Line -1 true 147 150 156 130
Line -1 true 157 131 166 151
Line -1 true 171 131 168 151
Line -1 true 179 132 182 152
Line -1 true 176 118 178 120
Line -1 true 188 114 192 161
Line -1 true 205 114 206 163

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
