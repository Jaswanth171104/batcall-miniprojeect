@echo off
setlocal
call:git_status
REM Function to simulate 'git status'
:git_status
  echo "On branch main"
  echo "Changes not staged for commit:"
  for /f "tokens=*" %%F in ('dir /b /a-d') do (
    REM Check if the file is modified
    fc "%%F" NUL >NUL 2>NUL
    if errorlevel 1 (
      echo "    modified:   %%F"
    )
  )
  echo "Untracked files:"
  for /f "tokens=*" %%F in ('dir /b /a-d') do (
    REM Check if the file is untracked
    if not exist ".git\%%F" (
      echo "    %%F"
    )
  )
exit /b




REM Example usage of the function


REM End of script