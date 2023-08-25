:: Run godot engine on source

ECHO OFF

:: Check Godot.exe availaible
where Godot
if ERRORLEVEL 1 (
    ECHO Godot application is missing. Ensure it is installed and placed in your PATH.
    EXIT /B
)

:: Launch the editor
CD Tuto
Godot -e