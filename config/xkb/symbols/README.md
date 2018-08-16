Install
=======

```sh
ln -s /home/ken/dotfiles/config/xkb/symbols/sun-type3 /usr/share/X11/xkb/symbols/
echo 'sun-type3:swapkeys\t=\t+sun-type3(swapkeys)' \
  | sudo tee -a /usr/share/X11/xkb/rules/evdev
# sudo sed -i '/^!\s*option\s*=\s*symbols/a \ \ sun-type3:swapkeys\t=\t+sun-type3(swapkeys)' /usr/share/X11/xkb/rules/evdev
setxkbmap -layout us -option sun-type3:swapkeys
```

gsettings set org.gnome.desktop.input-sources xkb-options "['sun-type3:swapkeys']"

