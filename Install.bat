@echo off
copy Half-Life.lnk "%userprofile%\desktop"
cls
echo Working...
xcopy %cd% "C:\Program Files (x86)\Steam\steamapps\common\Half-Life" /E /Y /Q
cls
echo Crosshairs, player models, and the ProHL config file have been added to your Half-Life installation file. 
echo You'll have new binds the next time you launch the game. Consider editing the [Change to Your Liking] tab 
echo by opening prohl.cfg with notepad in your Half-Life folder. 
echo.
echo You'll then want to look over the [Binds] tab to get familliar with your new binds.
echo.

pause