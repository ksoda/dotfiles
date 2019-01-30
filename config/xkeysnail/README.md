https://github.com/mooz/xkeysnail/issues/64#issuecomment-600380800

```sh
sudo groupadd -f uinput
sudo gpasswd -a $USER uinput
sudo cp 70-xkeysnail.rules /etc/udev/rules.d/
```

