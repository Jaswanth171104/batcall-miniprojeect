@echo off

set "directory=D:\batcall"
set /p "commit_message=Commit: %datetime% - Your filename and commit message here:"


for %%F in ("%directory%\*.txt") do (
   set filename=%%F
 
	move "%%F" "%"D:\batcall\saved_files"%"
	echo %commit_message% > "D:\batcall\saved_files\commitmessage.txt"
	
	

    REM You can perform operations on each file here
)
