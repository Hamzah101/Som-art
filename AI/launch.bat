@echo off

:ask
echo what program should i launch?
echo 1.chrome
echo 2.notepad
echo 3.explorer
echo 4.wmplayer
echo set ask = createobject("sapi.spvoice")> ask.vbs
echo ask.speak("what program should i launch")>> ask.vbs
start ask.vbs

:make

set /p "app=>"

if exist database\%app%.cmd goto run

if not exist database\%app%.cmd goto error


:run 
echo starting %app%
echo set hadal = createobject("sapi.spvoice")> hadal.vbs
echo hadal.speak("starting %app%")>> hadal.vbs
start hadal.vbs
start %app%

goto make

:error
cls
echo lama heli karo %app% you typed the name correctly
echo set error = createobject("sapi.spvoice")> error.vbs
echo error.speak("lama heli karo %app%, make sure you typed the name correctly ")>> error.vbs
start error.vbs

goto make
pause
