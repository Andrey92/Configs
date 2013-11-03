#!/bin/bash

# Check for updates in my config files and print differences

check() {
	echo =================================================================================
	echo $1 - $2
	echo =================================================================================
	diff -r $1 $2
	if [ $? -eq 0 ]; then
		echo -e "\t"
		echo Already up-to-date.
		echo -e "\n"
	fi
}

# ACPI
check /etc/acpi/actions/pmg_lid.sh acpi/actions/pmg_lid.sh
check /etc/acpi/actions/pmg_switch_runlevel.sh acpi/actions/pmg_switch_runlevel.sh
check /etc/acpi/default.sh acpi/default.sh
check /etc/acpi/events/default acpi/events/default
check /etc/acpi/events/pmg_ac_adapter acpi/events/pmg_ac_adapter
check /etc/acpi/events/pmg_battery acpi/events/pmg_battery
check /etc/acpi/events/pmg_lid acpi/events/pmg_lid

# Fluxbox
check ~/.fluxbox/apps fluxbox/apps
check ~/.fluxbox/init fluxbox/init
check ~/.fluxbox/keys fluxbox/keys
check ~/.fluxbox/menu fluxbox/menu
check ~/.fluxbox/overlay fluxbox/overlay
check ~/.fluxbox/startup fluxbox/startup
check ~/.fluxbox/windowmenu fluxbox/windowmenu
check ~/.fluxbox/backgrounds fluxbox/backgrounds
check ~/.fluxbox/styles fluxbox/styles

# MOC
check ~/.moc/config moc/config
check ~/.moc/darkblue moc/darkblue

# System
check /etc/fstab system/fstab
check /etc/apache2/httpd.conf system/httpd.conf
check /usr/src/linux/.config system/kernel.conf
check /etc/make.conf system/make.conf
check /etc/conf.d/modules system/modules

# User
check ~/.bash_logout user/.bash_logout
check ~/.bash_profile user/.bash_profile
check ~/.bashrc user/.bashrc

# Vim
check ~/.vim/after vim/after
check ~/.vim/autoload vim/autoload
check ~/.vim/colors vim/colors
check ~/.vim/compiler vim/compiler
check ~/.vim/doc vim/doc
check ~/.vim/plugin vim/plugin
check ~/.vim/src vim/src
check ~/.vim/syntax vim/syntax
check ~/.vimrc vim/.vimrc

# Xorg
check /etc/X11/xorg.conf xorg/xorg.conf
check ~/.Xdefaults xorg/.Xdefaults
check ~/.xinitrc xorg/.xinitrc
