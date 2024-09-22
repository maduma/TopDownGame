:: Open Godot editor on the project

ECHO OFF

:: Check Godot.exe is available
where godot
if ERRORLEVEL 1 (
    ECHO "godot" application is missing. Ensure it is installed and placed in your PATH.
    PAUSE
    EXIT /B
)

:: Check Godot version
set version=4
godot --version | findstr /B %version%
if ERRORLEVEL 1 (
    ECHO godot version "%version%" needed.
    PAUSE
    EXIT /B
)

:: Launch the editor
CD Tuto
godot --rendering-driver opengl3 -e