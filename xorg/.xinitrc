#My stupid Xorg ignore the "AutoRepeat" Option in /etc/X11/xorg.conf. Fuck yeah:
xset r rate 300 30

#Italian Keyboard
setxkbmap it

#Switch NumLock on
numlockx on

#Fonts
xset +fp /usr/share/fonts/dejavu
xset fp rehash

#gpg-agent for Thunderbird
eval "$(gpg-agent --daemon)"

#My WM
exec startfluxbox

/usr/bin/xhost +local:root
