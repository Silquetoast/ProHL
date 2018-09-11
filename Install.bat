@echo off
copy "%cd%\contents\Half-Life.lnk" "%userprofile%\desktop"
cls
echo Working...
xcopy "%cd%\contents" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life" /E /Y /Q
cls

echo.
echo Congratulations!
echo.
echo Crosshairs, player models, and the ProHL config file have been added to your game. You'll have new binds 
echo the next time you launch the game. When this window closes, prohl.cfg will open in Notepad. Take that
echo opportunity to change some things in the [Change to Your Liking] tab. Review your new weapon binds while
echo you're there, too. They're much different than the default binds.
echo.

pause

start notepad.exe "%cd%\contents\valve\prohl.cfg"