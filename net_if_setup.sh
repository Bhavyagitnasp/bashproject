echo "#==============================================================================="
echo "setting up network adaptors"
echo "#==============================================================================="
sleep 5
rm -f /etc/sysconfig/network-scripts/ifcfg-eth0
rm -f /etc/sysconfig/network-scripts/ifcfg-eth1
ls -l /etc/sysconfig/network-scripts/
sleep 3
cp -f ifcfg-eth00 /etc/sysconfig/network-scripts/ifcfg-eth0
cp -f ifcfg-eth11 /etc/sysconfig/network-scripts/ifcfg-eth1
ls -l /etc/sysconfig/network-scripts/
sleep 3
echo "#==============================================================================="
sleep 5
echo "#==============================================================================="
