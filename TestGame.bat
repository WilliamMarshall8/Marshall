@ECHO OFF
TITLE TestGame
MODE 60,20     
COLOR 1F       

ECHO IMPORTANT: Free under GNU GPL license.
ECHO.
PAUSE
CLS

:NAME
SET /P NAME="Type your name, please. "
CLS
ECHO.
IF '%NAME%'=='' (
	ECHO Welcome, GUEST.
) ELSE (
	ECHO Welcome, %NAME%.
) 

:INTERFACE
CLS 
IF '%NAME%'=='' (
	ECHO Welcome, GUEST.
) ELSE (
	ECHO Welcome, %NAME%.
) 

ECHO.
ECHO -TestGame- 
ECHO.
ECHO Type the number of the game and press Enter. 
ECHO 0. Game A
ECHO 1. Game B
ECHO 2. Change name.
ECHO 3. Read LICENSE.TXT
ECHO 4. EXIT
ECHO.
SET /P CH="TYPE>" 

IF '%CH%' EQU '0' GOTO A
IF '%CH%' EQU '1' GOTO B
IF '%CH%' EQU '2' GOTO RETURN
IF '%CH%' EQU '3' GOTO LICENSE
IF '%CH%' EQU '4' EXIT
IF '%CH%' GTR 4 GOTO ERROR
IF '%CH%' LSS 0 GOTO ERROR

:A 
CLS
ECHO Initializing Game A...
CALL "C:\TestGameSourceByWilliamMarshall\Games-Folder\GameA.BAT"
PAUSE
CLS
GOTO INTERFACE

:B
CLS
ECHO Initializing Game B...
CALL "C:\TestGameSourceByWilliamMarshall\Games-Folder\GameB.BAT"
PAUSE
CLS
GOTO INTERFACE

:RETURN 
CLS
GOTO NAME

:LICENSE
CALL C:\TestGameSourceByWilliamMarshall\LICENSE.TXT"
PAUSE 
CLS
GOTO INTERFACE

:ERROR 
ECHO Only 0, 1, 2, 3 or 4, try again...
PAUSE
CLS
GOTO INTERFACE

REM 02.26.2020
REM Developed by William Marshall.