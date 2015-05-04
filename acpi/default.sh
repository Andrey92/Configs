#!/bin/sh
# /etc/acpi/default.sh
# Default acpi script that takes an entry for all actions

set $*

group=${1%%/*}
action=${1#*/}
device=$2
id=$3
value=$4

log_unhandled() {
	logger "ACPI event unhandled: $*"
}

case "$group" in
	button)
		case "$action" in
			power)
				/sbin/init 0
				;;

			# if your laptop doesnt turn on/off the display via hardware
			# switch and instead just generates an acpi event, you can force
			# X to turn off the display via dpms.  note you will have to run
			# 'xhost +local:0' so root can access the X DISPLAY.
#			lid)
#				xset dpms force off
#				;;
			volumeup)
				logger "ACPI: Volume up"
				amixer sset Master 2%+
				;;

			volumedown)
				logger "ACPI: Volume down"
				amixer sset Master 2%-
				;;

			mute)
				VOLUME=$(amixer get Master | grep dB)
				VOLUME=$( echo $VOLUME | grep -o -i "[0-9]\{1,3\}%" )
				if [ "$VOLUME" == "0%" ]
				then
					logger "ACPI: Mute off"
					amixer sset Master $( cat /etc/acpi/volume )
				else
					echo $VOLUME > /etc/acpi/volume
					#VOLUME=$( expr match "$VOLUME" '\([ ]*[a-zA-Z0-9: ]*\[[0-9]*%\)' )
					#VOLUME=$( expr match "$VOLUME" '.*\([1]*[0-9][0-9]%\)' )
					logger "ACPI: Mute on"	
					amixer sset Master 0
				fi
				;;

			*)	log_unhandled $* ;;
		esac
		;;
	video)
		case "$action" in
			brightnessdown)
				logger "ACPI: Brightness down"
				brightness=$(cat /sys/class/backlight/acpi_video0/brightness)
				if [ "$brightness" != "0" ]
				then
					let brightness=$brightness-1
				fi
				echo $brightness > /sys/class/backlight/acpi_video0/brightness
			;;

			brightnessup)
				logger "ACPI: Brightness up"
				brightness=$(cat /sys/class/backlight/acpi_video0/brightness)
				if [ "$brightness" != "15" ]
				then
					let brightness=$brightness+1
				fi
				echo $brightness > /sys/class/backlight/acpi_video0/brightness
			;;

			*) log_unhandled $* ;;
		esac
		;;
	cd)
		case "$action" in
			prev)
				mocp -Sr
				;;

			next)
				mocp -Sf
				;;

			*) log_unhandled $* ;;
		esac
		;;

	ac_adapter)
		case "$value" in
			# Add code here to handle when the system is unplugged
			# (maybe change cpu scaling to powersave mode).  For
			# multicore systems, make sure you set powersave mode
			# for each core!
			#*0)
			#	cpufreq-set -g powersave
			#	;;

			# Add code here to handle when the system is plugged in
			# (maybe change cpu scaling to performance mode).  For
			# multicore systems, make sure you set performance mode
			# for each core!
			#*1)
			#	cpufreq-set -g performance
			#	;;

			*)	log_unhandled $* ;;
		esac
		;;

	*)	log_unhandled $* ;;
esac
