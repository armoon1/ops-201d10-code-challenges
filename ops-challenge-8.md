@echo off 
::this command turns off each command in the batch file and make the script run without displaying the command itself.

setlocal enabledelayedexpansion 
::this command enables delayed variable expantion which is used to evaluate variables at expantion time. It's very useful while working with variables that are inside loops or code blocks.

set /p sourcePath=Enter the source folder path: 
::this command prompts the user to enter to the source folther path and assign input to the variable "sorcePath"

set /p destinationPath=Enter the destination folder path: 
::this line prompts the user to enter the destination foorlder path and assign the input to the variable "destinationPath"

if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)	
:: this conditional statement checks if the source folder specified by the user does not exist. If so, it  displays an error and exit the script using the "goto :eof" command and goes to the end of the script ":end"

if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)
:: this conditional statement checks if the destination folder specified by the user does not exist. If so, it  displays an error and exit the script using the "goto :eof" 

robocopy "!sourcePath!" "!destinationPath!" /E
:: this line uses robocopy utility to copy files and directories from the source folder to destination folder. /E switch copies subordinaries, including empty ones.

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
:: this conditional statment checks the error level returned by the previous robocop command which returns error level, and value of 8 or higher indicates that error occured during the copy operation. if there are errors level 8 or higher, it displays an error mesasage . otherwise, it display a success message.

:end
endlocal
:: these lines define a label, "end" to mark end of the script and "endlocal" end the local environment and make sure these changes don't affect global environment.
