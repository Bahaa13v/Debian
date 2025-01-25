#!/bin/bash

current_brightness=$(xrandr --verbose | grep -i brightness | awk '{print $2}')

new_brightness=$(echo "$current_brightness - 0.1" | bc)

if (( $(echo "$new_brightness > 1.0" | bc -l) )); then
    new_brightness=1.0
fi

xrandr --output LVDS-1 --brightness $new_brightness
