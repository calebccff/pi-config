echo "Making changes"
mkdir ~/.config
mkdir ~/.config/openbox
touch ~/.config/openbox/autostart
echo "lxpanel &" > ~/.config/openbox/autostart

echo "Overclocking...."
sudo chown pi /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=600" >> /boot/config.txt
echo "over_voltage=6" >> /boot/config.txt
echo "Done!"
cat /boot/config.txt
