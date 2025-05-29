# reduce performance
sudo raspi-config nonint do_boot_behaviour B3

USERNAME=desktop
PASSWORD=password
echo "$USERNAME:$PASSWORD" | sudo chpasswd
