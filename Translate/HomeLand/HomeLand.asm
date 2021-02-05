// GameCube "HomeLand" Japanese To English Translation by krom (Peter Lemon):

endian msb // GameCube PPC requires Big-Endian Encoding (Most Significant Bit)
output "HomeLand.iso", create
origin $000000; insert "HomeLand [J].iso" // Include Japanese HomeLand ISO

macro Text(OFFSET, TEXT) {
  map 0, 0, 256 // Map Default ASCII Chars

  origin {OFFSET}
  db {TEXT} // ASCII Text To Print
}

macro TextShiftJIS(OFFSET, TEXT) {
  // Map Shift-JIS Words
  map ' ',  $8140
  map $2C,  $8143 // Comma ","
  map '.',  $8144
  map ':',  $8146
  map '?',  $8148
  map '!',  $8149
  map '~',  $8160
  map '\s', $8166 // Single Quote "'"
  map '\d', $8168 // Double Quote '"'
  map '+',  $817B
  map '&',  $8195
  map '0',  $824F, 10 // Map Numbers
  map 'A',  $8260, 26 // Map English "Upper Case" Characters
  map 'a',  $8281, 26 // Map English "Lower Case" Characters

  origin {OFFSET}
  dw {TEXT} // Shift-JIS Text To Print
}

// Font Colors
constant BLACK($B0) // Default
constant BLUE($B8)
constant RED($BB)

// Memory Card
Text($00115982, " ON") ; fill 7
Text($0011598C, "  OFF") ; db $81, $E8 ; fill 5
Text($00115998, "It has been set") ; fill 5
Text($001159AE, " Memorize") ; fill 5
Text($001159BE, "  Reset") ; db $81, $E8 ; fill 7

Text($00115B3C, "Please Wait") ; fill 13

Text($00115CFC, "There is a problem with the memory card in SlotA.\n")
Text($00115D2E, "It might get fixed by initializing it,     \n")
Text($00115D5A, "but all the data will be lost.  \n")
Text($00115D7B, "Do you want to initialize?") ; fill 3

Text($00115DE8, "Initializing memory card. Is this OK?") ; fill 7

Text($00115E6C, "It is now initialized.") ; fill 2

Text($00115EC0, "It will not be able to save your progress in the game.") ; fill 6

Text($00116084, "The memory card in Slot A is used to record the adventure.\n")
Text($001160BF, "Please do not turn off the power or remove the card.") ; fill 5

Text($00116180, "The adventure was recorded.") ; fill 1

// Menus
Text($00116C08, "Record") ; fill 6
Text($00116C14, "Break") ; fill 7

Text($00116C48, "Options") ; fill 5

Text($00199B58, "Yes") ; fill 5
Text($00199B60, "No") ; fill 6

// NPC Names
Text($23E1CC00, "Tenshi") ; fill 1

Text($23E20CF8, "Mother") ; fill 5


// Story
Text($23E1CFAF, "So you want to go.") ; db $81, $A5 ; fill 12

Text($23E20D79, "If the homework is not done\n")
             db "Mom will get angry!" ; fill 8

Text($23E20DB0, "If you do not finish the homework\n")
             db "Mom will get angry." ; fill 1

Text($23E20DE6, "You must clean up your closet!") ; fill 2

Text($23E20E1B, "If you show this room\n")
             db "Mom will get angry!" ; fill 7

Text($23E20E4B, "Closet containing various things is closed.\n")
             db "I cleaned up because it becomes quite messy\n"
             db "once it is opened." ; fill 1

Text($23E20EC3, "\dHero of Justice Quest\d") ; fill 9

Text($23E20EE3, "Horrible monster whale against Roberto!\n")
             db "Monster \dGyao!!\d" ; fill 16

Text($23E20F2B, "Danger Roberto!\n")
             db "Then the shuriken beam explodes!" ; fill 11

