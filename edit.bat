:: Open Godot editor on the project

ECHO OFF

:: Check Godot.exe is available
where godot
if ERRORLEVEL 1 (
    ECHO "godot" application is missing. Ensure it is installed and placed in your PATH.
    PAUSE
    EXIT /B
)

:: Launch the editor
CD Tuto
godot -e