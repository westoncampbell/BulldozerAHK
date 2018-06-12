; Script Information ===========================================================
; Name:			Bulldozer
; Description:	Clone of [Bulldozer] from [24 Games for Windows 95] by [Expert
; 				Software, Inc.] https://archive.org/details/24GamesForWindows95
; AHK Version:	1.1.29.01 (Unicode 32-bit) - June 2, 2018
; OS Version:	Windows XP+
; Language:		English (United States)
; Author:		Weston Campbell <westoncampbell@gmail.com>
; Filename:		Bulldozer.ahk
; Website:		https://autohotkey.com/boards/viewtopic.php?f=6&t=50139
; ==============================================================================

; Revision History =============================================================
; Revision 2 (2018-06-06)
; * Fixed font map displaying incorrect character for numbers 8 and 9
;
; Revision 1 (2018-06-05)
; * Initial release
; ==============================================================================

; Auto-Execute =================================================================
#SingleInstance, Force ; Allow only one running instance of script
#Persistent ; Keep the script permanently running until terminated
#NoEnv ; Avoid checking empty variables for environment variables
;#Warn ; Enable warnings to assist with detecting common errors
#NoTrayIcon ; Disable the tray icon of the script
SetWorkingDir, % A_ScriptDir ; Set the working directory of the script
SetBatchLines, -1 ; The speed at which the lines of the script are executed
SendMode, Input ; The method for sending keystrokes and mouse clicks
;DetectHiddenWindows, On ; The visibility of hidden windows by the script
SetWinDelay, -1 ; The delay to occur after modifying a window
SetControlDelay, -1 ; The delay to occur after modifying a control
OnExit("OnUnload") ; Run a subroutine or function when exiting the script

return ; End automatic execution
; ==============================================================================

