#!/bin/bash

#instala pacotes
yaourt --noconfirm -Syu google-chrome wine vboxwrapper virtualbox-host-modules-arch virtualbox-guest-iso virtualbox vagrant mc rdesktop nmap sublime-text dropbox lib32-openssl iouyap dynamips gns3-gui gns3-server  gns3-launcher-icons


#configura

sudo cp winbox.desktop /usr/share/applications/
ln -s /home/$USER/Dropbox/bin /home/$USER/

sudo ln -s /usr/lib32/libcrypto.so.1.1 /usr/lib32/libcrypto.so.4

wget -c http://download.virtualbox.org/virtualbox/5.1.22/Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack

sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack

echo -e '!#/bin/bash\n$PATH=$PATH:$HOME/bin' > ~/.extend.bash_profile

sudo reboot