Text($23E20F66, "Monster \dGyaaao...!\d\n")
             db "Unbearable I cannot run away from it." ; fill 2

Text($23E20FA2, "A mystery man runs over to Roberto.\n")
             db "*** \dAre you not hurt?\d" ; fill 10

Text($23E20FE7, "Roberto increases his honor.\n")
             db "Roberto \dOh! By chance you are the\n"
             db "Hero of Justice...\d" ; fill 6

Text($23E21040, "Continue..") ; fill 1

Text($23E2104B, "Appendix is marked in this comic.\n")
             db "Done a while ago." ; fill 1

Text($23E2107F, "Appendix attached to comic.\n")
             db "Want to try it?" ; fill 4

Text($23E210AE, RED) ; db "\dQuest Diagnostic Test.\d", BLACK, "\n"
             db "A key can be found in the quest!" ; fill 1

Text($23E210EA, "Question 1:\n")
             db "An incident happens! What do you do?" ; fill 1
Text($23E2111B, "Resolve with force!") ; fill 1
Text($23E2112F, "Resolve with brain!") ; fill 1

Text($23E21143, "Question 2:\n")
             db "Cute clothes or cool clothes.\n"
             db "Which would you choose?" ; fill 6
Text($23E2118A, "Cute clothes") ; fill 1
Text($23E21197, "Cool clothes") ; fill 3

Text($23E211A6, "Question 3:\n")
             db "A Horrible monster needs to be hit!\n"
             db "What do you do?" ; fill 3
Text($23E211E8, "Everyone to face it") ; fill 1
Text($23E211FC, "Face it alone") ; fill 7

Text($23E21210, "Done") ; fill 3

Text($23E21217, "My Pupil.") ; fill 2
Text($23E21222, "Your diagnosis results are...") ; fill 1

Text($23E21240, "Powerful Galant Type!") ; fill 10
Text($23E2125F, "Endurance Defence Type!") ; fill 10

Text($23E21280, "If I do not clean up the closet quickly\n")
             db "mom will get angry!" ; fill 4

Text($23E212BF, "\dExchange Diary\d") ; fill 3

Text($23E212D4, " Month/Day\n") ; fill 1
Text($23E212E0, "! This week's\n")
             db "\dHero of Justice Quest\d seen?\n"
             db "Roberto it was dangerous." ; fill 16

Text($23E21335, "Huh, some quest with a mysterious man\n")
             db "that I just read?\n"
             db "I'll quickly continue, to find out more." ; fill 3

Text($23E21398, "Ah. Is there anything extra to read here?\n")
             db RED, "\dQuest Diagnostic Test\d", BLACK, " some guy.\n" ; fill 9
             db " will find out tomorrow at\n"
             db "school!" ; fill 6

Text($23E21417, "Do your homework?") ; fill 6
Text($23E2142E, "Question 1: \n")
Text($23E2145D, "Question 2: \n")
Text($23E21487, "Question 3: \n")

Text($23E214B2, "           \dBreak Time\d\n")
             db "Here, let's take a breather break!" ; fill 10

Text($23E214F6, "Homework.\n")
             db "It is halfway through.\n"
             db "Take a little break." ; fill 12

Text($23E21537, "Homework.\n")
             db "Only half has been completed..." ; fill 2

Text($23E21779, "Is the homework finished?") ; db $81, $A5 ; fill 3 ; db "\n"

Text($23E21798, "When you finish\n")
             db "you can play with the stuff\n"
             db "in your ", RED, "closet", BLACK, "!", $81, $A5 ; fill 1 ; db "\n"

Text($23E217D9, "If you do not clean up\n")
             db "I won't give you a snack!", $81, $A5 ; fill 1 ; db "\n"

Text($23E2183C, "Look over") ; fill 2

Text($23E21847, "Poof") ; fill 2

Text($23E21A08, "\dOne day, not the same as usual...\d") ; fill 3

