ln -s /home/ken/dotfiles/config/xkb/symbols/sun-type3 /usr/share/X11/xkb/symbols/
grep -n option /usr/share/X11/xkb/rules/evdev |grep symbols
> append
echo 'sun-type3:swapkeys\t=\t+sun-type3(swapkeys)'

> /usr/share/X11/xkb/rules/evdev.lst
> append near ctrl:nocaps
echo '  sun-type3:swapkeys   Swap Backslash'

gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps','sun-type3:swapkeys']"
