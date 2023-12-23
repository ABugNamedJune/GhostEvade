### BUILD DYNAMIC PLAYFIELD ###
#numbers every third cell n plus 1 until reaching an arbitrary end point

   #POINTER AT MAP MEMORY START

#Set ending flag
>>

>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>> 25

>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>> 50

>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>> 75

>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>>
>>> >>> >>> >>> >>  100

- The Flag!

<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<< 75

<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<< 50

<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<< 25

<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<<
<<< <<< <<< <<< <<  0

<<->>>

#Set initial values
+>>+<

#Loop while seeking ending flag
+[->

#add n plus 1
[->+>>+<<<]
>+>>+

#check if flag is reached
<+]-

#clear flag and clear duplicate value set new end flag
+>[->>+<<]>-


### BUILD WALLS INTO MEMORY###
#This is looking so much more fresh than the original version
#Starts map memory END
#Ends map memory START
  <  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +
     #       #       #       #       #       #       #       #       #       #
<<<  +  <<<     <<<     <<<  +  <<<     <<<     <<<     <<<     <<<     <<<  +
     #                       #                                               #
<<<  +  <<<     <<<     <<<  +  <<<     <<<     <<<     <<<     <<<     <<<  +
     #                       #                                               #
<<<  +  <<<     <<<     <<<  +  <<<     <<<     <<<     <<<     <<<     <<<  +
     #                       #                                               #
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
     #                                                                       #
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
     #                                                                       #
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
     #                                                                       #
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
     #                                                                       #
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
     #                                                                       #
<<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +
     #       #       #       #       #       #       #       #       #       #
+[-<+]-

### DECODE MEMORY AND DRAW TO SCREEN ###
>>
001 1 Wall
010 2 Ghost
100 4 Player

#Decode Walls
#Starts Map Memory START
#subtracts 001 from all of objects
>+[->>->+]-


   #POINTER IS AT MAP MEMORY END


#For objects in array add 3 to graphics byte if encoding byte is 1

<<<

+[-

>>

+]-

