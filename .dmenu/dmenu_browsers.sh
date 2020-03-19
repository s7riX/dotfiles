#!/bin/bash
# Demnu script to open browsers.


declare options=("b
bi
f
fi
c
ci")

choice=$(echo -e "${options[@]}" | dmenu -h 32 -i -p 'Choose Browser: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	b)
		brave
	;;
	bi)
		brave --incognito
	;;
	f)
		firefox
	;;
	fi)
		firefox --private-window
	;;
	c)
		chromium
	;;
	ci)
		chromium --incognito
	;;
	*)
		exit 1
	;;
esac
