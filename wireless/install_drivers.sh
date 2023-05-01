if [ "$(id -u)" -ne 0 ]; then echo "Please run as root."; exit 1; fi

apt-get -y install dkms realtek-rtl88xxau-dkms
git clone https://github.com/aircrack-ng/rtl8812au
cd rtl8812au
make && make install
cd ..
rm -rf rtl8812au

echo "Drivers installed, please reboot now."
