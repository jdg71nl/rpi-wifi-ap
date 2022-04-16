#!/bin/bash

cd /root/
mkdir -pv config/hostapd/
cd config/hostapd/

for file in \
  /etc/default/isc-dhcp-server /etc/network/interfaces /etc/iptables.conf /etc/default/hostapd /etc/hostapd/hostapd.conf /etc/hostapd/wlan0.conf /etc/hostapd/wlan1.conf /etc/dhcp/dhcpd.conf /etc/sysctl.conf /etc/default/dnsproxy /etc/dnsproxy.conf ; 
do 
  echo "# file: $file ..." ; ln -sf $file . ; 
done

#
# > apt install -y isc-dhcp-server hostapd dnsproxy

#-eof
