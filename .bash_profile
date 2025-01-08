# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	dbus-run-session slstatus -s | dwl -s .bin/dwlStart
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
        gamescope -e --adaptive-sync --expose-wayland -- steam -tenfoot -steamdeck
fi

if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

