rem RInput
start rinput.exe hl.exe
rem Half-Life
cd ..
start hl.exe -high -noforceparams -noforcemaccel
del /A:H *.dat
TIMEOUT /t 10 /nobreak
cd ./rinput/