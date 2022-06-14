#!/bin/bash
echo -e "
#     ____                    _____ _____ _    _
#    / __ \                  / ____/ ____| |  | |
#   | |  | |_ __   ___ _ __ | (___| (___ | |__| |
#   | |  | |  _ \ / _ \ __ \ \___  \___ \|  __  |
#   | |__| | |_) |  __/ | | |____) |___) | |  | |
#    \____/| .__/ \___|_| |_|_____/_____/|_|  |_|
#       | || | |         | |     | |
#       | ||_| |_ __   __| | __ _| |_ ___ _ __
#       | |  | |  _ \ / _  |/ _  | __/ _ \  __|
#       | |__| | |_) | (_| | (_| | ||  __/ |
#        \____/| .__/ \__,_|\__,_|\__\___|_|
#              | |
#              |_|
#                Written by: TXJ-XYZ
# START INSTALL
# sudo nano ssh_updater.sh && sudo chmod +x ssh_updater.sh; sudo ./ssh_updater.sh
"

if [ "$EUID" -ne 0 ]
    then echo "Please run this script as root in order to continue."
    exit
fi

echo -e "---   STARTING UPDATE AND DOWNLOAD OF NEW SSH VERSION   ---"
declare -x VERSION=9.0p1

apt update
apt install build-essential zlib1g-dev libssl-dev libpam0g-dev libselinux1-dev libkrb5-dev -y
mkdir /var/lib/sshd
chmod -R 700 /var/lib/sshd/
chown -R root:sys /var/lib/sshd/
wget -c https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${VERSION}.tar.gz
tar -xzf openssh-${VERSION}.tar.gz
cd openssh-${VERSION}/
./configure --with-md5-passwords --with-pam --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
make
make install

echo -e "---   DONE INSTALLING STARTING INSTALL OF NEW VERSION   ---"

echo -e "---   BACKING UP OLD SSHD VERSION   ---"
mv /usr/sbin/sshd /usr/sbin/sshd.bak
cp /usr/local/sbin/sshd /usr/sbin/sshd

rm -Rf $PWD/openssh-${VERSION}*
echo -e "---   COMPLETED   ---"
