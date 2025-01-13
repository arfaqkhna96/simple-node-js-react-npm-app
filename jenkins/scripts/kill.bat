@echo off
echo The following command terminates the "npm start" process using its PID
echo (written to ".pidfile"), all of which were conducted when "deliver.bat"
echo was executed.

REM Enable command echoing
echo on

REM Terminate the process using the PID from ".pidfile"
for /f "tokens=* usebackq" %%x in (".pidfile") do taskkill /PID %%x /F

