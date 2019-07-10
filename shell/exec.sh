#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
# Set As Wallpaper
rm -rf $HOME/.cache/SetAsWallpaper/*
# Copy selected file to temp folder "$HOME/.cache/SetAsWallpaper"
#while [ $# -gt 0 ]; do
#    ORIGINALITEM="$1"
#    DUPLICATEITEM="${ORIGINALITEM} (copy)"
#    cp -r "$ORIGINALITEM" "$DUPLICATEITEM" $HOME/.cache/SetAsWallpaper/
#    shift
#done
    ORIGINALITEM="$1"    
    DUPLICATEITEM="${ORIGINALITEM} (copy)"
    cp -r "$ORIGINALITEM" "$DUPLICATEITEM" $HOME/.cache/SetAsWallpaper/
    mv -f $HOME/.cache/SetAsWallpaper/* $HOME/.cache/SetAsWallpaper/huwallpaper.jpg
# Make your wallpaper blurry
    gsettings set org.gnome.desktop.background picture-uri "file:///$HOME/.cache/SetAsWallpaper/huwallpaper.jpg"
    pkexec convert -resize 1440 -quality 100 -brightness-contrast -10x-15 -blur 0x30 $HOME/.cache/SetAsWallpaper/* /usr/share/backgrounds/gdmlock.jpg
sleep 3
    gsettings set org.gnome.desktop.screensaver picture-uri "file:///usr/share/backgrounds/gdmlock.jpg"
# Enjoy!
exit 1
