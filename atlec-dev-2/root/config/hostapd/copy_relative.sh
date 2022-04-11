#!/bin/bash

reldir="/home/jdg/dev/rpi-wifi-ap/atlec-dev-2"

mkdir -pv $reldir
cd /

for file in \
  /etc/default/isc-dhcp-server /etc/network/interfaces /etc/iptables.conf /etc/default/hostapd /etc/hostapd/hostapd.conf /etc/hostapd/wlan0.conf /etc/hostapd/wlan1.conf /etc/dhcp/dhcpd.conf /etc/sysctl.conf /etc/default/dnsproxy /etc/dnsproxy.conf 
do 
  cp --parents -v $file $reldir
done


#-eof
