#!/bin/bash

# Run Godot engine on the project

## Check Godot.exe is available
if ! command -v godot; then
    echo "godot" application is missing. Ensure it is installed and placed in your PATH.
    exit 1
fi

## Reimport assets
cd Tuto
rm -fr .godot
godot -e --headless --quit

## Launch the game
godot --rendering-driver opengl3
