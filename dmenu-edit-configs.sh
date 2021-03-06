#!/bin/bash

declare options=("alacritty
bash
broot
bspwm
transmission
compton
doom.d/config.el
doom.d/init.el
dmenu
dunst
dwm
dwmblocks
emacs.d/init.el
snippets
fonts
herbstluftwm
i3
neovim
newsboat
mpv
xinitrc
polybar
picom
qtile
st
stumpwm
surf
xprofile
sxhkd
tabbed
termite
vifm
starship
vim
vimb
xmobar
xmonad
xresources
url
zsh
quit
ranger
qutebrowser
zathura
Tmux
spectrwm
mpd
ncmpcpp
blocks
lf")

FILE=$(echo -e "${options[@]}" | dmenu -i  -fn 'mono-13.2' -p 'Edit config file: ')

case "$FILE" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		FILE="$HOME/.config/alacritty/alacritty.yml"
	;;
	awesome)
		FILE="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		FILE="$HOME/.bashrc"
	;;
	broot)
		FILE="$HOME/.config/broot/conf.toml"
	;;
	bspwm)
		FILE="$HOME/.config/bspwm/bspwmrc"
	;;
	compton)
		FILE="$HOME/.config/compton/compton.conf"
	;;
    doom.d/config.el)
		FILE="$HOME/.doom.d/config.el"
	;;
    doom.d/init.el)
		FILE="$HOME/.doom.d/init.el"
	;;
	dunst)
		FILE="$HOME/.config/dunst/dunstrc"
	;;
	dwm)
		FILE="$HOME/.config/dwm/config.h"
	;;
	dwmblocks)

		FILE="$HOME/.config/dwmblocks/config.h"
	;;

	emacs.d/init.el)
		FILE="$HOME/.emacs.d/init.el"
	;;
	herbstluftwm)
		FILE="$HOME/.config/herbstluftwm/autostart"
	;;
	i3)
		FILE="$HOME/.i3/config"
	;;
	neovim)
		FILE="$HOME/.config/nvim/init.vim"
	;;
	polybar)
		FILE="$HOME/.config/polybar/config.ini"
	;;
	qtile)
		FILE="$HOME/.config/qtile/config.py"
	;;
	st)
		FILE="$HOME/.config/st/config.h"
	;;
	stumpwm)
		FILE="$HOME/.config/stumpwm/config"
	;;
	surf)
		FILE="$HOME/.config/surf/config.h"
	;;
	sxhkd)
		FILE="$HOME/.config/sxhkd/sxhkdrc"
	;;
	tabbed)
		FILE="$HOME/tabbed-distrotube/config.h"
	;;
	termite)
		FILE="$HOME/.config/termite/config"
	;;
	vifm)
		FILE="$HOME/.config/vifm/vifmrc"
	;;
	vim)
		FILE="$HOME/.vimrc"
	;;
	vimb)
		FILE="$HOME/.config/vimb/config"
	;;
	xmobar)
		FILE="$HOME/.config/xmobar/xmobarrc2"
	;;
	xmonad)
		FILE="$HOME/.xmonad/xmonad.hs"
	;;
	xresources)
		FILE="$HOME/.config/X11/xresources"
	;;
	zsh)
		FILE="$HOME/.config/zsh/.zshrc"
	;;
	ranger)
		FILE="$HOME/.config/ranger/rc.conf"
	;;
	qutebrowser)
		FILE="$HOME/.config/qutebrowser/config.py"
	;;
	zathura)
		FILE="$HOME/.config/zathura/zathurarc"
	;;
	spectrwm)
		FILE="$HOME/config/.spectrwm.conf"
	;;
	lf)
		FILE="$HOME/.config/lf/lfrc"
		;;
	mpd)
		FILE="$HOME/.config/mpd/mpd.conf"
		;;
	ncmpcpp)
		FILE="$HOME/.config/ncmpcpp/config"
		;;
	dmenu)
		FILE="$HOME/.config/dmenu/config.h"
		;;
	newsboat)
		FILE="$HOME/.config/newsboat/config"
		;;
	url)
		FILE="$HOME/.config/newsboat/urls"
		;;

	fonts)
		FILE="$HOME/.config/fontconfig/fonts.conf"
		;;
	mpv)
		FILE="$HOME/.config/mpv/mpv.conf"

		;;
	transmission)
		FILE="$HOME/.config/transmission-remote-cli/settings.cfg"

		;;
	picom)
		FILE="$HOME/.config/picom.conf"
		;;
	Tmux)
		FILE="$HOME/.config/tmux/tmux.conf"
		;;
	snippets)
		FILE="$HOME/.config/nvim/my_snippets.vim"
		;;
	starship)
		FILE="$HOME/.config/starship.toml"
		;;
		xinitrc)
			FILE="$HOME/.config/X11/xinitrc"
			;;
		xprofile)
			FILE="$HOME/.config/X11/xprofile"
			;;
	*)
		exit 1
	;;
esac
$TERMINAL -e nvim "$FILE"
# alacritty -e nvim "$FILE"
