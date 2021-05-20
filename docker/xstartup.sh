#!/bin/sh
/usr/bin/autocutsel -s CLIPBOARD -fork
xrdb $HOME/.Xresources
xsetroot -solid grey
#x-terminal-emulator -geometry  80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
#x-window-manager &
# Fix to make GNOME work
export XKL_XMODMAP_DISABLE=1
/etc/X11/Xsession  &
x-terminal-emulator -e "python3 /app/main.py"