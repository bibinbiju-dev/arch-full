# PLYMOUTH CHANGES

## TO changes the plymouth follow these commands

1. convert the dp.png image to logo.png viva magick command as given bellow :
   magick dp.png -resize 800x180 logo.png
2. cd /usr/share/plymouth/themes/omarchy
3. sudo mv logo.png logo.png.bak
4. sudo mv ~/Pictures/logo.png
5. sudo mkinitcpio -P
6. reboot
