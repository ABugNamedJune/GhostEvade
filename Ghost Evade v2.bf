#Scooch everything forward for ease of use later in the program
>>>>

### BUILD PLAYFIELD MEMORY ###
Each tile in the playfield consists of three bytes
(0)  ABSOLUTE VALUE
(1)  VALUE CONTAINED

#Set a pointer at memory cell 0 so we can find our way home later
#Set the size of the playfield (in this case 100)
++++++++++[->++++++++++<]-
>-
#Set n minus 1 in each playfield tile reservation for the absolute value
[[->+>+<<]>>-]

#Set ending pointer for Map memory
>>>->-<


### POPULATE MAP WITH OBJECTS ###
Each object is encoded into the Tile OBJECTS memory as a binary value
100 WALLS
010 GHOST
 PLAYER

#Build the objects into the map
 <  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<     <<     <<     <<     <<     <<     <<     <<     <<  +
<<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +  <<  +

#Go to map memory start pointer
+[-<+]-

#Set game loop flag
<<<<+>>>>

### DECODE OBJECTS AND RENDER MAP ###
This scrolls through the map and translates the object layer into graphics
THIS MUST START AT THE MAP MEMORY START POINTER!

#Print the title
<<<
++[->+++++++[->+++++<]<]>>+.+.+++++++.++++.+.<<++++[->++++++++<]>.<+++++[->++++++++<]>---.>++.<----.+++.+.<++++++[->------<]>.[-]>[-]++++++++++.[-]

#Set the counter flag
<++++++++++[->++++++++++<]>-

#Set a second flag this is somewhat redundant but makes my life easier this must be cleared at the end of this operation
>>-<<

#while counter flag is greater than zero execute code
[-

#seek towards the end of the map and decrement every cell
>>>>+[-<->>>+]-
<

#seek towards the active cell whose index is now set to 255
<+[-<+]-

#copy the value of the active cell into the binary decoderizer
>[-+[->+]-
>>+>+
<<<<
+[-<+]-
>]

#reset the value of the active memory cell back into the memory
+[->+]-
>>>[-<<<<+[-<+]-
>+
+[->+]-
>>>]

### DECODE THE BINARY ###
#decode the first binary bit and slide the remainder back into the input
#Decrement the value of the input byte
<[-
#Move to the first binary bit and increment it
>> +
#Check the value of the first bit and if it is two then we set the carry flag clear the value of the first bit and then set it to one
#Regardless of the true value of this cell it will always end on a value of one
-[+<+>[-]] +
#Evaluate the carry flag and if it is set we reset the flag clear the first bit and increment the second bit
<[->->+<<]
#After it is all said and done the first bit is correctly set and we have a remainder in the second bit that we have to evaluate in the exact same way
#This is essentially a modulo operation and maybe it can be more efficient but I think this is pretty dang good
<]

#slide the remainder
>>>[-<<<+>>>]<<<


#decode the second bit
[-
>>> +
-[+<<+>>[-]] +
<<[->>->+<<<]
<]

#I think this is pretty straight forward but catch me tomorrow when I am looking over this flabbergasted

#The input byte now becomes the temporary video memory register so lets crunch numbers to get the display graphix set for the active tile
#Add a value of 32 to the temporary video register because thats our baseline regardless of graphix
>++++[-<++++++++>]

#check the player flag
>>>[-<<[->++<]>>]<<<[-<+>]

#check the ghost flag
>>[-<<<+>>>]<<

#check the wall flag
>[-<<+++>>]<

#print temporary video and clear memory
<.[-]

#return to counter flag
<<<+[-<<+]-
<<<+>]

#Reset map indexes
<[->>>>
+[-+>>+]-
+
+[-+>>+]-
#seek back to the counter
<+[-<<+]-
<<<]






#Return to game loop flag
<<]
