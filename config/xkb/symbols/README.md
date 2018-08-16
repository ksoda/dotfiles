Install
=======

```sh
ln -s /home/ken/dotfiles/config/xkb/symbols/sun-type3 /usr/share/X11/xkb/symbols/
sudo sed -i '/^!\s*option\s*=\s*symbols/a \ \ sun-type3:swapkeys\t=\t+sun-type3(swapkeys)' /usr/share/X11/xkb/rules/evdev
```

<!--
echo 'sun-type3:swapkeys\t=\t+sun-type3(swapkeys)' \
  | sudo tee -a /usr/share/X11/xkb/rules/evdev
-->

gsettings set org.gnome.desktop.input-sources xkb-options "['sun-type3:swapkeys']"

