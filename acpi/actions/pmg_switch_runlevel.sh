#!/bin/bash

# INIZIO configurazione
RUNLEVEL_AC="default"
RUNLEVEL_BATTERY="battery"
# FINE configurazione

if [ ! -d "/etc/runlevels/${RUNLEVEL_AC}" ]
then
        logger "${0}: Runlevel ${RUNLEVEL_AC} does not exist. Aborting."
        exit 1
fi

if [ ! -d "/etc/runlevels/${RUNLEVEL_BATTERY}" ]
then
        logger "${0}: Runlevel ${RUNLEVEL_BATTERY} does not exist. Aborting."
        exit 1
fi

if on_ac_power
then
#  if [[ "$(</var/lib/init.d/softlevel)" != "${RUNLEVEL_AC}" ]]
#  then
	logger "ACPI: Switching to ${RUNLEVEL_AC} runlevel"
		echo 15 > /sys/class/backlight/acpi_video1/brightness
		cpufreq-set -c 0 -g performance
		cpufreq-set -c 1 -g performance
		cpufreq-set -c 2 -g performance
		cpufreq-set -c 3 -g performance
		cpufreq-set -c 4 -g performance
		cpufreq-set -c 5 -g performance
		cpufreq-set -c 6 -g performance
		cpufreq-set -c 7 -g performance
		/sbin/rc ${RUNLEVEL_AC}
#elif [[ "$(</var/lib/init.d/softlevel)" != "${RUNLEVEL_BATTERY}" ]]
#then
else
        logger "ACPI: Switching to ${RUNLEVEL_BATTERY} runlevel"
	echo 7 > /sys/class/backlight/acpi_video1/brightness
	cpufreq-set -c 0 -g powersave
	cpufreq-set -c 1 -g powersave
	cpufreq-set -c 2 -g powersave
	cpufreq-set -c 3 -g powersave
	cpufreq-set -c 4 -g powersave
	cpufreq-set -c 5 -g powersave
	cpufreq-set -c 6 -g powersave
	cpufreq-set -c 7 -g powersave
	/sbin/rc ${RUNLEVEL_BATTERY}
fi
