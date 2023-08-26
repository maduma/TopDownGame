:: Run Godot engine on the project

ECHO OFF

:: Check Godot.exe is available
where godot
if ERRORLEVEL 1 (
    ECHO "godot" application is missing. Ensure it is installed and placed in your PATH.
    PAUSE
    EXIT /B
)

:: Reimport assets
CD Tuto
RMDIR /S /Q .godot
godot -e --headless --quit 

:: Launch the game
godot --rendering-driver opengl3