#!/usr/bin/env bash

## Author : Devojyoti Nandi

## script to identify resolutions larger than 1360x768. Most commonly used are 1360x768 and 1920x1080

s_resolution="$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')"

echo $s_resolution

if [ "$s_resolution" == "1366x768" ] || [ "$s_resolution" == "1360x768" ]; then
    rofi -no-lazy-grab -show drun -theme launchers/"slingshot".rasi
else
    rofi -no-lazy-grab -show drun -theme launchers/"slingshot_large".rasi
fi
