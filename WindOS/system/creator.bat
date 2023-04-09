@echo off
mode 91,41
color 8F
cd ..
cd users\%username%\notes
:start
cls
powershell -Command "Write-Host -ForegroundColor Yellow 'Create a file (Create)'
echo Edit a file (Edit)
echo Change a file type (Changefiletype)
echo Make a
set /p input= What would you like to do?: 
goto %input%


:create
cls
set /p filename= What would you like to name your file?:
echo . > %filename%.txt
echo %filename%.txt created in users\%username%\notes
pause
goto start

:edit
cls
set /p otherfilename= What file would you like to edit? (add .txt to the end): 
goto edit2
:edit2
cls
echo File: %otherfilename%
echo.
echo Contents of %otherfilename%:
type %otherfilename%
set /p input=
echo %input% >> %otherfilename%
goto edit2

:Changefiletype
cls
set /p filetochangetype= What file would you like to change the type of? (add .txt to the end): 
goto cft2
:cft2
cls
echo File: %filetochangetype%
echo List of valid types:
echo .bat
echo .yml
echo .txt
set /p typetochangeto= Which file type would you like to change your file to? (Example: %filetochangetype%.bat): 
goto %typetochangeto%

:.bat
cd ..
cd users\%username%\notes
rename %filetochangetype% %typetochangeto%