; Functions ====================================================================
OnLoad() {
	Global ; Assume-global mode
	Static Init := OnLoad() ; Call function

	; Define icon data
	Icon16 := "iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAG1BMVEVHcEzAwMAAAAD//wCAgID/AACAgACAAAD///9wWJvwAAAAAXRSTlMAQObYZgAAAGVJREFUGNNljwsOgDAIQ8tn4v1PbAGZGpuQsJd2ANQ+UmhKvItCSbwrVfQoda8i6p337AtIA2ngno6IdLAvByzWCsOOwBY1IG0Dngjf5yviBOeasbRxLBMcO5HfYqjdcf+xL+y7LlCgAnWkaWTEAAAAAElFTkSuQmCC"
	Icon32 := "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAG1BMVEVHcEzAwMAAAAD//wD/AACAgACAgICAAAD///+ovIncAAAAAXRSTlMAQObYZgAAAMNJREFUOMuVU0sWxCAI0xRt73/iEYuIivVNNlaS8pUQAj4QGLi2eAUBaQPhW5CcY856aIAOFAZ6hPFvYBaoHbGifAwhjF2VY3qLByD18lK5zh5ytg1odRgPMVpBNYiHo0CwCOYQbw53geQwhwCErwpbhX5UnohY4TaKBcR4BWurG88Ka3cE9J+g59D4h3Y5CP+4IdBCFJ68PnAn78oXB0MnzSzUgTeLOiyp4WPcwnvjPr6o45scNtDdC7vmfFk9TIso+AEfTwmTX7x+2gAAAABJRU5ErkJggg=="

	; Define fontmap data
	Fontmap :="iVBORw0KGgoAAAANSUhEUgAAAlAAAAAQAgMAAACkS6mTAAAACVBMVEVHcEz///8lP/+tlCKYAAAAAXRSTlMAQObYZgAAAWdJREFUeAHNlMlx7jAMg/n2F/fHi6rThRdWGX4DBRN3oNgIN4CGZ+Q/Ildk5v4zSOULUE93xdwR5NPfEfQGmlvnSLbeCLrsCThfUXluP+tEcKcpZNm1DibvBtQvU5Vb78D15/Df4LaZKpirDpc9SUxF5annqTbuNJW7tGQ/rRghqLapXOpPkinNG8+GS84UU5XTHTSv83Qwi1rRQ+zJUWXoWfw/u241RZI04uQrZCDp25Q5VfSXdSdWpk2xGs4zckxoh/b7wKPlSoFpac+lphBzuGyqO0Bufwn+QbCpymVuSf8cLv3n7D2fN4tfptBF6+WaeLTec6epfh1aPRiotinVIX7ncr2st6lIbl1Be3lG9P7u7LdW+Z2mvh9Un7ERUR/y5OYdA/rcxVv0qLe4E2sHHEAPnWenrvfhthbcaar30/MXz6B7D5qgembB3eY1EWgezPapKUJxhzLpkXmmWnxtdd/5jaY+AaS2KOR3mBK5AAAAAElFTkSuQmCC"

	; Define tilemap data
	Tilemap := [] ; Create array
	Tilemap[1] := "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"
	Tilemap[2] := "iVBORw0KGgoAAAANSUhEUgAAAeAAAAAgAgMAAAC3JUMGAAAACVBMVEVHcEz///8AAADmzmMiAAAAAXRSTlMAQObYZgAABJ1JREFUeAF9lwmKvEwPxotm7b6HDV/fJ0Fl+97FgqlTzCUiU7L9N6Urp3yT0odp1JmAPJYJPPxqN9AWusWx/X2EEG76DAG6j5vW+PFQb71UxC2EavT2Ooyv7V0gDw3hshCHAEWoh/lcqcb/G76ovksbHmsmdDlnfzajZO8yv7SRx4M8NIT/kdCPAEXkkZm7j5vZebw/9Gr2+vxxH0RkjAEYG4XaQ8WJcw2Nu0AeGoIQxTZAd8b3EK5t8/8QGp6Jemk/YAwSGNk7O+YYaxyIkYeGhxCPHKBfGT+ULPT58TXx0E3j18TIQ4MYCXEwTcXVPJ4vxg91Y302TP1M3xJLjLMRD2RhxOL6lrtJLXJGHnoRL5QfF0mq8/ijzuMfn8YNNyyttGacCozPiSnnYsTVsGgcXJcYk1pwRB565c6N2ytZQZHWgH0yY1YbcUPU6vOhpL13NWY1bQFiIjYTokrMSyKPOjFUtRAhD23Iw4hIhdWNXUO40P9Dw+GOSdWwGTtxsJorvYe8BYhrx085i7gWzav6N0yvqcO7aUMsZswNF6IkHC6u72acdOYfd0yqhhcdJzO+Sa/FjGPk6A+I4+D+SxxXTWjHZM/A9sTE1sZ3qT3Do6SZpV/GcHP9YVAe/dKwqxPfdfmQdprJ4/9HYvFWcWKiM2LJSpZHnVCNKL2kwnMMN9cfoaFU/DuMH3pX/dBnJvJMeyT2ZkxGPBAvR2LLK1kedS/GqtXY1I1Z1XLxs6vdWFoz9kx7IHYox3Pi/oy4m4rYIKMuUw3OiVWlcHi4PkPT6zibMdbvi7FnjsQO6IhGzOmEeLAXkwV1shlL4pKqsasZJ5VSx3hOpYdxHWPPHIllbRYj7qYTYslqlJZH3bB1dernfi4xPFyrsb7R/30D0b71MW5UW1vHV/JMe1jHKdYoICbypq9FJyZKkRy8oM7HjEg4r8b8alzM+KFu7GPsxtKuxqU97Fx99pgWEMfBib2rswXH3rrAxnhBnRB1Zh3XrnZiVxh7V991tC5Gl0/zanzYq3043cWIkxpxJyuYefm5kG10mSyPOp9B9EY8KquuxphcaqmI9YtJlok8cyTuyupvxKonxJYnsjzqMLm25cT75YRJhWWF5XQkTpXQiKOeEqdIbG3UzZvxvG4gvN9AsHFgI8EGciSeciXEXr0ntrwPcURdM7C4cVO3zJn3WyaIYYwt80gcVxPs1QdiG2TPo241oPa6HhLt/pDww0Gnz67GIXEkzqXai6iFE7suEUch8tBrJXlrr/VYfDs5FknVSHE84lg8OY+TARKNsRomYtfZF00N5KGXgUiM+EL1vD65CLixPnEhwEXg5Dye6kYl00qcV93uu11GHhoKjjlfJaa7qw+uPLgC4epzPJ0iL2lhdH1CHg/y0HCvK+o9PNzAdHfZw/rFpQ/GJ8S56Mtky7tAHhquxPWWeZ0WVwSMMalwzf2OOGn8mhh5aLi4cRuge2NMKhgfiCddw1/La3sXyENDEOr4R4DujG/4dcGvzI89sW7h78uuvX88D/V/JraOhO5/2vCzhp+3sJ/VMDq2vw/rY3U/6D7we4rfVXz/D5pafiObzuwJAAAAAElFTkSuQmCC"

	; Define map data
	Map := [] ; Create array
	Map[1] := "#####################!#!#!!!!!!!!!!#!#!##!#!#!!!@@@!!!!#!#!##!#!#!!!@*@!!!!#!#!##!#!#!!!@.@@@@!#!#!##!#!#!@@@$.$*@!#!#!##!#!#!@*.$V@@@!#!#!##!#!#!@@@@$@!!!#!#!##!#!#!!!!@*@!!!#!#!##!#!#!!!!@@@!!!#!#!##!#!#!!!!!!!!!!#!#!#####################"
	Map[2] := "!!!!!!!!!!!!!!!!!!!!!*@................!!*@..............@.!!.@...........$..@.!!.@..$.............!!.@......V.......@.!!.@..............@.!!.@...........$..@.!!.@..$...........@.!!................@*!!................@*!!!!!!!!!!!!!!!!!!!!!"
	Map[3] := "!!!!!!!!!!!!!!!!!!!!!&................&!!!.........@......!!!&...@@@@@@@......&!!!...O.....@.$....!!!&...@..*.V@.$....&!!!...@@....@.$....!!!&....@....@......&!!!....@....@...@@.!!!&....@@@$@@...@.*&!!!..............**!!!!!!!!!!!!!!!!!!!!!!"
	Map[4] := "!!!!!!!!!!!!!!!!!!!!!!!~!!@@@@@@@@!!!!~!!~!!!!@......@!!~!!!!!!~!@@.////$@!!!!~!!~!!!@..../..@!!~!!!!!!~!@.$..$.V@!!!!~!!~!!!@.$../**@!!~!!!!!!~!@..../**@!!!!~!!~!!!@....@@@@!!~!!!!!!~!@....@!!!!!!!~!!~!!!@@@@@@!!!!!~!!!!!!!!!!!!!!!!!!!!!!!"
	Map[5] := "#!!!!!!!!!!!!!!!!!!#!#!!!!@@@@@!!!!!!!#!!!#!!!@V..@!!!!!!#!!!!!#!!@.$$@!@@@!#!!!!!!!!!@.$.@!@*@!!!!!!!!!!!@@@.@@@*@!!!!!!!!!!!!@@....*@!!!!!!!!!!!!@...@..@!!!!!!!!#!!!@...@@@@!#!!!!!#!!!!@@@@@!!!!!#!!!#!!!!!!!!!!!!!!!!#!#!!!!!!!!!!!!!!!!!!#"
	Map[6] := "#####################!!##############!!##!!###@@@@@@@####!!#######@.....@@@##########@@$@@@...@##########@V..$..$.@##########@.**@.$.@@##########@@**@...@############@@@@@@@@#######!!##############!!##!!##############!!#####################"
	Map[7] := "-#-#-!!!!!!!!!!-#-#-#-#-#!!!!!!!!!!#-#-#-#-#-!!@@@@!!!!-#-#-#-#-#!!@.V@@@!!#-#-#-#-#-!!@.$..@!!-#-#-#-#-#!@@@.@.@@!#-#-#-#-#-!@*@.@..@!-#-#-#-#-#!@*$..@.@!#-#-#-#-#-!@*...$.@!-#-#-#-#-#!@@@@@@@@!#-#-#-#-#-!!!!!!!!!!-#-#-#-#-#!!!!!!!!!!#-#-#"
	Map[8] := "!!!!!!!!!!!!!!!!!!!!!/!!!!!!!!!!!!!!/!!!!!!/!!!!!!!!!!!!!!/!!/!!!@@@@@@@@@@!/!!!!!!/@@.V.@....@@!!/!!/!!@.$.****$..@/!!!!!!/@..$@@@@.$.@!!/!!/!!@...@!!@..@@/!!!!!!/@@@@@!!@@@@!!!/!!/!!!!!!!!!!!!!!/!!!!!!/!!!!!!!!!!!!!!/!!!!!!!!!!!!!!!!!!!!!"
	Map[9] := "!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!!!!!#!!!!!!!##!!!@@@@!!!##!!!!!###!!@@..@!!!###!!!####!!@V$.@!!!####!!####!!@@$.@@!!####!!####!!@@.$.@!!####!!!###!!@*$..@!!###!!!!!##!!@**O*@!!##!!!!!!!#!!@@@@@@!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[10] := "!!!!!!!!!!!!!!!!!!!!!!=!!!!!!@@@@!!!=!!!!!!!!!!!!@..@!!!!!!!!=!=!!!!@@$.@!!=!=!!!!!!!!@@@**.@!!!!!!!=!=!=!@.$**.@!=!=!=!!!!!!!@.$@.V@!!!!!!!!=!=!!@.$...@!!=!=!!!!!!!!@...@@@!!!!!!!!!=!!!@@@@@!!!!!=!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[11] := "=!!!!!!!!!!!!!!!!!!==!!!!!@@@@@@@!!!!!!==!!@@@@.....@!!!!!!==!!@...*@@@.@!!!!!!==!!@.@.@....@@!!!!!==!!@.@.$.$@*.@!!!!!==!!@.@..O..@.@!!!!!==!!@.*@$.$.@.@!!!!!==!!@@....@.@.@@@!!!==!!!@.@@@*.V...@!!!==!!!@.....@@...@!!!==!!!@@@@@@@@@@@@!!!="
	Map[12] := "-!!!!!!!!!!!!!!!!!!-!..@@@@@@...@@@...*!!..@....@$...$..***!!.$@.V.....@@@@@***!!..@..@@@$..@..@@@/!!.$@@.@=@.$.@.$.*/!!!...@.@=@$.....*/!!!!$.$@.@=@.$.@.*/!!!!!.....@@@$...*/!!!!!!*$@........@/!!!!!!!.*@......../!!!!!!!-!!!!!!!!!!!!!!!!!!-"
	Map[13] := "!!!!!!!!!!!!!!!!!!!!!!!!@@@@@!-!-!-!-!-!!/!!@...@!!-!-!-!-!!!!!!@$..@!!!-!-!-!!!!!@@@..$@@!!!-!-!!!!!!@..$.$.@!!!!-!!!!!@@@././/.@!!!@@@@@@!@..././/.@@@@@..**@!@.$..$..........**@!@@@@@.///.@V@@..**@!!!!!@.....@@@@@@@@@!!!!!@@@@@@@!!!!!!!!!"
	Map[14] := "=!!!!!!!!!!!!!!!!!!==!@@!!!!!!!!!!!!@@!==!@@!!!!@@@@@@@!@@!==!@@!!!@@..@.V@!@@!==!@@!!!@...@..@!@@!==!@@!!!@$.$.$.@!@@!==!@@!!!@.$@@..@!@@!==!@@!@@@.$.@.@@!@@!==!@@!@*****..@!!@@!==!@@!@@@@@@@@@!!@@!==!@@!!!!!!!!!!!!@@!==!!!!!!!!!!!!!!!!!!="
	Map[15] := "!!!!!!!!!!!!!!!!!!!!!!###!!!!@@@@@@@@!!!!#!!!#!!!@.....V@!!!!#!!!#!!!@.$@$.@@!!!!!###!!!!@.$..$@!!!!!!!!!!!!!@@$.$.@!!!!!@@@@@@@@@.$.@.@@@!!!@****..@@.$..$..@!!!@@***....$..$...@!!!@****..@@@@@@@@@@!!!@@@@@@@@!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[16] := "!!!!@@@@@@!!@@@!!!!!!=!!@**..@!@@V@@!!=!!!=!@**..@@@...@!=!!!!!!@**.....$$.@!!!!!!!!@**..@./.$.@!!!!!!!!@**@@@./.$.@!!!!!!!!@@@@.$./$..@!!!!!!!!!!!@..$/.$.@!!!!!!!!!!!@.$..$..@!!!!!!=!!!!@..@@...@!=!!!=!!!!!@@@@@@@@@!!=!!!!!!!!!!!!!!!!!!!!!"
	Map[17] := "!!!!!!!!!!@@@@@!!!!!!~!!@@@@@@@...@@!~!!!!!@@.@.V@@.$$.@!!!!!~!@....$......@!~!!!!!@..$..@@@...@!!!!!~!@@@.@@@@@$@@@!~!!!!!@.$..@@@.**@!!!!!!~!@.$.$.$.***@!!~!!!!!@....@@@***@!!!!!!~!@.$$.@!@***@!!~!!!!!@..@@@!@@@@@!!!!!!!!@@@@!!!!!!!!!!!!!"
	Map[18] := "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!@@@@@@@@!!-!!!!!!#-!@....V.@!!#-!!!!#-#!@.$**..@@!-#-!!!-#-!@@@**/..@!#-#!!!#-#!!!@@$$$.@!-#-!!!!#-!!!!@....@!#-!!!!!!#!!!!@@@@@@!-!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[19] := "!!!!!@@@@@@@@@@!!!!!!!-!@@*@......@@@@-!!!!@@**@.$..$.@..@!!!!!@***@.@@.$.@..@!!!!-@*****..@$$...@-!!!!@@****$....@$.@!!!!!@@@@.@@@@@@@..@!!!!-@...$........@@-!!!!@..$.@..$@.$.@@!!!!!@.$@@@.$.@.$$.@!!!!-@...V@..@@....@-!!!!@@@@@@@@@@@@@@@!!"
	Map[20] := "!!!!!!!!!!!!!!!!!!!!!!=!!!!!!!!!!!!=!!!!!!!!=!@@@@!!!!!!!=!!!!=!!!@..@@@!!!=!!!!!!!!=!@V...@@@!!!=!!!!=!!!@./$..*@!=!!!!!!!!=!@.$.$**@!!!=!!!!=!!!@.$.*@@@!=!!!!!!!!=!@..@@@!!!!!=!!!!=!!!@@@@!!!!!=!!!!!!!!=!!!!!!!!!!!!=!!!!!!!!!!!!!!!!!!!!!!"
	Map[21] := "-!!!!!!!!!!!!!!!!!!-!@@@@@@@@@@@@@@@@@@!!@/*/*/*/*/*/*/*/*@!!@*$.$.$.$.$.$....@!!@/./././././././.@!!@*$.....$.......$@!!@/./././././././.@!!@*........$...$..@!!@/./././././././.@!!@*..........$...V@!!@@@@@@@@@@@@@@@@@@!-!!!!!!!!!!!!!!!!!!-"
	Map[22] := "!!!!@@@@@@@@@!!!!!!!!==!@.......@!!#!#!!!==!@..$...$@!!!=!!!!!!!@@@@....@!!#!#!!!!!!!!!@.$..@@!!!!!!!!!!@@@@...$.@!!!!!!!!!!@**.$.@@.@@@@!!!!!!!@**..$@@....@!!!!##!@**....$....@!!!!##!@*@@@$@@@.@V@!!!!!!!@*@!@.....@@@!!!!!!!@@@!@@@@@@@!!!!!"
	Map[23] := "!!!!!!!!!!!!!!!!!!!!!~!!!@@@@@@@!!!!!!~!!!!!!@...V.@!!!!!!!!!!~!!@.$./.@@@@!!~!!!!!!!@/.$/$***@!!!!!!~!~!@...$.***@!~!~!!!!!!@.//.$.@@@!!!!!!!~!!@....$.@!!!!~!!!!!!!@@@....@!!!!!!!!~!!!!!@@@@@@!!!!!~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[24] := "@@@@@@@@@@@@@@@@@@!!@................@@!@.$/...$.//..$....@!@....$///..../.$$.@!@*///.....$.$.//..@@@***/../../..../$..@@**//$$////.$../...@@***/......$.//..@@@@***$..///../....@.@@@**..$/..//...//V.@!@@*@..............@!!@@@@@@@@@@@@@@@@@@"
	Map[25] := "@@@@@@@@@@@!!!@@@@@@@.....@...@!!@@....@@@.$..@...@@@@..$..@@@@@.$$...@**@..@..@@..$..$..@@**@@@@.@@@.$...@@@****...$$.@@..@$@...****@.@.$.@@.@..@.$.**@@@$@...@@.@...$.@**@...@@..@@...$@..@@@@...@.$@@@.@..@....V@......@!@@@@@@@@@@@@@@@@@@@!"
	Map[26] := "@@@@@@@@@@@@@@@@@@@@@...@....@...@...@V@@.$......$...$...@.@@@.@@@**@@.@@@.....@@...@****@$@..$@@@.@@.$.@****@..$..$.$.@@...@****@.@.@.$.$.@@...@@**@@...@$@...@@@$@@....@@..@..@$@@@...$..$.....@..@..@@...@....@...@.....@@@@@@@@@@@@@@@@@@@@@"
	Map[27] := "!!!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@!!&!!!!!@**..@.....@@@!!!!!!@**..@.$..$..@!!!!!!@**..@$@@@@..@!!!!!!@**....V.@@..@!!!!!!@**..@.@..$.@@!!!!!!@@@@@@.@@$.$.@!!!!!!!!@.$..$.$.$.@!!!!&!!!@....@.....@!!!!&&!!@@@@@@@@@@@@!!!!!!!!!!!!!!!!!!!!!!!"
	Map[28] := "@@@@@@@@@@@@@@@@@@@@@..@..@@....@...V@@@@@....$....@.$@@@..@@@$@.$.@@$@.$.$....@@...$@....$......@@@@.@@...$.@@@..@****@@.@.$@.@.@.@.@****@@@....$.$.@..@****@@!@@$.@@@..$.@****@@!!@..@.$........@@@!!=@......@.@....@!!!=!@@@@@@@@@@@@@@@!!=!="
	Map[29] := "@@@@@@@@@@@@@@@@@@@@@V.....@@@...@..@..@@.@.@..@..$..$.....@@@@@@.....@.$.$@$@.@@*@**@....@@$.$....@@*****....$...@...@@@*****....@@@$@@$@@@@*@**@....$....@...@@@@@@.....@..@$..$.@&&&&@..@..$....$.$.@&&&&@..@..@..@..@..@&&&&@@@@@@@@@@@@@@@@"
	Map[30] := "@@@@@@@@@@@@@@@@@@@@@@***...@@.@....@..@@****.........$.@@.@@****@.@.@$@@@$....@@***@....@.......@.@@@*@..@$.@.....$@@.@@..@..@.$.$.@@@..$.@@.....$..$.@..@.@@.@@@.@.@@.@$$@.$@..@.@@..@...$.$.@......@@@....@.....@..@...V@@@@@@@@@@@@@@@@@@@@@"
	Map[31] := "/@@@@@@@@@@@@@@/@@@@@...@..@V@.@@..@@@@@@./.@..$....$../@@@@@./....//////.$../@/@.../../****/..$$..@@@$//$//****/......@@....../****//$//$@@@..$$../****/......@@.$..$../../..///..@/@@@/..$...$....$..@@@@@@.@....@..@.../@@@@@/@@@@@@@@@@@@@@@"
	Map[32] := "@@@@@@@#@@@@#@@/@@@@@.....@#@**@#@.....@@.$$..@@@**@@@..$V.@@..@.@@******@..$../@.....@******@..$..@@@@@..@@@**@@/@@/$.@@...$$$.@**@....@..@/.$@...$..$..$$.@$.@@..@..@@.$..@@..@..@@.$....$.//.$....$.@@..@..@@....@@..@..@@@@@/@@@@@@@@@@@@@@@"
	Map[33] := "@@@@@@@@@@@@@@@@@@@@@....@..@.@..@../..@@.V@./.@@.$...$...@@@@@@.@....@..@.$...@@....@.@@./$./@.@/.@@......$...$...$...@@**/@@$$/@.$@/$.@@.@@**@*@..@.$...$.@..@@****@.$$.../@$.@/@@@****@..@@@@@......@@***@@@............@@@@@@@@@@@@@@@@@@@@@"
	Map[34] := "@/@@@@/@@@@@@@/@@/@@/****/......./../..@@****@./.$..$......@@****./@..$@.@.$@$.@@***/...$...$@..$..@@**/@@@../.$...$$../@......@/@/.@@/@.@/@@......../.../.....@@.@/...@...$.@.$.$.@@./@....$.@@.$..$..@@.....V/...../..././@@@@@@/@@@@@/@@@/@/@"
	Map[35] := "@@@@@@@@@@@@@@@@@@@@@****@=@...........@@****@=@@@.@..@$@.@@@****@=@...@$..$...@@****@=@....$..@$$@@@@..@@=@.$@..@$.$..@@@..@==@..$..$..@..@@V..@@@@$@@@$@@.$..@@@........@..@..$..@@@...@@@..@..$..@@@@@@@@@@=@..@..@.....@@@@@@@@@@@@@@@@@@@@@"
	Map[36] := "#-----#------#-----#-.....-.....V-***#---.....-......##***#--.#.#.##$##.##.****--...$.-...$$$..****-#-#$#-#.$$..#-#.##*--.....$..#....-.---#-..$..#..#-#..#.#..-##.#$##....$..$$...--...$.##...#..#.#..--.....-....-..-....-#-----#----#--#----#"
	Map[37] := "/@@@@@/@@/@@/@@@@@@/@.....@..@***/V....@@.@.......****/....@@..$..@.../****/...@@.@@$@@@@.@/****/..@@.$...$..@../***@..@@.$$.@...@.../.$$..@/@@..$$$@...$$..$..@@.$..@..@....@.$@..@@...$@..@.......$..@@..@....@....@..@..@/@@/@@@@/@@@@/@@/@@/"
	Map[38] := "@@@@@@/@@@/@@@@@@@@@/V...../.../.......@@/.@/@.@/..@/@@.@./@@..../.@..$$......./@..@.@./.$.@.$.@@./@@.....$./..@$$./.../@..@/@../......@/./@@**@*/.$./..$.@..../@**@*@..$./.@@.$$..@@****/@...$$..$..@.@@*****/@......../..@@@@@@@@@@@@@@@@@@/@@"
	Map[39] := "~!!!@@@!@@@@@@@@@@@~!!!!@V@@@*@@***@@..@!!!@@$..**@***@....@!!@@....******@..$.@!@@..$.@*****@@.@.@@!@..$$@.@@@@@..$.$.@!@.$@.$....@@..$$..@!@..@..@....@.$..$.@!@...$$.@@@.@$@@...@!@.$@......$.$..$.@@!@@....@....@....@@!~!@@@@@@@@@@@@@@@@!~"
	Map[40] := "@@@@@@@@@@@@@@@@@@@@@..@......@...@...@@@.$@.$.$.@@***$..$.@@..$..@.@@****@.$..@@.@@.$.@@****@...$.@@.$....@****@@.$...@@.$@@..@***@.......@@...$$$@@$@@..@@@.@@@.@.@..@...@..@....@@.$.@..$..@@.......@@....@....@V.......@@@@@@@@@@@@@@@@@@@@@"
	Map[41] := "@@@@@@@@@@@@@@@@@@@@@..@..@.@....@..@..@@...$......$.$.....@@@.@..@$@@@$@@..@@.@@...$.....$..@..$..@@.@@@$@@$@...@.$...@@.@...$.$..@@@@@@.$@@.$..$$.$..@V@*@***@@.@.....@..@.@*@***@@.@@@@@@@@@@.@*****@@............@*****@@@@@@@@@@@@@@@@@@@@@"
	Map[42] := "@@@@@@@@@@@@@@@@@@@!@..@.....@..@@....@@@.$@...$.@.....@@..@@.$..$..@**@.....$.@@.$.$..@****@...@.@@@.$@..@******@@@.$.@@...@..@****@..@$..@@.$..@@@@**@...@...@@@.$...@@.@.@.$..$@@!@@.$....$@V$.$@...@!!@@...@.......@...@!!!@@@@@@@@@@@@@@@@@"
	Map[43] := "@@@@@@@@@@@@@@@@@###@..$...****@....@@@@@......****........@@.@.@@@@@@@@@@.....@@.@$...@......@@@**@@..$...@$$@@@...@**@@.$.@@@.$.......@**@@.$.@...$.$.@..@@**@@..@..$$.@.$.@@...@@@V@@.$@..$..$.....@#@@.......@@......@@##@@@@@@@@@@@@@@@@@##"
	Map[44] := "/////////////////////........@...@V.@..//.$$..@$$@.@.@..@@.//..@.$.$.@$$.@.....//@.@..@..@.@.@..@..//...@@.......@.....//...@.$.@...@...@..//.$.@$.@...@..$.@**//@$.@..@@@@....@***//..$..........@****//...@..@.....@*****/////////////////////"
	Map[45] := "@@@@@@@@@@@!!!@@@@@@@.....@...@!!@@....@@@.$..@...@@@@..$..@@@@@.$$...@**@..@..@@..$..$..@@**@@@@.@@@.$...@@@****...$$.@@..@$@...****@.@.$.@@.@..@.$.**@@@$@...@@.@...$.@**@...@@..@@...$@..@@@@...@.$@@@.@..@....V@......@!@@@@@@@@@@@@@@@@@@@!"
	Map[46] := "@@@@@@@@@@@@@@@@@@@@@...@...@....@...@V@@...$..$.....@.$.@.@@@$@.$@@@.@....$$@.@@..@..@*@@@..@$.$..@@..@$@****@..@.@@@.@@.$..@*****@@....@.@@@$..@*@****@$$.$..@@..@@@@@@**@@.@..@.@@..$.........$.@@@.@@...@...@........@.@@@@@@@@@@@@@@@@@@@@@"
	Map[47] := "&&&&&&&&&&&&&&&&&&&&&.@.@.@...@V@@...@.&&.............$....&&..@@$@.@@@@@.$.@.@&&@....@@*****@..@..&&@$@@$@*****@@@$@$.&&...@.@@*****@..@.@&&..$....@@**@@..@..&&.$.@...$...$..$$$.&&@.$..$@.@..@..$...&&...@@...@..@......&&&&&&&&&&&&&&&&&&&&&"
	Map[48] := "!!!!!!!@@@@@@@@@@@!!!!!!!!!@.........@!!!!!!!!!@....$.$..@!!@@@@@@!@.$./////.@!!@....@@@@@.$..//$@!!@.......$.$......@!!@..........@@.//.@!!@....@@V@@@@@.//.@!!@....@@@@!!!@.//.@@!@****@!!!!!!@.$...@!@****@!!!!!!@.....@!@@@@@@!!!!!!@@@@@@@!"
	Map[49] := "@@@@@@@@@@@@@!!!!!!!@...........@!!!!!!!@.@@@.$$....@!!!!!!!@...@.$..$..@!!!!!!!@..$@@@@$@@@@@@!!!!!@.$.@@........@@@@@!@..$$.$........***@!@@@.@@.$$@.....***@!!!@.@@...@.....***@!!!@......@.....***@!!!@@@V@@@@@@@@@@@@@!!!!@@@@!!!!!!!!!!!!!"
	Map[50] := "!!@@@@@@@!!!!!!!!!!!!!@.....@@@@@@@@@!!!!!@.....@....@..@@!!!!@.$...@...$.$..@!!!!@..$..@..$.@@..@!!!!@.$$..@@$.$....@!!!!@@.@..@@.@@@@@@@!!!!@@.@..@@....***@!!!!@..@$.......***@!!!!@...$$......***@!!!!@.....@@V@..***@!!!!@@@@@@@@@@@@@@@@!!"
	Map[51] := "@@@@@@@@@@@@@@@@@@@@@.@.....@..........@@.......$..@@.@@@.@@@@@@@..@@...$..$...@@@**@@..@.@.$.@.@..@@****..$.....@@$@.@@@****..$@@@@@...@$@@@@**@.@..@...@..$..@-@@*@.@..$...$..@.V@-@..$..$.@...@..@@@@-@.......@@@@@@@@----@@@@@@@@@----------"
	Map[52] := "!!!!!!!!!!!!!!!!!!!!!!#!!#!!#!!#!!#!!#!!!!!!!!!@@@@@!!!!!!!!!!#!!@@@..V@!!!!!#!!!!!!!@..$*.@@!!!!!!!!!#!!@..*$*.@!!!!#!!!!!!!@@@.O$.@!!!!!!!!!#!!!!@...@@!!!!#!!!!!!!!!@@@@@!!!!!!!!!!#!!#!!#!!#!!#!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[53] := "!!!!!!!!!!!@@@@!!!!!!~~~~@@@@@@@.V@!===!!~~~!@.....$..@!!==!!~~!!@...$@@.$@!!!=!!~!!!@@$@***@.@!!!!!!!!!!!@.$***..@!!!!!!!!!!!@.@*.*@.@@!!!!!=!!!!@...@.@$.@!!~!!==!!!@$..$....@!~~!!===!!@..@@@@@@@~~~!!====!@@@@!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[54] := "@@@@@@@@@@@@@@@@@@@@@@@@..@..@@@@@@@@@@@@@@@..@..@***@@@@@@@@@@..$@..@***..@@@@@@@@.$.@$$.***..@@@@@@@@..$@..@***.*@@@@@@@@...@.$@@@@@@@@@@@@@@@$.......$.$.@@@@@@@@..@..$$.@...@@@@@@@@@@@@@..@@$$V@@@@@@@@@@@@@......@@@@@@@@@@@@@@@@@@@@@@@@@"
	Map[55] := "&&&&!!!!!!!!!!!!!!!!&==&!!!@@@@@@@@!!!!!&==&!!!@...@*.@!!!!!&&&&!!@@..$***@!!!!!!!!!!!@..$.@O*@!!!!!!!!!!@@.@@$@.@@!!!!!!!!!!@...$..$.@!!!!!!!!!!@...@....@!!!!!!!!!!@@@@@@@V.@!&&&&!!!!!!!!!!!@@@@!&==&!!!!!!!!!!!!!!!!&==&!!!!!!!!!!!!!!!!&&&&"
	Map[56] := "!!!!!!!!!!!!!!!!!!!!!!!=!!!!!!!!!!!=!!!!!!!=!!@@@@@@@!!=!!!!!!!=!!@../..@!!=!!!!!!!=!!@.$.$.@!!=!!!!!!!=!!@.*O*.@!!=!!!!!!!=!!@/***/@!!=!!!!!!!=!!@.$$$.@!!=!!!!!!!=!!@..V..@!!=!!!!!!!=!!@@@@@@@!!=!!!!!!!=!!!!!!!!!!!=!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[57] := "!!!!!!!!!!@@@@!!!!!!!!@@@@@@@@@..@@!!!!!!@@..$......$.@@@@@!!@...@@.@@...@@***@!!@.@$$.$.$$@$@@***@!!@.@...V...@...***@!!@..$@.@@@$$...***@!!@.$..$$..$.@@****@!!@@@$.......@@@@@@@!!!!@..@@@@@@@!!!!!!!!~!@@@@!!!!!!!~~~~~!!!!!!!!!!!!!!!!!!!!!"
	Map[58] := "@@@@@@@@@@@@@@@@@@@=@....V@@......@...@=@....@@....$....$.@=@..@@@****@.@.@..@@@@...@****@.@.@.$...@@@@.@***@..@.......@=@..@@*@.....$...$.@=@..$.$.@@@..@.@.@@@=@.$.......@.@.$...@=@@@.$..$@.@.@.@.$.@===@.........@.@..@@===@@@@@@@@@@@@@@@@="
	Map[59] := "!!!!!!!!!!!!!!!!!!!!!/!!!!!!!!!!!!!!/!!!!!!/!!!!!!!!!!!!!!/!!/!!!!!!@@@@@@!!/!!!!!!/!!@@@....@!!!!/!!/!!!@@*.$@@.@@!/!!!!!!/!@**$.$..V@!!!/!!/!!!@**.$.$.@@!/!!!!!!/!@@@@@@..@!!!!/!!/!!!!!!!!@@@@!!/!!!!!!/!!!!!!!!!!!!!!/!!!!!!!!!!!!!!!!!!!!!"
	Map[60] := "@@@@########@@@@@@@@@..@@@@@@@@@@.....V@@.$@....@.....@@@@@@@......@@@@...@..@##@@@@@.........@..@##@...$.........@..@@@@..$@@@@..@...@....@@./.@..@**@$@@@../.@@./.@$.@**@..$..$$.@@......@**@..@...@.@@...@..@**@..@...@.@@@@@@@@@@@@@@@@@@@@@"
	Map[61] := "!$$$$$!$!!$!$$$$!!!!!!!$!!!$!!$!$!!!!!!!!!!$!!!$$$$!$$$!!!!!!!!$!!!$!!$!$!!!!!!!!!!$!!!$!!$!$$$$!!!!!!!!!!!!!!!!!!!!!!$!!!!$$$$!$!!$!$$$!!$!!!!$!!!!$$!$!$!!$!$!!!!$$$!!$!$$!$!!$!$!!!!$!!!!$!!$!$!!$!!!!!!$$$$!$!!$!$$$!!V!!!!!!!!!!!!!!!!!!!!!"
	Map[49] := "@@@@@@@@@@@@@!!!!!!!@...........@!!!!!!!@.@@@.$$....@!!!!!!!@...@.$..$..@!!!!!!!@..$@@@@$@@@@@@!!!!!@.$.@@........@@@@@!@..$$.$........***@!@@@.@@.$$@.....***@!!!@.@@...@.....***@!!!@......@.....***@!!!@@@V@@@@@@@@@@@@@!!!!@@@@!!!!!!!!!!!!!"
	Map[50] := "!!@@@@@@@!!!!!!!!!!!!!@.....@@@@@@@@@!!!!!@.....@....@..@@!!!!@.$...@...$.$..@!!!!@..$..@..$.@@..@!!!!@.$$..@@$.$....@!!!!@@.@..@@.@@@@@@@!!!!@@.@..@@....***@!!!!@..@$.......***@!!!!@...$$......***@!!!!@.....@@V@..***@!!!!@@@@@@@@@@@@@@@@!!"
	Map[51] := "@@@@@@@@@@@@@@@@@@@@@.@.....@..........@@.......$..@@.@@@.@@@@@@@..@@...$..$...@@@**@@..@.@.$.@.@..@@****..$.....@@$@.@@@****..$@@@@@...@$@@@@**@.@..@...@..$..@-@@*@.@..$...$..@.V@-@..$..$.@...@..@@@@-@.......@@@@@@@@----@@@@@@@@@----------"
	Map[52] := "!!!!!!!!!!!!!!!!!!!!!!#!!#!!#!!#!!#!!#!!!!!!!!!@@@@@!!!!!!!!!!#!!@@@..V@!!!!!#!!!!!!!@..$*.@@!!!!!!!!!#!!@..*$*.@!!!!#!!!!!!!@@@.O$.@!!!!!!!!!#!!!!@...@@!!!!#!!!!!!!!!@@@@@!!!!!!!!!!#!!#!!#!!#!!#!!#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[53] := "!!!!!!!!!!!@@@@!!!!!!~~~~@@@@@@@.V@!===!!~~~!@.....$..@!!==!!~~!!@...$@@.$@!!!=!!~!!!@@$@***@.@!!!!!!!!!!!@.$***..@!!!!!!!!!!!@.@*.*@.@@!!!!!=!!!!@...@.@$.@!!~!!==!!!@$..$....@!~~!!===!!@..@@@@@@@~~~!!====!@@@@!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[54] := "@@@@@@@@@@@@@@@@@@@@@@@@..@..@@@@@@@@@@@@@@@..@..@***@@@@@@@@@@..$@..@***..@@@@@@@@.$.@$$.***..@@@@@@@@..$@..@***.*@@@@@@@@...@.$@@@@@@@@@@@@@@@$.......$.$.@@@@@@@@..@..$$.@...@@@@@@@@@@@@@..@@$$V@@@@@@@@@@@@@......@@@@@@@@@@@@@@@@@@@@@@@@@"
	Map[55] := "&&&&!!!!!!!!!!!!!!!!&==&!!!@@@@@@@@!!!!!&==&!!!@...@*.@!!!!!&&&&!!@@..$***@!!!!!!!!!!!@..$.@O*@!!!!!!!!!!@@.@@$@.@@!!!!!!!!!!@...$..$.@!!!!!!!!!!@...@....@!!!!!!!!!!@@@@@@@V.@!&&&&!!!!!!!!!!!@@@@!&==&!!!!!!!!!!!!!!!!&==&!!!!!!!!!!!!!!!!&&&&"
	Map[56] := "!!!!!!!!!!!!!!!!!!!!!!!=!!!!!!!!!!!=!!!!!!!=!!@@@@@@@!!=!!!!!!!=!!@../..@!!=!!!!!!!=!!@.$.$.@!!=!!!!!!!=!!@.*O*.@!!=!!!!!!!=!!@/***/@!!=!!!!!!!=!!@.$$$.@!!=!!!!!!!=!!@..V..@!!=!!!!!!!=!!@@@@@@@!!=!!!!!!!=!!!!!!!!!!!=!!!!!!!!!!!!!!!!!!!!!!!!"
	Map[57] := "!!!!!!!!!!@@@@!!!!!!!!@@@@@@@@@..@@!!!!!!@@..$......$.@@@@@!!@...@@.@@...@@***@!!@.@$$.$.$$@$@@***@!!@.@...V...@...***@!!@..$@.@@@$$...***@!!@.$..$$..$.@@****@!!@@@$.......@@@@@@@!!!!@..@@@@@@@!!!!!!!!~!@@@@!!!!!!!~~~~~!!!!!!!!!!!!!!!!!!!!!"
	Map[58] := "@@@@@@@@@@@@@@@@@@@=@....V@@......@...@=@....@@....$....$.@=@..@@@****@.@.@..@@@@...@****@.@.@.$...@@@@.@***@..@.......@=@..@@*@.....$...$.@=@..$.$.@@@..@.@.@@@=@.$.......@.@.$...@=@@@.$..$@.@.@.@.$.@===@.........@.@..@@===@@@@@@@@@@@@@@@@="
	Map[59] := "!!!!!!!!!!!!!!!!!!!!!/!!!!!!!!!!!!!!/!!!!!!/!!!!!!!!!!!!!!/!!/!!!!!!@@@@@@!!/!!!!!!/!!@@@....@!!!!/!!/!!!@@*.$@@.@@!/!!!!!!/!@**$.$..V@!!!/!!/!!!@**.$.$.@@!/!!!!!!/!@@@@@@..@!!!!/!!/!!!!!!!!@@@@!!/!!!!!!/!!!!!!!!!!!!!!/!!!!!!!!!!!!!!!!!!!!!"
	Map[60] := "@@@@########@@@@@@@@@..@@@@@@@@@@.....V@@.$@....@.....@@@@@@@......@@@@...@..@##@@@@@.........@..@##@...$.........@..@@@@..$@@@@..@...@....@@./.@..@**@$@@@../.@@./.@$.@**@..$..$$.@@......@**@..@...@.@@...@..@**@..@...@.@@@@@@@@@@@@@@@@@@@@@"
	Map[61] := "!$$$$$!$!!$!$$$$!!!!!!!$!!!$!!$!$!!!!!!!!!!$!!!$$$$!$$$!!!!!!!!$!!!$!!$!$!!!!!!!!!!$!!!$!!$!$$$$!!!!!!!!!!!!!!!!!!!!!!$!!!!$$$$!$!!$!$$$!!$!!!!$!!!!$$!$!$!!$!$!!!!$$$!!$!$$!$!!$!$!!!!$!!!!$!!$!$!!$!!!!!!$$$$!$!!$!$$$!!V!!!!!!!!!!!!!!!!!!!!!"

	TempMap := "" ; Initialize variable to store temporary map data
	CurrentLevel := 0 ; Initialize variable to store current map number

	; GDI+ Startup
	hGdip := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll")
	VarSetCapacity(SI, (A_PtrSize = 8 ? 24 : 16), 0), NumPut(1, SI, 0, "UChar")
	DllCall("Gdiplus.dll\GdiplusStartup", (A_PtrSize ? "UPtr*" : "UInt*"), pToken, (A_PtrSize ? "UPtr" : "UInt"), &SI, (A_PtrSize ? "UPtr" : "UInt"), 0)

	pIcon16 := GdipCreateFromBase64(Icon16, true) ; Create HICON from icon data
	pIcon32 := GdipCreateFromBase64(Icon32, true) ; Create HICON from icon data

	Menu, Tray, Icon, % "HICON:*" pIcon16 ; Set tray icon using 16x16 PNG image
	Menu, Tray, Tip, Bulldozer ; Set tray tip text
}

