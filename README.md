
# Bulldozer

## Index
- [Introduction](#introduction)
- [Download](#download)
- [Screenshots](#screenshots)
- [Game Objective](#game-objective)
- [Movement](#movement)
- [Completing a Level](#completing-a-level)
- [Hints](#hints)
- [Menubar](#menubar)
	- [Game](#game)
		- [Restart Level](#restart-level)
		- [Level Select](#level-select)
		- [Undo Last Move](#undo-last-move)
		- [Exit](#exit)
	- [View](#view)
		- [Layered Tiles](#layered-tiles)
	- [Options](#options)
		- [Background Color](#background-color)
		- [Theme](#theme)
		- [Sound Effects](#sound-effects)
		- [Level Number](#level-number)
		- [Unlimited Undo](#unlimited-undo)
		- [Mouse Movement](#mouse-movement)
		- [Titlebar Progress](#titlebar-progress)
		- [Taskbar Progress](#taskbar-progress)
	- [Help](#help)
		- [Website...](#website)
		- [Documentation...](#documentation)
		- [About Bulldozer](#about-bulldozer)
- [Custom Themes](#custom-themes)
- [Hotkeys](#hotkeys)

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Introduction
Bulldozer, developed for  [AutoHotkey](http://www.autohotkey.com/) by [Weston Campbell](mailto:westoncampbell@gmail.com?Subject=BulldozerAHK),  is a recreation of the original Bulldozer game series created by John 'FlyMan' Hattan ([The Code Zone](https://www.thecodezone.com/)).

<br>

Bulldozer 1 first appeared in 1994 on the CD-ROM game compilation "[24 Games for Windows 95](https://archive.org/details/24GamesForWindows95)" developed by [The Code Zone](https://www.thecodezone.com/) for Expert Software, Inc. Bulldozer 2 became available in 2000 on "Arcade Magic", also developed for Expert Software, Inc. Bulldozer 1 & Bulldozer 2 were re-released in 2003 on "Blazing Games", a compilation of fifty games developed for Cosmi Europe, Ltd. Bulldozer 3 was completed in 2002, but remained unavailable until the 2008 release of [Bulldozer](https://www.thecodezone.com/game/bulldozer.html) which included all 180 levels from the Bulldozer trilogy. The 2008 version was created using Adobe Flash and is available on a variety of desktop and mobile platforms. Bulldozer is a variation of the popular [Sokoban](https://en.wikipedia.org/wiki/Sokoban) puzzle game.

<br>

All credit goes to John Hattan for the original idea of the Bulldozer game series. This project was an exercise in GDI+ and string manipulation, and is intended to pay tribute to the game I played in my youth.

<br>

[![Bulldozer](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/bulldozer-push-rock.png)](#introduction)

<br>

**Website Links:**

[![Github](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-github.png)](#introduction) Github: [https://github.com/westoncampbell/BulldozerAHK](https://github.com/westoncampbell/BulldozerAHK)

[![AutoHotkey](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-ahk.png)](#introduction) AutoHotkey: [https://www.autohotkey.com/boards/viewtopic.php?f=6&t=50139](https://www.autohotkey.com/boards/viewtopic.php?f=6&t=50139)

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Download
**Latest Release**: [Revision 18 (2019-05-09)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Releases/Bulldozer%20-%20Revision%2018%20(2019-05-09).ahk)
<br>

All releases can be found on the [BulldozerAHK Github repository](https://github.com/westoncampbell/BulldozerAHK/tree/master/Releases).

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Screenshots
<a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_001_2019-04-30.png" title="Screenshot_001_2019-04-30.png"><img alt="Screenshot_001_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_001_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_002_2019-04-30.png" title="Screenshot_002_2019-04-30.png"><img alt="Screenshot_002_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_002_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_003_2019-04-30.png" title="Screenshot_003_2019-04-30.png"><img alt="Screenshot_003_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_003_2019-04-30.png" width="48%"></a>  <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_004_2019-04-30.png" title="Screenshot_004_2019-04-30.png"><img alt="Screenshot_004_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_004_2019-04-30.png" width="48%"></a>  <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_005_2019-04-30.png" title="Screenshot_005_2019-04-30.png"><img alt="Screenshot_005_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_005_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_006_2019-04-30.png" title="Screenshot_006_2019-04-30.png"><img alt="Screenshot_006_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_006_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_007_2019-04-30.png" title="Screenshot_007_2019-04-30.png"><img alt="Screenshot_007_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_007_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_008_2019-04-30.png" title="Screenshot_008_2019-04-30.png"><img alt="Screenshot_008_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_008_2019-04-30.png" width="48%"></a> <a href="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_009_2019-04-30.png" title="Screenshot_009_2019-04-30.png"><img alt="Screenshot_009_2019-04-30.png" src="https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Screenshots/Screenshot_009_2019-04-30.png" width="48%"></a>

[More...](https://github.com/westoncampbell/BulldozerAHK/tree/master/Screenshots)

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Game Objective
The object of Bulldozer is to push each rock on to a target.

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Movement
Move the bulldozer using the arrow keys, or WASD keys, on your keyboard. The bulldozer can move horizontally and vertically.

[![Fig 1](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig1.png)](#movement)

The bulldozer will not move if one of the following three conditions are true:

**(1) You are trying to push multiple rocks...**

[![Fig 2](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig2.png)](#movement)

> You can only push one rock at a time!

<br>

**(2) You are pushing against a wall. . .**

[![Fig 3](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig3.png)](#movement)

> The bulldozer can't move through walls.

<br>

**(3) You are pushing a rock against a wall. . .**

[![Fig 4](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig4.png)](#movement)

> Be careful about pushing rocks against walls. The rock might become stuck, and you'll be forced to restart the level.

[![Fig 5](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig5.png)](#movement)

> However, it may still be possible to reach the target depending on its position.

[![Fig 6](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/Fig6.png)](#movement)

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Completing a Level
Progress to the next level by moving all of the rocks on to the targets. Each level will have the same number of rocks as targets.

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Hints
Carefully plan your moves. It's easy to get stuck which may force you to restart the level.

A rock is not locked into position once it is placed on a target.

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

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
> 
> Depending on the custom theme, "Layered Tiles" may improve the appearance of the tiles.

<br>

### Options
#### Background Color
> Set the color of the background behind the game objects by choosing from one of the 16 presets or using the custom color picker.

#### Theme
> Change the appearance of the game objects by choosing the "Color" or "Monochrome" options, or using a [custom theme](#custom-themes) by selecting an external PNG image file.

#### Sound Effects
> Toggle sound effects.

#### Level Number
> Toggle the display of the current level number overlayed on the top-right of the game screen.

#### Unlimited Undo
> Toggle the allowance of multiple consecutive undo actions.

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

#### Documentation...
> Open the game documentation file.

#### About Bulldozer
> Open the 'About' screen, displaying information related to the current version of the game.

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

## Custom Themes

Bulldozer supports loading custom themes from an external 480x32 PNG image file.

Each 32x32 region represents one of the 15 tiles in the game.

[![Tilemap](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/custom-theme.png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/custom-theme.png)

Use an image editor to create a new theme, or choose from any of the available themes from the [Bulldozer website](https://github.com/westoncampbell/BulldozerAHK/tree/master/Themes).

<br>

**8-bit Fantasy** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://opengameart.org/content/32x32-fantasy-tileset)]

<kbd>[![8-bit Fantasy (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/8-bit%20Fantasy%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/8-bit%20Fantasy%20(TheDewd).png)</kbd>

<br>

**Ahkban** ([SpeedMaster](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=73929))

<kbd>[![Ahkban (SpeedMaster)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Ahkban%20(SpeedMaster).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Ahkban%20(SpeedMaster).png)</kbd>

<br>

**Bulldozer Color** (Bulldozer 1 - Original)

<kbd>[![Bulldozer Color (Bulldozer 1 - Original)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20(Original).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20(Original).png)</kbd>

<br>

**Bulldozer Monochrome** (Bulldozer 1 - Original)

<kbd>[![Bulldozer Monochrome (Bulldozer 1 - Original)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20(Original).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20(Original).png)</kbd>

<br>

**Bulldozer Monochrome** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166))

<kbd>[![Bulldozer Monochrome (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20(TheDewd).png)</kbd>

<br>

**Chip's Challenge** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](http://chipschallenge.wikia.com/wiki/Tile)]

<kbd>[![Chip's Challenge (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Chip's%20Challenge%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Chip's%20Challenge%20(TheDewd).png)</kbd>

<br>

**Kid Icarus** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.vg-resource.com/thread-17625.html)]

<kbd>[![Kid Icarus (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kid%20Icarus%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kid%20Icarus%20(TheDewd).png)</kbd>

<br>

**Mario** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.spriters-resource.com/nes/supermariobros/)]

<kbd>[![Mario (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20(TheDewd).png)</kbd>

<br>

**Mario Bros.** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.spriters-resource.com/nes/supermariobros/)]

<kbd>[![Mario Bros. (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20Bros%20(TheDewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20Bros%20(TheDewd).png)</kbd>

<br>

**Mario Kart** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.spriters-resource.com/snes/smariokart/)]

<kbd>[![Mario Kart (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20Kart%20(The%20Dewd).png)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Mario%20Kart%20(The%20Dewd).png)</kbd>

<br>

**Bulldozer Monochrome Black** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166))

<kbd>[![Bulldozer Monochrome Black (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20Black%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20Black%20(TheDewd).png
)</kbd>

<br>

**Bulldozer Monochrome Black (Inverted)** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166))

<kbd>[![Bulldozer Monochrome Black (Inverted) (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20Black%20Inverted%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20Black%20Inverted%20(TheDewd).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Bulldozer Monochrome White** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166))

<kbd>[![Bulldozer Monochrome White (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20White%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Monochrome%20White%20(TheDewd).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Neko** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://webneko.net/)]

<kbd>[![Neko (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%20(TheDewd).png
)</kbd>

<br>

**Neon Rainbow** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166))

<kbd>[![Neon Rainbow (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neon%20Rainbow%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neon%20Rainbow%20(TheDewd).png
)</kbd>

<br>

**Racecar 1** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://raw.githubusercontent.com/photonstorm/phaser-examples/master/examples/assets/tilemaps/tiles/gridtiles.png?_sm_au_=iVVZcSkvr7D15v7H)]

<kbd>[![Racecar 1 (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Racecar%201%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Racecar%201%20(TheDewd).png
)</kbd>

<br>

**Racecar 2** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://raw.githubusercontent.com/photonstorm/phaser-examples/master/examples/assets/tilemaps/tiles/gridtiles.png?_sm_au_=iVVZcSkvr7D15v7H)]

<kbd>[![Racecar 2 (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Racecar%202%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Racecar%202%20(TheDewd).png
)</kbd>

<br>

**Tanks** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.widgetworx.com/spritelib/)]

<kbd>[![Tanks (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Tanks%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Tanks%20(TheDewd).png
)</kbd>

<br>

**Zelda** ([Weston Campbell](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=56166)) [[Resource](https://www.spriters-resource.com/nes/legendofzelda/)]

<kbd>[![Zelda (Weston Campbell)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Zelda%20(TheDewd).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Zelda%20(TheDewd).png
)</kbd>

<br>

**Angry Birds - Bomb** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Bomb (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Bomb%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Bomb%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Bubbles** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Bubbles (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Bubbles%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Bubbles%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Chuck** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Chuck (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Chuck%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Chuck%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Hal** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Hal (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Hal%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Hal%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Ice-Bird** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Ice-Bird (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Ice-Bird%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Ice-Bird%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Mathilda** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Mathilda (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Mathilda%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Mathilda%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Red** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Red (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Red%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Red%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Silver** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Silver (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Silver%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Silver%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Stella** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Stella (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Stella%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Stella%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - Terence** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - Terence (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Terence%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20Terence%20(Drachenbauer).png
)</kbd>

<br>

**Angry Birds - The Blues** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Angry Birds - The Blues (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20The%20Blues%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Angry%20Birds%20-%20The%20Blues%20(Drachenbauer).png
)</kbd>

<br>

**Classic Sokoban** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092)) [![Use Layered Tiles](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/LayeredTiles16.png)](#layered-tiles) Uses Layered Tiles

<kbd>[![Classic Sokoban (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Classic%20Sokoban%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Classic%20Sokoban%20(Drachenbauer).png
)</kbd>

<br>

**Butterfly** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Butterfly (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Butterfly%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Butterfly%20(Drachenbauer).png
)</kbd>

<br>

**Kite 1** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Kite 1 (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%201%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%201%20(Drachenbauer).png
)</kbd>

<br>

**Kite 2** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Kite 2 (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%202%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%202%20(Drachenbauer).png
)</kbd>

<br>

**Kite 3** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Kite 3 (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%203%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Kite%203%20(Drachenbauer).png
)</kbd>

<br>

**Abstrakt** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20(Drachenbauer).png
)</kbd>

<br>

**Abstrakt Monochrome** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20(Drachenbauer).png
)</kbd>

<br>

**Abstrakt Monochrome [Inverted]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome [Inverted] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BInverted%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BInverted%5D%20(Drachenbauer).png
)</kbd>

<br>

**Abstrakt Monochrome [Transparent 1]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome [Transparent 1] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%201%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%201%5D%20(Drachenbauer).png
)</kbd>

<br>

**Abstrakt Monochrome [Transparent 2]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome [Transparent 2] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%202%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%202%5D%20(Drachenbauer).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Abstrakt Monochrome [Transparent 3]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome [Transparent 3] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%203%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%203%5D%20(Drachenbauer).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Abstrakt Monochrome [Transparent 4]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Abstrakt Monochrome [Transparent 4] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%204%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Abstrakt%20Monochrome%20%5BTransparent%204%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Yellow 1]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Yellow 1] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%201%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%201%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Yellow 2]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Yellow 2] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%202%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%202%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Yellow 3]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Yellow 3] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%203%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BYellow%203%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Blue 1]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Blue 1] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%201%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%201%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Blue 2]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Blue 2] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%202%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%202%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Color [Blue 3]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Color [Blue 3] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%203%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Color%20%5BBlue%203%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Monochrome [Modified]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Monochrome [Modified-Inverted]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified-Inverted] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Inverted%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Inverted%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Monochrome [Modified-Transparent 1]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified-Transparent 1] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%201%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%201%5D%20(Drachenbauer).png
)</kbd>

<br>

**Bulldozer Monochrome [Modified-Transparent 2]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified-Transparent 2] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%202%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%202%5D%20(Drachenbauer).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Bulldozer Monochrome [Modified-Transparent 3]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified-Transparent 3] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%203%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%203%5D%20(Drachenbauer).png
)</kbd>

**Difficult to view on white webpage background color*

<br>

**Bulldozer Monochrome [Modified-Transparent 4]** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Bulldozer Monochrome [Modified-Transparent 4] (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%204%5D%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Bulldozer%20Monochrome%20%5BModified-Transparent%204%5D%20(Drachenbauer).png
)</kbd>

<br>

**Neko** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Neko (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%20(Drachenbauer).png
)</kbd>

<br>

**Neko 2** ([Drachenbauer](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=112092))

<kbd>[![Neko 2 (Drachenbauer)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%202%20(Drachenbauer).png
)](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/Themes/Neko%202%20(Drachenbauer).png
)</kbd>

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)

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
**Move Up** | Game | <kbd>&#8593;</kbd>, <kbd>W</kbd>, <kbd>Left Mouse</kbd>
**Move Left** | Game | <kbd>&#8592;</kbd>, <kbd>A</kbd>, <kbd>Left Mouse</kbd>
**Move Down** | Game | <kbd>&#8595;</kbd>, <kbd>S</kbd>, <kbd>Left Mouse</kbd>
**Move Right** | Game | <kbd>&#8594;</kbd>, <kbd>D</kbd>, <kbd>Left Mouse</kbd>
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

<br>

[![arrow-up](https://raw.githubusercontent.com/westoncampbell/BulldozerAHK/master/BulldozerDocs/images/icon-up.png)](#bulldozer)
