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

choice=$(echo -e "${options[@]}" | dmenu -h 32 -i -p 'Change Brightness to: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	10)
		brightnessctl set 10%
	;;
	20)
		brightnessctl set 20%
	;;
	30)
		brightnessctl set 30%
	;;
	40)
		brightnessctl set 40%
	;;
	50)
		brightnessctl set 50%
	;;
	60)
		brightnessctl set 60%
	;;
	70)
		brightnessctl set 70%
	;;
	80)
		brightnessctl set 80%
	;;
	90)
		brightnessctl set 90%
	;;
	100)
		brightnessctl set 100%
	;;
	*)
		exit 1
	;;
esac
