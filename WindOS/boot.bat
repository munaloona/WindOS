@echo off
cd /d %~dp0
set user=%USERNAME%
color 0F
:start
cls
powershell -Command "Write-Host -ForegroundColor Yellow 'Create an account (Create)'"
powershell -Command "Write-Host -ForegroundColor Yellow 'Log into an account (Login)'"
echo.
set /p input= Pick: 
goto %input%

:create
cls
cd users
mkdir %user%
cd %user%
mkdir notes
set /p password= What would you like your password to be?: 
echo %password% > password.dat
pause
cd..
cd..
goto start

:login
set /p password= Type in your password: 

for /f "Delims=" %%a in (users\%username%\password.dat) do (

set CHEQ=%%a

)

if %password%==%CHEQ% goto desktop
powershell -Command "Write-Host -ForegroundColor Red -BackgroundColor Black 'Error: INCORRECT PASSWORD.'"
pause
goto start

:desktop
start desktop.bat