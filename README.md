
Bulldozer 1 first appeared in 1994 on the CD-ROM game compilation "[24 Games for Windows 95](https://archive.org/details/24GamesForWindows95)" developed by The Code Zone for Expert Software, Inc. Bulldozer 2 became available in 2000 on "Arcade Magic", also developed for Expert Software, Inc. Bulldozer 1 & Bulldozer 2 were re-released in 2003 on "Blazing Games", a compilation of fifty games developed for Cosmi Europe, Ltd. Bulldozer 3 was completed in 2002, but remained unavailable until the 2008 release of [Bulldozer](https://www.thecodezone.com/game/bulldozer.html) which included all 180 levels from the Bulldozer game series. The 2008 version was created with Adobe Flash and is available on a variety of desktop and mobile platforms. Bulldozer is a variation of the popular [Sokoban](https://en.wikipedia.org/wiki/Sokoban) puzzle game.

The object of Bulldozer is to push all of the rocks to the targets. Move the bulldozer using the keyboard's WASD or arrow keys. The bulldozer can only push one rock at a time, and it cannot pull rocks. You will advance to the next level when each rock has been placed on a target.

![Arrow](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/icon-arrow.gif) All credit goes to John Hattan for the original idea of the Bulldozer game series. This project was an exercise in GDI+ and string manipulation, and is intended to pay tribute to the game I played in my youth.

![Bulldozer](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/bulldozer-push-rock.png)

<br>

![Github](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/icon-github.png) https://github.com/westoncampbell/BulldozerAHK

![AutoHotkey](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/icon-ahk.png) https://www.autohotkey.com/boards/viewtopic.php?f=6&t=50139

<br>

## Download
All releases can be found on the BulldozerAHK Github repository:

https://github.com/westoncampbell/BulldozerAHK/tree/master/Releases

<br>

## Screenshots

<a target="_blank" href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-1.png"><img alt="Screenshot 1" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-1.png"></a>



[![SS1](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-1.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-1.png) [![SS2](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-2.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-2.png) [![SS3](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-3.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-3.png) [![SS4](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-4.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-4.png) [![SS5](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-5.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-5.png) [![SS6](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-6.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-6.png) [![SS7](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-7.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-7.png) [![SS8](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/S-Screen-8.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/L-Screen-8.png)

<br>

## Game Objective
The object of Bulldozer is to push each rock on to a target.

<br>

## Movement
Move the bulldozer using the arrow keys, or WASD keys, on your keyboard. The bulldozer can move horizontally and vertically.

![Fig 1](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig1.png)

The bulldozer will not move if one of the following three conditions are true:

**(1) You are trying to push multiple rocks...**

![Fig 2](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig2.png)

> You can only push one rock at a time!

**(2) You are pushing against a wall. . .**

![Fig 3](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig3.png)

> The bulldozer can't move through walls.

**(3) You are pushing a rock against a wall. . .**

![Fig 4](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig4.png)

> Be careful about pushing rocks against walls. The rock might become stuck, and you'll be forced to restart the level.

![Fig 5](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig5.png)

> However, it may still be possible to reach the target depending on its position.

![Fig 6](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Docs/Images/Fig6.png)

<br>

## Completing a Level
Progress to the next level by moving all of the rocks on to the targets. Each level will have the same number of rocks as targets.

<br>

## Hints
Carefully plan your moves. It's easy to get stuck which may force you to restart the level.

A rock is not locked into position once it is placed on a target.

<br>

## Menubar
### Game

#### Restart Level
> Reset the level, moving all of the objects to their original starting positions.

#### Level Select
> Show the level selection screen, allowing navigation to any of the included 180 levels.

#### Undo Last Move
> Reset all objects from your recent move to their previous positions.

#### Exit
> Completely close the game.

<br>

### View
#### Layered Tiles
> Toggle drawing of objects on top of the background elements for custom themes using transparency.

<br>

### Options
#### Background Color
> Set the color of the background behind the game objects by choosing from one of the 16 presets or using the custom color picker.

#### Theme
> Change the appearance of the game objects by choosing the "Color" or "Monochrome" options, or using a custom theme by selecting an external PNG image file.

#### Sound Effects
> Toggle sound effects.

#### Level Number
> Toggle the display of the current level number overlayed on the top-right of the game screen.

#### Unlimited Undo
> Toggle the allowance of mutliple consecutive undo actions.

#### Mouse Movement
> Toggle the movement of the bulldozer using mouse controls.

#### Titlebar Progress
> Toggle the display [Text] of the current level progress in the titlebar of the game window.

#### Taskbar Progress
> Toggle the display [ProgressBar] of the current level progress in the game taskbar item.

<br>

### Help
#### Website...
> Open the game website in the default web browser.

#### About Bulldozer
> Open the 'About' screen, displaying information related to the current version of the game.

<br>

## Hotkeys
Several actions in the game can be triggered using a hotkey. See below for a complete list of active hotkeys:

**Description** | **Area** | **Hotkey**
--------------- | -------- | ----------
**Restart Level** | Game | <kbd>F2</kbd>
**Show 'Level Select'** | Game, About | <kbd>F3</kbd>
**Save Screenshot** | Game | <kbd>F12</kbd>
**Load Previous Level** | Game | <kbd>PgUp</kbd>
**Load Next Level** | Game | <kbd>PgDn</kbd>
**Hide Screen** | Game | <kbd>Esc</kbd>
**Move Up** | Game | <kbd>&#8593;</kbd>, <kbd>W</kbd>, <kbd>LMouse</kbd>
**Move Left** | Game | <kbd>&#8592;</kbd>, <kbd>A</kbd>, <kbd>LMouse</kbd>
**Move Down** | Game | <kbd>&#8595;</kbd>, <kbd>S</kbd>, <kbd>LMouse</kbd>
**Move Right** | Game | <kbd>&#8594;</kbd>, <kbd>D</kbd>, <kbd>LMouse</kbd>
**Exit Game** | Game, Level Select, About Bulldozer | <kbd>Alt</kbd>+<kbd>F4</kbd>
**Minimize Game** | Game, Level Select, About Bulldozer | <kbd>Space</kbd>
**Default Action** | About Bulldozer, Level Select | <kbd>Enter</kbd>
**Show 'About Bulldozer'** | Game, Level Select | <kbd>F1</kbd>
**Select Previous Level** | Level Select | <kbd>&#8593;</kbd>, <kbd>&#8592;</kbd>
**Select Next Level** | Level Select | <kbd>&#8595;</kbd>, <kbd>&#8594;</kbd>
**Select Previous Level (x5)** | Level Select | <kbd>PgUp</kbd>
**Select Next Level (x5)** | Level Select | <kbd>PgDn</kbd>
**Select First Level** | Level Select | <kbd>Home</kbd>
**Select Last Level** | Level Select | <kbd>End</kbd>
**Load Selected Level** | Level Select | <kbd>Enter</kbd>
