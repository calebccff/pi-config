#!/bin/bash

echo "Updating..."
sudo apt-get update -y

echo "Installing desktop environment"
sudo apt-get install -y --no-install-recommends xserver-xorg xinit
sudo apt-get install -y xorg openbox xdm pcmanfm lxappearance lxpanel gmrun gnome-terminal

echo "Install apache2"
sudo apt-get install -y apache2 apache2-doc apache2-utils
echo "Install MYSQL"
sudo apt-get install -y mysql-server

echo "Making changes"
mkdir ~/.config
mkdir ~/.config/openbox
touch ~/.config/openbox/autostart
echo "lxpanel &" > ~/.config/openbox/autostart

echo "Overclocking...."
sudo su
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=600" >> /boot/config.txt
echo "over_voltage=6" >> /boot/config.txt
exit

echo "Rebooting..."
sudo init 6
