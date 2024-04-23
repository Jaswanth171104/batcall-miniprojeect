@echo off

REM Specify the path to your file
set "file_path=D:\batcall\saved_files\commitmessage.txt"

REM Check if the file exists
if not exist "%file_path%" (
    echo File does not exist.
    exit /b
)

REM Iterate over each line in the file and print it
echo log history:
for /f "usebackq tokens=*" %%a in ("%file_path%") do (
    echo %%a
)
