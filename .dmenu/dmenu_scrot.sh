# Dmenu script to control the brightness of the screen.


declare options=("f
a
quit")


choice=$(echo -e "${options[@]}" | dmenu -h 32 -i -p 'Change Output volume to: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	f)
		scrot --focused
	;;
	a)
		scrot	
	;;
	*)
		exit 1
	;;
esac
