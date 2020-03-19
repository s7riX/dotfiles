#!/bin/bash
#  ____ _____
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/
# |____/ |_|
#
# Dmenu script for editing some of my more frequently edited config files.


declare options=("alacritty
awesome
bash
broot
bspwm
compton
doom.d/config.el
doom.d/init.el
dunst
dwm
emacs.d/init.el
herbstluftwm
i3
polybar
qtile
st
stumpwm
sxhkd
termite
vifm
vim
xmobar
xmonad
xresources
zsh
nvim
quit")

choice=$(echo -e "${options[@]}" | dmenu -h 32 -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		alacritty --command vim "$HOME/.config/alacritty/alacritty.yml"
	;;
	awesome)
		alacritty --command vim "$HOME/.config/awesome/rc.lua"
	;;
	bash)
		alacritty --command vim "$HOME/.bashrc"
	;;
	broot)
		alacritty --command vim "$HOME/.config/broot/conf.toml"
	;;
	bspwm)
		alacritty --command vim "$HOME/.config/bspwm/bspwmrc"
	;;
	compton)
		alacritty --command vim "$HOME/.config/compton/compton.conf"
	;;
    doom.d/config.el)
		alacritty --command vim "$HOME/.doom.d/config.el"
	;;
    doom.d/init.el)
		alacritty --command vim "$HOME/.doom.d/init.el"
	;;
	dunst)
		alacritty --command vim "$HOME/.config/dunst/dunstrc"
	;;
	dwm)
		alacritty --command vim "$HOME/dwm/config.h"
	;;
	emacs.d/init.el)
		alacritty --command vim "$HOME/.emacs.d/init.el"
	;;
	herbstluftwm)
		alacritty --command vim "$HOME/.config/herbstluftwm/autostart"
	;;
	i3)
		alacritty --command vim "$HOME/.i3/config"
	;;
	polybar)
		alacritty --command vim "$HOME/.config/polybar/config"
	;;
	qtile)
		alacritty --command vim "$HOME/.config/qtile/config.py"
	;;
	st)
		alacritty --command vim "$HOME/st/config.h"
	;;
	stumpwm)
		alacritty --command vim "$HOME/.config/stumpwm/config"
	;;
	sxhkd)
		alacritty --command vim "$HOME/.config/sxhkd/sxhkdrc"
	;;
	termite)
		alacritty --command vim "$HOME/.config/termite/config"
	;;
	vifm)
		alacritty --command vim "$HOME/.config/vifm/vifmrc"
	;;
	vim)
		alacritty --command vim "$HOME/.vimrc"
	;;
	xmobar)
		alacritty --command vim "$HOME/.config/xmobar/xmobarrc2"
	;;
	xmonad)
		alacritty --command vim "$HOME/.xmonad/xmonad.hs"
	;;
	xresources)
		alacritty --command vim "$HOME/.Xresources"
	;;
	zsh)
		alacritty --command vim "$HOME/.zshrc"
	;;
    nvim)
        alacritty --command vim "$HOME/.config/nvim/nvimrc"
    ;; 
	*)
		exit 1
	;;
esac
