#!/bin/bash

abort()
{
    echo >&2 '
***************
*** ABORTED ***
***************
'
    echo "An error occurred. Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

########################################################################
echo "-----------------------------------------------------------------"
echo "Configuration started ......"
echo "Please run this script only once, after that delete it"
echo "Watch the progress bar......"
#set dns
#echo "nameserver 10.42.0.1" > /etc/resolv.conf
#echo "nameserver 192.168.0.1" >> /etc/resolv.conf
#echo "nameserver 8.8.8.8" >> /etc/resolv.conf
#chattr +i /etc/resolv.conf
#Update opkg list
#opkg update
echo "Progress |####                                                  |"
sleep 1
#Libusb config
opkg install libusb-1.0-dev
echo "Progress |########                                              |"
sleep 2
#RTL library Source compilation
mkdir -p /rtlsdr
cd /rtlsdr
git clone https://github.com/steve-m/librtlsdr
cd librtlsdr
#git clone git://git.osmocom.org/rtl-sdr.git    # not works with proxy
#cd rtl-sdr
echo "Progress |##############                                        |"
sleep 2
autoreconf -i
echo "Progress |###################                                   |"
sleep 2
./configure
make
echo "Progress |#####################################                 |"
sleep 2
make install
echo "Progress |############################################          |"
sleep 2
make install-udev-rules
echo "/usr/local/lib" > /etc/ld.so.conf
ldconfig
#Mode S decoder
cd /rtlsdr
git clone https://github.com/MalcolmRobb/dump1090.git
cd dump1090
echo "Progress |#################################################     |"
sleep 2
mv /home/root/ADSB-dump1090-for-Intel-Galileo/store_data/interactive.c /rtlsdr/dump1090/
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
make    
echo "Progress |######################################################|"             
sleep 2
trap : 0
#######################################################################

echo >&2 '
************
*** DONE *** 
************
'
echo "Complete."
