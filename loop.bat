@echo off
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel." & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > nul
goto check
