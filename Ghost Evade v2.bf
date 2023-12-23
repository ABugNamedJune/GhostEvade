### GHOST EVADE V2 ###
Written by June Bush
June@JuneBush(dot)com
This is free software please credit me tho thx


#Scooch everything forward for ease of use later in the program
>>>

### BUILD PLAYFIELD MEMORY ###
Each tile in the playfield consists of three bytes
(0)  ABSOLUTE VALUE
(1)  GRAPHICS MEMORY
(2)  OBJECTS CONTAINED

#Set a pointer at memory cell 0 so we can find our way home later
#Set the size of the playfield (in this case 100)
->++++++++++[->++++++++++<]
>
#Set n minus 1 in each playfield tile reservation for the absolute value
[[->+>>+<<<]>>>-]

#Set ending pointer for Map memory
>-


### POPULATE MAP WITH OBJECTS ###
Each object is encoded into the Tile OBJECTS memory as a binary value
001 WALLS
010 GHOST
100 PLAYER

#Build the objects into the map
  <  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<     <<<  +
<<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +  <<<  +

#Go to map memory start pointer
+[-<+]-


### DECODE OBJECTS AND RENDER MAP ###
This scrolls through the map and translates the object layer into graphics
THIS MUST START AT THE MAP MEMORY START POINTER!

#Print the title
<<<
++[->+++++++[->+++++<]<]>>+.+.+++++++.++++.+.<<++++[->++++++++<]>.<+++++[->++++++++<]>---.>++.<----.+++.+.
