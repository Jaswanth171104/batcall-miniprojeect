@echo off
setlocal
call :git_add_simulator "jaswanth.txt"

REM Function to simulate 'git add'
:git_add_simulator
  REM Check if the file already exists in the staged files list
  findstr /i /c:"%~1" staged_files.txt >nul
  if errorlevel 1 (
    REM Add the file to the staged files list
    echo %~1 >> staged_files.txt
    echo "Added %~1"
  ) else (
    echo "File %~1 already added"
  )
exit /b

REM Example usage of the function

REM End of script