#!/bin/sh

ANS="$(printf "ON\nOFF" | dmenu -i -fn "mono-14" -p "$1" -nb  "#1d1100"  -sb "#b5706e" -sf "#010101" -nf gray -p "Wifi:" )"

case $ANS in
	"ON"|$NULL)
		wifi on
		;;
	"OFF")
		wifi off
		;;
esac
