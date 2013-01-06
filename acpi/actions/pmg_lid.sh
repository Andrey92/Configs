#!/bin/bash

#XAUTHORITY="$( ps -C X f | sed -n 's/.*-auth \(.*\)/\1/p' )"

LID_STATE=$( cat /proc/acpi/button/lid/LID0/state )

if [ "$LID_STATE" == "state:      open" ]
then
	logger "ACPI: Lid is opening"
	/usr/bin/xset -display :0.0 dpms force on
else
	logger "ACPI: Lid is closing"
	/usr/bin/xset -display :0.0 dpms force off
fi