Text($23E21A41, "Have you done\n")
             db "your homework?", $81, $A5 ; fill 7

Text($23E21A66, "Really?\n")
             db "Once you lied\n"
             db "about doing it!", $81, $A5 ; fill 2

Text($23E21A8F, "Really now!\n")
             db "If you do not finish it\n"
             db "I will not give you a snack!", $81, $A5 ; fill 1

Text($23E21AD2, "Hello ") ; fill 4 ; db ".", $81, $A5 ; fill 2 ; db "\n"

Text($23E21AE2, "I am Tenshi.") ; db $81, $A5 ; fill 4 ; db "\n"

Text($23E21AF5, "From the world in the sky\n")
             db "the Big God has been\n"
             db "watching over you.", $81, $A5 ; fill 11 ; db "\n"

Text($23E21B44, "Do not be afraid\n")
             db "there's no problem.\n"
             db "There's nothing suspicious.", $81, $A5 ; fill 1 ; db "\n"

Text($23E21B88, "Today ") ; fill 4 ; db "\n"
             db "I came to convey to you\n"
             db "a message from Big God.", $81, $A5 ; fill 2 ; db "\n"

Text($23E21BC7, "In a book.") ; db $FE, $05, "Is that OK?\n"
             db "I will tell.", $81, $A5 ; fill 2

Text($23E21BEF, BLUE) ; db "Good " ; fill 3 ; db "\n"

Text($23E21BF9, BLUE) ; db "I am going to see\n"
             db "plenty of talent\n"
             db "from thee.", $81, $A5 ; fill 4 ; db "\n"

Text($23E21C2E, BLUE) ; db "Written test results\n"
             db "were splendid\n"
             db "you have passed!", $81, $A5 ; fill 1 ; db "\n"

Text($23E21C66, BLUE) ; db "You are the person we seek\n"
             db "and have all the makings\n"
             db "required.", $81, $A5 ; fill 1 ; db "\n"

Text($23E21CA8, BLUE) ; db "I am anticipating the quality\n"
             db "of how you will handle\n"
             db "these ", RED, "Quests", BLUE, "!", $81, $A5 ; fill 5

Text($23E21CF4, "Wow clap clap clap!") ; db $81, $A5 ; fill 1 ; db "\n"

Text($23E21D0B, "Amazing! ") ; fill 3 ; db ".\n"
             db "it came from the note in\n"
             db "the ", RED, "Quest", BLACK, ".", $81, $A5 ; fill 1

Text($23E21D41, "Huh?") ; db $FE, $0A, " A ", RED, "Quest", BLACK, "\n"
             db "What have I missed?", $81, $A5 ; fill 1 ; db "\n"

Text($23E21D69, "Well put simply\n")
             db "you have been called to\n"
             db "protect the world.", $81, $A5 ; fill 1 ; db "\n"

Text($23E21DA7, "You will travel the world\n")
             db "and help people\n"
             db "who are in trouble.", $81, $A5 ; fill 3

Text($23E21DE9, "Message over!") ; db $81, $A5 ; fill 2

Text($23E21DFA, "Well right away\n")
             db "the basic Quest set\n"
             db "and presentation!", $81, $A5 ; fill 3

Text($23E21E34, "Okay.") ; db $81, $A4 ; fill 2

Text($23E21E3D, "In reply some of the\n")
             db "set has appeared\n"
             db "2 are now available.", $81, $A5 ; fill 6 ; db "\n"

Text($23E21E80, "Travel to the ") ; db RED, "Quest", BLACK, "\n"
             db "by changing the appearance.", $81, $A5 ; fill 1

Text($23E21EB4, "Quick") ; fill 2 ; db $FE, $05

Text($23E21EBD, " immediately transform\n")
             db "and go out to adventure\n"
             db "please be prepared.", $81, $A5 ; fill 2

Text($23E21F03, "It is useless\n")
             db "to not reply!", $81, $A5 ; fill 3 ; db "\n"

