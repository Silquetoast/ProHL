@echo off
echo Working...
copy "%cd%\contents\Half-Life.lnk" "%userprofile%\desktop"
xcopy "%cd%\contents" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life" /E /Y /Q /C
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

cls
echo Opening the .cfg file...
start %cd%\contents\unix2dos.exe "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\valve\prohl.cfg"
timeout /t 5 /nobreak > NUL
start notepad.exe "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\valve\prohl.cfg"