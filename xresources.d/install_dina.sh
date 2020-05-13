#!/usr/bin/env bash

cd /etc/fonts/conf.d/
sudo rm -rf 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
sudo dpkg-reconfigure fontconfig
wget -O /tmp/Dina.zip 'https://www.dcmembers.com/jibsen/download/61/?wpdmdl=61&refresh=5b7193954297c1534170005'
sudo mkdir /usr/share/fonts/Dina
cd /usr/share/fonts/Dina
sudo unzip /tmp/Dina.zip
cd BDF
sudo mkfontscale
sudo mkfontdir
sudo dpkg-reconfigure fontconfig-config
xset +fp /usr/share/fonts/Dina/BDF/
fc-cache -f
