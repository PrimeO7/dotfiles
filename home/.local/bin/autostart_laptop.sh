#!/bin/sh
# settings applied at login


# sleep before running script
sleep 5

# display
xrandr --output eDP-1 --primary --mode 1920x1280 --rotate normal --rate 60

# Display Power Management Signaling
# xset s off -dpms

# noisetorch
# sleep 5 && noisetorch -i 'alsa_input.usb-CMEDIA_Q9-1-00.mono-fallback' &

# keyboard - eurkey and escape bound to capslock
sxhkd &
# setxkbmap eu
# xmodmap -e 'clear Lock'
# sleep 3
# xmodmap -e 'keycode 66 = Escape'
