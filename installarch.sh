#!/bin/bash

#instala pacotes
yaourt --noconfirm -a -Syu google-chrome wine virtualbox vagrant yakuake mc rdesktop nmap sublime-text dropbox lib32-openssl gns3-gui gns3-server iouyap gns3-launcher-icons

#configura

sudo cp winbox.desktop /usr/share/applications/
ln -s /home/$USER/Dropbox/bin /home/$USER/
sudo ln -s /usr/lib32/libcrypto.so.1.1 /usr/lib32/libcrypto.so.4

sudo reboot