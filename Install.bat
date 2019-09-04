@echo off
echo Closing Half-Life...
taskkill /IM hl.exe

echo Backing up original files...
copy "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\valve\config.cfg" "%userprofile%\desktop"
ren "%userprofile%\desktop\config.cfg" backup.cfg

echo Installing...
copy "%cd%\contents\Half-Life.lnk" "%userprofile%\desktop"
xcopy "%cd%\contents" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life" /s /y
echo Cleaning up...
del "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\unix2dos.exe"
cls

echo.
echo Congratulations!
echo.
echo Crosshairs, player models, and the ProHL config file have been added to your game. You'll have new binds 
echo the next time you launch the game. When this window closes, prohl.cfg will open in Notepad. Take that
echo opportunity to change some things in the [Change to Your Liking] tab. Review your new weapon binds while
echo you're there, too. They're much different than the default binds.
echo.
echo Be sure to use the shortcut that was placed on your desktop to launch Half-Life from now on. If you don't,
echo rinput.exe wont launch and your mouse will feel less responsive in comparison. 
echo.
echo You may delete the package installer if you want
echo.
pause

cls
echo Opening the .cfg file...
start %cd%\contents\unix2dos.exe "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\valve\prohl.cfg"
timeout /t 5 /nobreak > NUL
start notepad.exe "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\valve\prohl.cfg"