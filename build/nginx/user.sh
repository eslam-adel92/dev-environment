#!/bin/bash
##Adding user ibtikar as the same name and id as user on host machine

USER="ibtikar"
useradd -m -s /bin/bash $USER
mkdir /home/$USER/public_html/
usermod -u 1010 $USER
groupmod -g 1010 $USER
chown -R 1010:1010 /home/$USER/
rm -rf /tmp/user.sh
