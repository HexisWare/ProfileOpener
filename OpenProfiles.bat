@echo off
setlocal

:: Set the path to the Chrome executable (adjust if necessary)
set "chrome_path=C:\Program Files\Google\Chrome\Application\chrome.exe"

:: List all your profile directories here (add more as needed, and ensure they exist)
set "profiles=Default,Profile1,Profile2"

:: Open a separate Chrome window for each profile
for %%P in (%profiles%) do (
    start "" "%chrome_path%" --profile-directory="%%~P"
)

endlocal
