#!/bin/sh
# settings applied at login


# sleep before running script
sleep 5

# display
xrandr --output HDMI-0 --mode 1920x1080 --pos 0x360 --rotate normal --rate 60
xrandr --output DP-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --rate 144

# Display Power Management Signaling
xset s off -dpms

# noisetorch
# sleep 5 && noisetorch -i 'alsa_input.usb-CMEDIA_Q9-1-00.mono-fallback' &

# keyboard - eurkey and escape bound to capslock
sxhkd &
# setxkbmap eu
# xmodmap -e 'clear Lock'
# sleep 3
# xmodmap -e 'keycode 66 = Escape'
