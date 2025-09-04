#! /bin/bash
#start swww
WALLPAPERS_DIR=~/pictures/wallpapers/
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | grep hq | shuf -n 1)
swww img "$WALLPAPER" --transition-type outer
wal -i "$WALLPAPER" --cols16 --backend wal --saturate 0.3 -n -b 000000

#  - modern_colorthief
#  - okthief
#  - colorthief
#  - haishoku
#  - colorz
#  - wal
#  - fast_colorthief
