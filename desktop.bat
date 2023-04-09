@echo off
title Desktop
:start
color 03
cls
powershell -Command "Write-Host -ForegroundColor Blue '/################################\'"
powershell -Command "Write-Host -ForegroundColor Blue '%###                          ###+'"
powershell -Command "Write-Host -ForegroundColor Blue '$##                            ##@'"
powershell -Command "Write-Host -ForegroundColor Blue '-#            NewOS             #-'"
powershell -Command "Write-Host -ForegroundColor Blue '@##                            ##$'"
powershell -Command "Write-Host -ForegroundColor Blue '+###                          ###%'"
powershell -Command "Write-Host -ForegroundColor Blue '\################################/'"
echo.
echo        Welcome, %user%!
echo.
powershell -Command "Write-Host -ForegroundColor Yellow 'About New OS (About)'"
powershell -Command "Write-Host -ForegroundColor Yellow 'App list (Apps)'"
powershell -Command "Write-Host -ForegroundColor Yellow 'Switch user (Switch)'"
echo.
set /p input= Pick: 
goto %input%

:About
cls

echo       /########################################\
echo       !##### About WindOS                 #####!
echo       +########################################+
echo       _### Build: Beta 1.0.0                ###_
echo       )##                                    ##)
echo       (#                                      #(
echo       *                                        *
echo       8 Press any key to go back.              &
echo       ^----------------------------------------^
echo       % Changelog:                             %
echo       $# No Changes                           #$
echo       ###                                    ###
echo       @###                                  ###@
echo       !#####                              #####!
echo       \########################################/
pause >nul
goto start


:Apps
cls
powershell -Command "Write-Host -ForegroundColor Yellow 'File Creator/Editor App (Creator)'"
set /p input= Pick: 
goto %input%

:Creator
cd system
start creator.bat
exit

:Switch
start boot.bat
exit