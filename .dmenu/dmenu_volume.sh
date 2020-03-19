# Dmenu script to control the brightness of the screen.


declare options=("10
20
30
40
50
60
70
80
90
100")

choice=$(echo -e "${options[@]}" | dmenu -h 32 -i -p 'Change Output volume to: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	10)
		pamixer --set-volume 10
	;;
	20)
		pamixer --set-volume 20	
	;;
	30)
		pamixer --set-volume 30
	;;
	40)
		pamixer --set-volume 40
	;;
	50)
		pamixer --set-volume 50	
	;;
	60)
		pamixer --set-volume 60	
	;;
	70)
		pamixer --set-volume 70
	;;
	80)
		pamixer --set-volume 80	
	;;
	90)
		pamixer --set-volume 90
	;;
	100)
		pamixer --set-volume 100	
	;;
	*)
		exit 1
	;;
esac
