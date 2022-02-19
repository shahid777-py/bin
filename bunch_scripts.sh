#!/bin/bash

declare options=("Mousewheel")

# FILE=$(echo -e "${options[@]}" | dmenu -i  -fn "mono-14" -p "$1" -nb  "#1d1100"  -sb "#b5706e" -sf "#010101" -nf gray -p 'Run Scripts:')
FILE=$(echo -e "${options[@]}" | dmenu -i -fn "mono-14" -p "$1" -nb  "#1d1100"  -sb "#6fa695" -sf "#010101" -nf gray  -p 'Run Scripts:')

case "$FILE" in

	Mousewheel)
		exec mouse_wheel.sh
	;;
	*)
		exit 1
	;;
esac
$TERMINAL -e nvim "$FILE"
# alacritty -e nvim "$FILE"
