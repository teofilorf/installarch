#!/bin/bash

#instala pacotes
yaourt --noconfirm -a -Syu google-chrome wine virtualbox vagrant yakuake mc rdesktop nmap sublime-text dropbox lib32-openssl gns3-gui gns3-server iouyap gns3-launcher-icons plasma5-applets-network-monitor plasma5-applets-resources-monitor-git


#configura

sudo cp winbox.desktop /usr/share/applications/
ln -s /home/$USER/Dropbox/bin /home/$USER/
sudo ln -s /usr/lib32/libcrypto.so.1.1 /usr/lib32/libcrypto.so.4
wget -c http://download.virtualbox.org/virtualbox/5.1.22/Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack
sudo reboot