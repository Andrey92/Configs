sprunge() {
	cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

alias writer='/usr/lib64/openoffice/program/swriter'
alias calc='/usr/lib64/openoffice/program/scalc'
alias math='/usr/lib64/openoffice/program/smath'
alias impress='/usr/lib64/openoffice/program/simpress'
alias umlet='~/.umlet/umlet.sh'

alias poweroff='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias pppd='sudo /usr/sbin/pppd'

alias performance='
echo 15 > /sys/class/backlight/acpi_video0/brightness
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
alias vim='vim -p'

cutvideo() {
	if [ "$#" -ne 4 ]; then
		echo "Usage: cutvideo <start> <length> <input> <output>"
	else
		mencoder -ss $1 -endpos $2 -oac pcm -ovc copy $3 -o $4
	fi
}

grabscreen() {
	if [ "$#" -ne 2 ]; then
		echo "Usage: grabscreen <time> <output>"
	else
		ffmpeg -y -f x11grab -video_size $(xdpyinfo | grep dimensions | awk '{ print $2 }') -framerate 25 -i :0.0 -vcodec mjpeg -q:v 1 -t $1 $2 &> /dev/null
	fi
}

capture() {
	if [ "$#" -ne 2 ]; then
		echo "Usage: capture <time> <output>"
	else
		ffmpeg -thread_queue_size 512 -f alsa -ar 44100 -i hw:0 -f v4l2 -s 1280x1024 -framerate 25 -i /dev/video0 -c:v mpeg4 -q:v 1 -y -t $1 $2 &> /dev/null
	fi
}

alias mplayer='mplayer -af scaletempo'
alias g++='g++ -std=c++0x'

# Needed for os161
export PATH="$PATH:/home/andrey/Dev/PDS/Cabodi/os161/tools/bin:/home/andrey/.flctools/jflex/bin:/home/andrey/.flctools/cup/java_cup"
alias bmake='bmake -m $HOME/Dev/PDS/Cabodi/os161/tools/share/mk'

export TCL_LIBRARY=/usr/lib64/tcl8.5
export CLASSPATH=.:./bin:/home/andrey/Dev/JRisk/jrisk/server/lib/mysql-connector-java-5.1.24-bin.jar:/home/andrey/.flctools/cup
#/usr/share/javacup/lib/javacup.jar:/usr/share/javacup/lib/javacup-runtime.jar
alias javacbin='
if [ ! -e ./bin ]
then
	mkdir ./bin
fi
javac -d ./bin'
alias apidocs='firefox ~/Dev/UniLab/POO/docs/api/index.html'

export PYTHONSTARTUP="/home/andrey/.pythonrc.py"

alias makenasm=nasm_compile

nasm_compile() {
	nasm -f elf32 $1
	ld -m elf_i386 ${1%.*}.o -o ${1%.*}
	rm ${1%.*}.o
}

#For Xilinx EDK
export XILINX=/opt/Xilinx/14.7/ISE_DS/ISE


export LD_LIBRARY_PATH=/opt/oracle-jdk-bin-1.8.0.5/jre/lib/amd64

alias epsxe='.epsxe/epsxe'
alias minecraft='(cd /home/andrey/.minecraft && exec java -Dswing.systemlaf=javax.swing.plaf.nimbus.NimbusLookAndFeel -jar /home/andrey/.minecraft/minecraft.jar)'
# -DsocksProxyHost=127.0.0.1 -DsocksProxyPort=9050
alias minecraft_server='(cd /home/andrey/.minecraft/minecraft_server && exec java -Xmx1024M -Xms1024M -jar /home/andrey/.minecraft/minecraft_server/minecraft_server.16w33a.jar)'

alias wiunical='~/.wiunical/UNICAL_Campus_Access.sh'
#alias martensson_wifi='~/.wiunical/Martensson_WiFi.sh'

alias startx='startx &> /dev/null'

alias usb='
mount /mnt/usb &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb
else
	cd ~/
	umount /mnt/usb &> /dev/null
	Result $?
fi'

alias usb2='
mount /mnt/usb2 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb2
else
	cd ~/
	umount /mnt/usb2 &> /dev/null
	Result $?
fi'

alias usb3='
mount /mnt/usb3 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb3
else
	cd ~/
	umount /mnt/usb3 &> /dev/null
	Result $?
fi'

alias usb4='
mount /mnt/usb4 &> /dev/null
if [ $? -eq 0 ] ; then
	Show /mnt/usb4
else
	cd ~/
	umount /mnt/usb4 &> /dev/null
	Result $?
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

Result() {
	if [ $1 -eq 0 ] ; then
		echo "È possibile rimuovere la periferica."
	else
		echo "Impossibile montare/smontare il disco rimovibile."
	fi
}
