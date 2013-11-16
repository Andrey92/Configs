sprunge() {
	cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

alias writer='/usr/lib64/openoffice/program/swriter'
alias calc='/usr/lib64/openoffice/program/scalc'
alias math='/usr/lib64/openoffice/program/smath'
alias impress='/usr/lib64/openoffice/program/simpress'
alias omnetpp='/opt/OMNeT/bin/omnetpp'

alias poweroff='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias pppd='sudo /usr/sbin/pppd'

alias performance='
echo 15 > /sys/class/backlight/acpi_video1/brightness
cpufreq-set -c 0 -g performance
cpufreq-set -c 1 -g performance
cpufreq-set -c 2 -g performance
cpufreq-set -c 3 -g performance
cpufreq-set -c 4 -g performance
cpufreq-set -c 5 -g performance
cpufreq-set -c 6 -g performance
cpufreq-set -c 7 -g performance'

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -la'
alias child='urxvt -geometry 80x25 & '

export TCL_LIBRARY=/usr/lib64/tcl8.5
export CLASSPATH=.:./bin:/usr/lib64/jvm/oracle-jdk-bin-1.7/jre/lib/jfxrt.jar:/home/andrey/Dev/JRisk/jrisk/server/lib/mysql-connector-java-5.1.24-bin.jar
alias javacbin='
if [ ! -e ./bin ]
then
	mkdir ./bin
fi
javac -d ./bin'
alias apidocs='firefox ~/Dev/UniLab/POO/docs/api/index.html'
alias eclipse='/usr/local/bin/eclipse/eclipse'

alias makenasm=nasm_compile

nasm_compile() {
	nasm -f elf32 $1
	ld -m elf_i386 ${1%.*}.o -o ${1%.*}
	rm ${1%.*}.o
}

export LD_LIBRARY_PATH=/opt/oracle-jdk-bin-1.7.0.3/jre/lib/amd64

alias minecraft='
echo "installation_dir=/home/andrey/.minecraft" > ~/MOL_Properties.properties
java -jar ~/.minecraft/MC_Open_Launcher.jar
rm ~/MOL_Properties.properties'
#alias minecraft_server='java -Xmx1024M -Xms1024M -jar ~/.minecraft/minecraft_server/minecraft_server.jar'

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

alias sdcard='
mount /mnt/sd &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/sd
else
	cd ~/
	umount /mnt/sd &> /dev/null
	if [ $? -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
fi'

Show() {
	cd $1
	ls -a $1 
}