OnUnload(ExitReason, ExitCode) {
	Global ; Assume-global mode

	; GDI+ Shutdown
	DllCall("Gdiplus.dll\GdiplusShutdown", (A_PtrSize ? "UPtr" : "UInt"), pToken)
	DllCall("Kernel32.dll\FreeLibrary", (A_PtrSize ? "UPtr" : "UInt"), hGdip)

	; Destroy icons
	DllCall("User32.dll\DestroyIcon", (A_PtrSize ? "UPtr" : "UInt"), pIcon16)
	DllCall("User32.dll\DestroyIcon", (A_PtrSize ? "UPtr" : "UInt"), pIcon32)
}

GuiCreate() {
	Global ; Assume-global mode
	Static Init := GuiCreate() ; Call function

	Menu, GameMenu, Add, &Restart Level`tF2, MenuHandler
	Menu, GameMenu, Add ; Separator
	Menu, GameMenu, Add, &Level Select`tF3, MenuHandler
	Menu, GameMenu, Add ; Separator
	Menu, GameMenu, Add, E&xit`tAlt+F4, MenuHandler
	Menu, HelpMenu, Add, &About Bulldozer..., MenuHandler
	Menu, MenuBar, Add, &Game, :GameMenu
	Menu, MenuBar, Add, &Help, :HelpMenu
	Gui, Main: Menu, MenuBar

	Gui, Main: +LastFound -Resize +HwndhBulldozer +OwnDialogs
	Gui, Main: Margin, 0, 0
	Gui, Main: Color, 000000
	Gui, Main: Add, Edit, x0 y0 w0 h0 +0x800 ; Catch keypresses
	Gui, Main: Add, Picture, x0 y0 w640 h384 HwndhBackground 0xE ; Background image
	Gui, Main: Add, Picture, x0 y384 w640 h32 HwndhHUD 0xE ; HUD image
	MapSet(1) ; Load map data and set background
	Gui, Main: Show, w640 h416, Bulldozer - Level %CurrentLevel%

	Gui, Password: +LastFound -Resize +HwndhPassword +OwnDialogs
	Gui, Password: Margin, 10, 10
	Gui, Password: Add, Text, w200, Level Password:
	Gui, Password: Add, Edit, w140 +Uppercase +Limit5 vPassword
	Gui, Password: Add, Button, x+10 yp w80 hp gControlHandler, Submit
	Gui, Password: Show, Hide AutoSize, Level Select

	SendMessage, 0x80, 0, pIcon16,, ahk_id %hBulldozer% ; Set 16x16 icon
	SendMessage, 0x80, 1, pIcon32,, ahk_id %hBulldozer% ; Set 32x32 icon
}

MainGuiClose(hBulldozer) {
	Global ; Assume-global mode

	ExitApp ; Terminate the script unconditionally
}

PasswordGuiClose(hPassword) {
	Global ; Assume-global mode

	GuiControl, Password:, Password ; Clear password field
}

WM_KEYDOWN(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
	Static Init := OnMessage(0x0100, "WM_KEYDOWN") ; Call function

	; Define key code and flag names -------------------------------------------
    Static VK_UP := 26, VK_LEFT := 25, VK_DOWN := 28, VK_RIGHT := 27,
    VK_W := 57, VK_A := 41, VK_S := 53, VK_D := 44, VK_F1 := 70,
	VK_RETURN := "D",  VK_ESCAPE := "1B", KF_REPEAT := "0x40000000"

	If (A_Gui <> "Main") {
		return ; Prevent moving when typing in password
	}

	VK := Format("{:x}", wParam) ; Get key code

    If (lParam & KF_REPEAT) {
		return ; Disable auto-repeat
    }

	If (VK = VK_ESCAPE) { ; Escape
		ExitApp ; Terminate the script unconditionally
	}

	If (VK = VK_UP) || (VK = VK_W) { ; Up/W
		Move(0, -1)
	}

    If (VK = VK_LEFT) || (VK = VK_A) { ; Left/A
		Move(-1, 0)
    }

    If (VK = VK_DOWN) || (VK = VK_S) { ; Down/S
		Move(0, 1)
    }

    If (VK = VK_RIGHT) || (VK = VK_D) { ; Right/D
		Move(1, 0)
    }

	If (VK = VK_F1) {

	}

	LevelClearCheck() ; Check for remaining boulders
}

LevelClearCheck() {
	Global ; Assume-global mode

	; If all boulders moved to target
	If (!InStr(TempMap, "$")) {
		CurrentLevel++ ; Increment level number + 1
		MapSet(CurrentLevel) ; Load next map
	}
}

MapSet(LevelNumber) {
	Global ; Assume-global mode

	CurrentLevel := RegExReplace(LevelNumber, "\D") ; Get level number
	TempMap := Map[CurrentLevel] ; Copy map data to TempMap variable
	BackgroundLoad(Map[CurrentLevel]) ; Generate background image
	DisplayUpdate() ; Update HUD image with level number and password
	Gui, Main: Show,, Bulldozer - Level %CurrentLevel% ; Update window title
}

Move(X, Y) {
	Global ; Assume-global mode

	PosNum := RegExMatch(TempMap, "(V|\^|<|>)") ; Get position of bulldozer

	; Get positions of next characters
	PosNextNum := PosNum + (Y ? Y * 20 : X)
	PosNextNumX2 := PosNum + (Y ? (Y + Y) * 20 : (X + X))

	; Get character string value of next positions
	PosNextChr := SubStr(TempMap, PosNum + (Y ? Y * 20 : X), 1)
	PosNextChrX2 := SubStr(TempMap, PosNum + (Y ? (Y + Y) * 20 : (X + X)), 1)

	; Replace character with value from original map
	Char := SubStr(Map[CurrentLevel], PosNum, 1)
	ReplaceChar := (Char = "V" ? "." : Char = "^" ? "." : Char = "<" ? "." : Char = ">" ? "." : Char = "$" ? "." : Char = "*" ? "*" : Char = "O" ? "*" : Char)

	; Face bulldozer in direction of requested movement
	Bulldozer := (PosNextNum = PosNum - 1 ? "<" : PosNextNum = PosNum + 1 ? ">" : PosNextNum = PosNum - 20 ? "^" : "V")

	If (RegExMatch(PosNextChr, "(#|!|@|&|\/|~)")) { ; Boundaries
		TempMap := StrReplacePos(TempMap, Bulldozer, PosNum)
		BackgroundLoad(TempMap)
		return
	}

	If (PosNextChr = "O") { ; Target+Boulder
		If (RegExMatch(PosNextChrX2, "(#|!|@|&|O|\$)")) { ; Boundaries
			TempMap := StrReplacePos(TempMap, Bulldozer, PosNum)
			BackgroundLoad(TempMap)
			return
		}

		If (PosNextChrX2 = ".") { ; Open space
			TempMap := StrReplacePos(TempMap, "$", PosNextNumX2)
			TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
			TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
			BackgroundLoad(TempMap)
			return
		}

		If (PosNextChrX2 = "*") { ; Target
			TempMap := StrReplacePos(TempMap, "O", PosNextNumX2)
			TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
			TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
			BackgroundLoad(TempMap)
			return
		}

		; Everything else
		TempMap := StrReplacePos(TempMap, "$", PosNextNumX2)
		TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
		TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
		BackgroundLoad(TempMap)
		return
	}

	If (PosNextChr = "$") { ; Boulder
		If (RegExMatch(PosNextChrX2, "(#|!|@|&|O|\/|~|\$)")) { ; Boundaries
			TempMap := StrReplacePos(TempMap, Bulldozer, PosNum)
			BackgroundLoad(TempMap)
			return
		}

		If (PosNextChrX2 = "*") { ; Target
			TempMap := StrReplacePos(TempMap, "O", PosNextNumX2)
			TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
			TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
			BackgroundLoad(TempMap)
			return
		}

		; Everything else
		TempMap := StrReplacePos(TempMap, "$", PosNextNumX2)
		TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
		TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
		BackgroundLoad(TempMap)
		return
	}

	; Everything else
	TempMap := StrReplacePos(TempMap, Bulldozer, PosNextNum)
	TempMap := StrReplacePos(TempMap, ReplaceChar, PosNum)
	BackgroundLoad(TempMap)
}

StrReplacePos(Haystack, Replacement, Position) {
	Global ; Assume-global mode

	; Get string from beginning to specified position
	Before := SubStr(Haystack, 1, Position - 1)

	; Get string from speified position to end
	After := SubStr(Haystack, Position + 1, StrLen(Haystack) - Position)

	; New string inserting replacement character into position
	NewStr := Before . Replacement . After

	return NewStr
}

BackgroundLoad(MapData) {
	Global ; Assume-global mode

	; Create GDI+ bitmap
    DllCall("Gdiplus.dll\GdipCreateBitmapFromScan0", "Int", 640, "Int", 384, "Int", 0, "Int", 0x26200A, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr*" : "UInt*"), pBitmap)

	; Get pointer to bitmap graphics
	DllCall("Gdiplus.dll\GdipGetImageGraphicsContext", (A_PtrSize ? "UPtr" : "UInt"), pBitmap, (A_PtrSize ? "UPtr*" : "UInt*"), G)

	; Create brush
	DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", 0XFF808000, (A_PtrSize ? "UPtr*" : "UInt*"), pBrush)

	; Fill bitmap graphic with brush color
	DllCall("Gdiplus.dll\GdipFillRectangle", (A_PtrSize ? "UPtr" : "UInt"), G, (A_PtrSize ? "UPtr" : "UInt"), pBrush, "Float", 0, "Float", 0, "Float", 640, "Float", 384)

	; Delete brush
	DllCall("Gdiplus.dll\GdipDeleteBrush", (A_PtrSize ? "UPtr" : "UInt"), pBrush)

	; Create bitmap from tilemap Base64 encoded data string
	pTilemap := GdipCreateFromBase64(Tilemap[1])

	; Generate image using tileset coordinates from map data
	Loop, % StrLen(MapData) {
		Row := Ceil(A_Index / 20)
		Col := (!Mod(A_Index, 20) ? 20 : Mod(A_Index, 20))
		C := SubStr(MapData, A_Index, 1)
		TileCol := (C = "!" ? 1 : C = "@" ? 2 : C = "#" ? 8 : C = "." ? 0 : C = "*" ? 11 : C = "&" ? 5 : C = "$" ? 9 : C = "V" ? 14 : C = "^" ? 13 : C = "<" ? 15 : C = ">" ? 12 : C = "O" ? 10 : C = "~" ? 3 : C = "/" ? 4 : C = "-" ? 7 : C = "=" ? 6 : 0)
		DllCall("Gdiplus.dll\GdipDrawImageRectRect", (A_PtrSize ? "UPtr" : "UInt"), G, (A_PtrSize ? "UPtr" : "UInt"), pTilemap, "Float", 32 * (Col-1), "Float", 32 * (Row-1), "Float", 32, "Float", 32, "Float", (TileCol-1) * 32, "Float", 0, "Float", 32, "Float", 32, "Int", 2, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr" : "UInt"), 0)
	}

	; Delete bitmap
	DllCall("Gdiplus.dll\GdipDisposeImage", (A_PtrSize ? "UPtr" : "UInt"), pTilemap)

	; Create pointer to bitmap
	DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", (A_PtrSize ? "UPtr" : "UInt"), pBitmap, (A_PtrSize ? "UPtr*" : "UInt*"), hBitmap, "Int", 0XFFFFFFFF)

	; Send image to static control, then delete from memory
	SendMessage, 0x172, 0x0, hBitmap,, ahk_id %hBackground%
	DllCall("Gdi32.dll\DeleteObject", (A_PtrSize ? "UPtr" : "UInt"), ErrorLevel)

	; Delete bitmap
	DllCall("Gdi32.dll\DeleteObject", (A_PtrSize ? "UPtr" : "UInt"), hBitmap)

	; Delete bitmap
	DllCall("Gdiplus.dll\GdipDisposeImage", (A_PtrSize ? "UPtr" : "UInt"), pBitmap)

	; Delete bitmap graphic
	DllCall("Gdiplus.dll\GdipDeleteGraphics", (A_PtrSize ? "UPtr" : "UInt"), G)
}

DisplayUpdate() {
	Global ; Assume-global mode

	; Create GDI+ bitmap
    DllCall("Gdiplus.dll\GdipCreateBitmapFromScan0", "Int", 640, "Int", 32, "Int", 0, "Int", 0x26200A, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr*" : "UInt*"), pBitmap)

	; Get pointer to bitmap graphics
	DllCall("Gdiplus.dll\GdipGetImageGraphicsContext", (A_PtrSize ? "UPtr" : "UInt"), pBitmap, (A_PtrSize ? "UPtr*" : "UInt*"), G)

	; Create brush
	DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", 0XFF000000, (A_PtrSize ? "UPtr*" : "UInt*"), pBrush)

	; Fill bitmap graphic with brush color
	DllCall("Gdiplus.dll\GdipFillRectangle", (A_PtrSize ? "UPtr" : "UInt"), G, (A_PtrSize ? "UPtr" : "UInt"), pBrush, "Float", 0, "Float", 0, "Float", 640, "Float", 32)

	; Delete brush
	DllCall("Gdiplus.dll\GdipDeleteBrush", (A_PtrSize ? "UPtr" : "UInt"), pBrush)

	; Create bitmap from fontmap Base64 encoded data string
	pFontmap := GdipCreateFromBase64(Fontmap)

	; Write password text to screen
	FontMapWrite("LEVEL", 8, 8)
	FontMapWrite((CurrentLevel < 10 ? "0" : "") CurrentLevel, 104, 8)
	FontMapWrite("PASSWORD:" , 376, 8)
	FontMapWrite(Password(Map[CurrentLevel]), 536, 8)

	; Delete bitmap
	DllCall("Gdiplus.dll\GdipDisposeImage", (A_PtrSize ? "UPtr" : "UInt"), pFontmap)

	; Create pointer to bitmap
	DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", (A_PtrSize ? "UPtr" : "UInt"), pBitmap, (A_PtrSize ? "UPtr*" : "UInt*"), hBitmap, "Int", 0XFFFFFFFF)

	; Send image to static control, then delete from memory
	SendMessage, 0x172, 0x0, hBitmap,, ahk_id %hHUD%
	DllCall("Gdi32.dll\DeleteObject", (A_PtrSize ? "UPtr" : "UInt"), ErrorLevel)

	; Delete bitmap
	DllCall("Gdi32.dll\DeleteObject", (A_PtrSize ? "UPtr" : "UInt"), hBitmap)

	; Delete bitmap
	DllCall("Gdiplus.dll\GdipDisposeImage", (A_PtrSize ? "UPtr" : "UInt"), pBitmap)

	; Delete bitmap graphic
	DllCall("Gdiplus.dll\GdipDeleteGraphics", (A_PtrSize ? "UPtr" : "UInt"), G)
}

FontMapWrite(Text, X, Y) {
	Global ; Assume-global mode

	; Identify position of fontmap characters for each input character
	Loop, Parse, Text
	{
		T := A_LoopField
		C := (T = "A" ? 0 : T = "B" ? 16 : T = "C" ? 32 : T = "D" ? 48 : T = "E" ? 64 : T = "F" ? 80 : T = "G" ? 96 : T = "H" ? 112 : T = "I" ? 128 : T = "J" ? 144 : T = "K" ? 160 : T = "L" ? 176 : T = "M" ? 192 : T = "N" ? 208 : T = "O" ? 224 : T = "P" ? 240 : T = "Q" ? 256 : T = "R" ? 272 : T = "S" ? 288 : T = "T" ? 304 : T = "U" ? 320 : T = "V" ? 336 : T = "W" ? 352 : T = "X" ? 368 : T = "Y" ? 384 : T = "Z" ? 400 : T = ":" ? 416 : T = "0" ? 432 : T = "1" ? 448 : T = "2" ? 464 : T = "3" ? 480 : T = "4" ? 496 : T = "5" ? 512 : T = "6" ? 528 : T = "7" ? 544 : T = "8" ? 560 : T = "9" ? 576 : -16)

		; Generate image with text
		DllCall("Gdiplus.dll\GdipDrawImageRectRect", (A_PtrSize ? "UPtr" : "UInt"), G, (A_PtrSize ? "UPtr" : "UInt"), pFontmap, "Float", ((16 * A_Index) - 8) + X, "Float", Y, "Float", 16, "Float", 16, "Float", C, "Float", 0, "Float", 16, "Float", 16, "Int", 2, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr" : "UInt"), 0, (A_PtrSize ? "UPtr" : "UInt"), 0)
	}
}

GdipCreateFromBase64(Base64, HICON := 0) {
	DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &Base64, "UInt", 0, "UInt", 0x01, "Ptr", 0, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
	VarSetCapacity(Dec, DecLen, 0)
	DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &Base64, "UInt", 0, "UInt", 0x01, "Ptr", &Dec, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
	pStream := DllCall("Shlwapi.dll\SHCreateMemStream", "Ptr", &Dec, "UInt", DecLen, "UPtr")
	DllCall("Gdiplus.dll\GdipCreateBitmapFromStreamICM", "Ptr", pStream, "PtrP", pBitmap)

	If (HICON) {
		DllCall("Gdiplus.dll\GdipCreateHICONFromBitmap", "Ptr", pBitmap, "PtrP", hBitmap, "UInt", 0)
	}

	ObjRelease(pStream)
	return (HICON ? hBitmap : pBitmap)
}

Password(Str, Array := 0) {
	Local Pass := "" ; Initialize variable

	If (Array) {
		For K, V In Array {
			If (Str = Password(V)) {
				return K
			}
		}
		return
	}

	Hash := RTrim(RegExReplace(Format("{:010}", DllCall("Ntdll.dll\RtlComputeCrc32", "UInt", 0, "Ptr", &Str, "Int", StrLen(Str) * 2, "UInt")), ".{2}", "$0_"), "_")

	Loop, Parse, Hash, _
	{
		Pass .= Chr(64 + Ceil((A_LoopField + 1) / 4))
	}

	return Pass
}

MenuHandler(ItemName, ItemPos, MenuName) {
	Global ; Assume-global mode

	If (MenuName = "GameMenu") {
		If (ItemName = "&Restart Level`tF2") {
			MapSet(CurrentLevel)
		} Else If (ItemName = "&Level Select`tF3") {
			Gui, Password: Show
			GuiControl, Password: Focus, Password
		} Else If (ItemName = "E&xit`tAlt+F4") {
			ExitApp ; Terminate the script unconditionally
		}
	} Else If (MenuName = "HelpMenu") {
		If (ItemName = "&About Bulldozer...") {
			Gui, Main: +OwnDialogs
			MsgBox, 0x40, About Bulldozer..., Bulldozer`nRevision 2 - 2018-06-06`n`nBulldozer is a clone (with some differences) of [Bulldozer] from`n[24 Games for Windows 95] released by [Expert Software, Inc.]`n`nDeveloped for AutoHotkey by:`nWeston Campbell <westoncampbell@gmail.com>`n`nhttps://autohotkey.com/boards/viewtopic.php?f=6&t=50139
		}
	}
}

ControlHandler() {
	Global ; Assume-global mode

	If (A_Gui = "Password") {
		If (A_GuiControl = "Submit") {
			Gui, Password: Submit, NoHide
			Pwd := Password(Password, Map)
			GuiControl, Password:, Password ; Clear password field
			GuiControl, Password: Focus, Password

			If (Pwd) {
				MapSet(Pwd) ; Load map
				Gui, Password: Hide ; Hide password window
			}
		}
	}
}
; ==============================================================================