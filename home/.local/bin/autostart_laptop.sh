#!/bin/sh
# settings applied at login


# sleep before running script
sleep 5

# display
xrandr --output eDP-1 --primary --mode 1920x1280 --rotate normal --rate 60

# Display Power Management Signaling
# disables screensaver and dpms
# xset s off -dpms

# noisetorch
# sleep 5 && noisetorch -i 'alsa_input.usb-CMEDIA_Q9-1-00.mono-fallback' &

# keyboard - eurkey and escape bound to capslock
xset r rate 300 50
sxhkd &
# setxkbmap eu
# xmodmap -e 'clear Lock'
# sleep 3
# xmodmap -e 'keycode 66 = Escape'

# networkmanager
rfkill unblock all # needed because rfkill softblocks after suspend 
