# File ~/.bash_profile

sprunge() {
	cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

alias writer='/usr/lib64/openoffice/program/swriter'
alias calc='/usr/lib64/openoffice/program/scalc'
alias math='/usr/lib64/openoffice/program/smath'
alias impress='/usr/lib64/openoffice/program/simpress'

alias poweroff='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias pppd='sudo /usr/sbin/pppd'

alias ll='ls -la'

export CLASSPATH=.:./bin
alias javacbin='
if [ ! -e ./bin ]
then
	mkdir ./bin
fi
javac -d ./bin'
alias apidocs='firefox ~/Repos/UniLab/POO/docs/api/index.html'
alias eclipse='/usr/local/bin/eclipse/eclipse'

export LD_LIBRARY_PATH=/opt/oracle-jdk-bin-1.7.0.3/jre/lib/amd64
alias minecraft='java -Xmx1024M -Xms512M -cp ~/.minecraft/MinecraftSP.jar net.minecraft.LauncherFrame'

alias wiunical='~/.wiunical/UNICAL_Campus_Access.sh'
alias martensson_wifi='~/.wiunical/Martensson_WiFi.sh'

alias startx='startx &> /dev/null'

alias usb='
mount /mnt/usb &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb
else
	cd ~/
	umount /mnt/usb &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
fi'

alias usb2='
mount /mnt/usb2 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb2
else
	cd ~/
	umount /mnt/usb2 &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
fi'

alias usb3='
mount /mnt/usb3 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb3
else
	cd ~/
	umount /mnt/usb3 &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
fi'

alias usb4='
mount /mnt/usb4 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb4
else
	cd ~/
	umount /mnt/usb4 &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
fi'

alias nfs='mount /mnt/desktop &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/desktop
else
	cd ~/
	umount /mnt/desktop &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "Condivisione in rete terminata."
	else
		echo "Impossibile montare/smontare le cartelle condivise."
	fi
fi'

alias cdr='mount /mnt/cdrom &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/cdrom
else
	cd ~/
	umount /mnt/cdrom &> /dev/null
	if [ $? -eq 0 ] ; then
		eject
		echo "Rimuovere il disco e chiudere il vassoio dell'\''unità CD."
	else
		echo "Impossibile leggere dall'\''unità CD."
	fi
fi'

Show() {
	cd $1
	ls -a $1 
}