Text($23E21F24, "This") ; db $FE, $05, " ", RED, "Quest", BLACK, " is\n"
             db "quite basic.", $81, $A5 ; fill 4

Text($23E21F48, "Oh-!\n")
             db "Well you look great.", $81, $A5 ; fill 6 ; db $81, $A1, "\n"

Text($23E21F6C, "So immediately\n")
             db "we should go into the World.", $81, $A4, "\n" ; fill 5

Text($23E21F9F, "Are you ready to go?") ; db $81, $A5 ; fill 4 ; db "\n"

Text($23E21FBA, "Please follow me\n")
             db "right this way!", $81, $A5 ; fill 4

Text($23E21FE0, "When you are ready\n")
             db "please come over here\n"
             db "& ask again.", $81, $A5 ; fill 2

// Star Park
Text($3C08A832, "Here is the Star Park.") ; db $81, $A5 ; fill 4 ; db "\n"

Text($3C08BE74, "Tenshi") ; fill 1

Text($3C08C02C, "OK we have arrived.") ; db $81, $A4, "\n" ; fill 1 ; db "\n"

Text($3C08C044, "It is a special place\n")
             db "to travel the world\n"
             db "for the Quests.", $81, $A5 ; fill 4 ; db "\n"

Text($3C08C084, "Angels come here\n")
             db "to give necessary knowledge\n"
             db "about the Quests.", $81, $A5 ; fill 16 ; db "\n"

Text($3C08C0D5, "Please listen well\n")
             db "to what they have to say.", $81, $A5 ; fill 3 ; db "\n"

Text($3C08C107, "When you are ready\n")
             db "to journey on your Quest\n"
             db "please come and talk to me.", $81, $A5 ; fill 11 ; db "\n"

Text($3C08C15C, "I will be waiting\n")
             db "over there.", $81, $A5 ; fill 4

Text($3C08C17F, "..........") ; db $FE, $14, "\n"
             db "Mr. " ; fill 1 ; db "........", $FE, $1E, "\n"
             db "Take care.", $FE, $32, $81, $A1 ; fill 1

// Game Menus
Text($41C05442, "Yes") ; fill 2
Text($41C05447, "No") ; fill 5

Text($43ADDF6C, "Block") ; fill 7

Text($43ADDF90, "Pinnock") ; fill 5

Text($43ADDFD0, "Ganto") ; fill 3

Text($43B242B4, RED) ; db "B Button", BLACK, ": Quit & Return" ; fill 11

Text($43B3D704, "Exchange Item") ; fill 3

Text($43B43370, "Call Somone") ; fill 4

Text($43B434B8, "Guts") ; fill 4

Text($43B43F18, "Loud voice reaches around the world") ; fill 1

Text($43B44194, "Increase force") ; fill 2

Text($43B4AC37, "Pow") ; fill 6

TextShiftJIS($43B54790, "Joining") ; fill 2

Text($43B55730, "    Sort Items") ; fill 2

TextShiftJIS($43B55B90, "Thinking") ; db $81, $63 ; fill 2

TextShiftJIS($43B55BEC, "ForceUp+") ; db $25, $44 ; fill 2

TextShiftJIS($43B55EF0, "ForceNormal") ; fill 2

Text($43B560D8, "Status") ; fill 2
Text($43B560E0, "Points") ; fill 6
Text($43B560EC, "Items") ; fill 7
Text($43B560F8, "Skill") ; fill 3
Text($43B56100, "Ask") ; fill 9

Text($43B56114, "Examine") ; fill 5

Text($43B56128, "Talk") ; fill 4
Text($43B56130, "Team Up") ; fill 5

Text($43B5620C, "I do not have any items") ; fill 5

Text($43B56228, "Use") ; fill 5

Text($43B56240, "Drop") ; fill 4
Text($43B56248, "Give") ; fill 8

