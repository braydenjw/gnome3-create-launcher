#!/bin/bash

# Get user input
echo "Name of launcher file:"
read FILE
echo "Name of launcher app:"
read NAME
echo "Comment:"
read COMMENT
echo "Execution path:"
read EXECPATH
echo "Icon path:"
read ICONPATH
echo "Categories (seperated by ;):"
read CATEGORIES

# Write to file
FILEPATH=~/.local/share/applications/$FILE.desktop
echo "[Desktop Entry]" > $FILEPATH
echo "Name=$NAME" >> $FILEPATH
echo "Comment=$COMMENT" >> $FILEPATH
echo "Exec=$EXECPATH" >> $FILEPATH
echo "Icon=$ICONPATH" >> $FILEPATH
echo "Terminal=false" >> $FILEPATH
echo "Type=Application" >> $FILEPATH
echo "Categories=$CATEGORIES" >> $FILEPATH
