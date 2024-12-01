echo "wireshark-common wireshark-common/install-setuid boolean true" | debconf-set-selections
useradd -s /bin/bash -d /home/wire -m wire
mkdir -p /home/wire
chown wire:wire /home/wire
apt-get update
apt-get install -y wireshark ca-certificates gpg sudo xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils
groupadd wireshark
setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
chgrp wireshark /usr/bin/dumpcap
chmod 750 /usr/bin/dumpcap
usermod -a -G wireshark wire
yes Y | dpkg-reconfigure wireshark-common
