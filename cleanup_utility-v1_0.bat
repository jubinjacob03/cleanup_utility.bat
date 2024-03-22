@echo off

echo.
echo ******************************************************
echo *                                                    *
echo *              Cleanup Utility v1.0                  *
echo *              Built by: Jubin Jacob                 *
echo *                                                    *
echo ******************************************************
echo.

timeout /t 3 >nul

echo Cleaning up temporary files of User and System...
del /q /f /s %TEMP%\*
del /q /f /s %SystemRoot%\Temp\*

echo Emptying Recycle Bin...
rd /s /q C:\$Recycle.bin

echo Removing temporary installation files...
del /q /f /s "C:\Windows\Installer\*.tmp"

echo Clearing Windows update cache...
del /q /f /s %SystemRoot%\SoftwareDistribution\Download\*

echo Cleaning up windows log files...
del /q /f /s %SystemRoot%\Logs\*
del /q /f /s %SystemRoot%\System32\LogFiles\*

echo Checking C disk for errors...
chkdsk C: /f /r

echo Defragmenting C disk...
defrag C: /U /V

echo Cleanup complete :)
pause