Text($43B56390, "Join Team") ; fill 3
Text($43B5639C, "Leave Team") ; fill 2

Text($43B56428, "Normal") ; fill 6

Text($43B564CC, "Top Zoom") ; fill 8
Text($43B564DC, "Skill Pointer") ; fill 3
Text($43B564EC, "BGM Volume") ; fill 10
Text($43B56500, " SE Volume") ; fill 6

Text($43B56570, "[Block Mascot]\n")
             db " The Block is part of a tribe of toys who live in a town.\n"
             db " Weak in power, exert your personality to grow stronger." ; fill 11

Text($43B56784, "[Pinnock Mascot]\n")
             db " A tribe of friendly dolls living in a village.\n"
             db " Can injure monsters, also has cure as an ability." ; fill 17

Text($43B56A80, "[Ganto Mascot]\n")
             db " A tribe of large builders, protecting the fort of Parumara.\n"
             db " It has outstanding offensive & destructive power." ; fill 10

Text($43B56D18, "There is no Mascot here yet.") ; fill 8

Text($43B58B90, "Clear Points") ; fill 4
Text($43B58BA0, "points") ; fill 2
Text($43B58BA8, "   Force:") ; fill 3
Text($43B58BB4, " Agility:") ; fill 3
Text($43B58BC0, "    Mind:") ; fill 3
Text($43B58BCC, "  Attack:") ; fill 3
Text($43B58BD8, " Defense:") ; fill 3
Text($43B58BE4, "  Life:") ; fill 1
Text($43B58BEC, " Power:") ; fill 1
Text($43B58BF4, "/ ") ; fill 2
Text($43B58BF8, "Until Next Level:") ; fill 3
Text($43B58C0C, "Current Completion:") ; fill 1

Text($43B58C3C, " Level") ; fill 2
Text($43B58C44, "     Exp:") ; fill 3

// Banner Text
Text($49A0D7F8, "HomeLand") ; fill 24 // Title Text (32 Bytes)
Text($49A0D838, "HomeLand") ; fill 56 // Long Title Text (64 Bytes)
Text($49A0D8B8, "Adventures in a magical world, let's solve the mystery & incident.") ; fill 62 // Description Text (128 Bytes)

// Start Game
Text($57051B14, "Which will you start with, a girl or a boy?") ; fill 5
Text($57051B44, "Please name your character.") ; fill 1
Text($57051B60, "You cannot use the same name which exists on this memory card.") ; fill 2
Text($57051BA0, "Adventure will start with this name.") ; fill 4
Text($57051BC8, "New adventure data has been stored on this memory card.") ; fill 7

Text($57051D18, "%03dhours %02dmins") ; fill 6

Text($57051F54, "Check memory card SlotA") ; fill 1
Text($57051F6C, "Edit this memory card") ; fill 11
Text($57051F8C, "Start without saving data") ; fill 23
Text($57051FBC, "Is it OK to erase this data?") ; fill 8
Text($57051FE0, "Are you sure about erasing this data?") ; fill 11

Text($570520E8, "Is it OK to erase this data?") ; fill 8
Text($5705210C, "Are you sure about erasing this data?") ; fill 11

Text($57052168, "Failed to load this memory card") ; fill 9

Text($570523A8, "    Play Time:") ; fill 6

// Start Screen
Text($57052600, "Weapons") ; fill 1
Text($57052608, "Shields") ; fill 1
Text($57052610, "Items") ; fill 3
Text($57052618, "You have  %D EXP") ; fill 4
Text($5705262C, "Begin A New Game") ; fill 4
Text($57052640, "Network") ; fill 9
Text($57052650, "Network Setup") ; fill 3
Text($57052660, "Connection Test") ; fill 1
Text($57052670, "Production Staff") ; fill 4

Text($57052684, "Go To The Network Settings.       \n")
Text($570526A7, "Is This OK?") ; fill 14
