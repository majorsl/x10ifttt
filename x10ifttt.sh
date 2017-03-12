#!/bin/sh
#Version 1.0.2
#This script monitors a Dropbox location for specific files dropped by the IFTTT service.
#When a matching file is found, it triggers an X10 module event and the file is cleaned-
#up. See the accompanying launchd script that must be added to your system to trigger this
#script.

#Location of the directory to monitor.
cd /Volumes/Drobo/Storage/Sync/Dropbox/x10

#X10 actions.

#Bedroom Lights On
if [ -e "bedroomon.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh on a2
rm bedroomon.txt
fi

#Bedroom Lights Off
if [ -e "bedroomoff.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh off a2
rm bedroomoff.txt
fi

#Laptop Adapters On
if [ -e "laptopon.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh on a7
rm laptopon.txt
fi

#Laptop Adapters Off
if [ -e "laptopoff.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh off a7
rm laptopoff.txt
fi

#Printer On
if [ -e "printeron.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh on a3
rm printeron.txt
fi

#Printer Off
if [ -e "printeroff.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh off a3
rm printeroff.txt
fi

#Holiday Lights On
if [ -e "holidayon.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh on a8
rm holidayon.txt
fi

#Holiday Lights Off
if [ -e "holidayoff.txt" ]
then
/Users/majorsl/Scripts/GitHub/x10/x10.sh off a8
rm holidayoff.txt
fi
