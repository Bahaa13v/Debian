#!/bin/bash

echo "new_window pixel 0" >> /home/bahaa/.config/i3/config
echo "new_float pixel 0" >> /home/bahaa/.config/i3/config

echo "gaps inner 2" >> /home/bahaa/.config/i3/config

echo "exec --no-startup-id setxkbmap -layout \"fr,ara\" -option \"grp:alt_shift_toggle" >> /home/bahaa/.config/i3/config

sed -i 's/font pango:monospace 8/font pango:Noto Sans 12/' /home/bahaa/.config/i3/config
sed -i 's/bindsym $mod+Return exec i3-sensible-terminal/bindsym $mod+Return exec alacritty/' /home/bahaa/.config/i3/config
echo "bindsym $mod+z exec google-chrome-stable" >> /home/bahaa/.config/i3/config
sed -i 's/bindsym $mod+d exec --no-startup-id dmenu_run/bindsym $mod+d exec --no-startup-id dmenu_run -fn "Noto Sans"/' /home/bahaa/.config/i3/config
sed -i 's/exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork/#exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork/' config

echo "bar {" >> /home/bahaa/.config/i3/config
echo "   position top" >> /home/bahaa/.config/i3/config
echo "   status_command i3status" >> /home/bahaa/.config/i3/config
echo "   font pango:Noto Sans 10" >> /home/bahaa/.config/i3/config
echo "   colors {" >> /home/bahaa/.config/i3/config
echo "       background #1d1f21" >> /home/bahaa/.config/i3/config
echo "       statusline #c5c8c6" >> /home/bahaa/.config/i3/config
echo "       separator  #666666" >> /home/bahaa/.config/i3/config
echo " " >> /home/bahaa/.config/i3/config
echo "       # Workspace colors" >> /home/bahaa/.config/i3/config
echo "       focused_workspace  #282a2e #81a2be #ffffff" >> /home/bahaa/.config/i3/config
echo "       active_workspace   #1d1f21 #373b41 #c5c8c6" >> /home/bahaa/.config/i3/config
echo "       inactive_workspace #1d1f21 #282a2e #c5c8c6" >> /home/bahaa/.config/i3/config
echo "       urgent_workspace   #1d1f21 #cc6666 #ffffff" >> /home/bahaa/.config/i3/config
echo "    }" >> /home/bahaa/.config/i3/config
echo "}" >> /home/bahaa/.config/i3/config

