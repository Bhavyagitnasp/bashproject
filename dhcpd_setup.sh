#!/bin/bash -
set -o nounset
echo "#==============================================================================="
echo "Installing and setting Quagga OSPF Zebra DHCP "
echo "#==============================================================================="
sleep 3
yum -y install dhcpd
yum -y install quagga
echo "#==============================================================================="
sleep 3
rm -f /etc/quagga/ospfd.conf
rm -f /etc/quagga/zebra.conf
rm -f /etc/quagga/vtysh.conf
cp -f ospfd.conf /etc/quagga/
cp -f zebra.conf /etc/quagga/
cp -f vtysh.conf /etc/quagga/
chown quagga:quagga /etc/quagga/*.conf
echo "#==============================================================================="
ls -l /etc/quagga/
sleep 3
systemctl start ospfd
systemctl enable ospfd
systemctl restart ospfd
systemctl status ospfd
sleep 3
systemctl start zebra
systemctl enable zebra
systemctl restart zebra
systemctl status Zebra
sleep 3
systemctl start dhcpd
systemctl enable dhcpd
systemctl restart dhcpd
systemctl status dhcpd
sleep 3
echo "#========================dhcp_setup.sh--Ended==============================="
