echo "#==============================================================================="
echo "Configuring HostAPD For Wifi adaptor"
echo "#==============================================================================="
yum -y install hostapd
sleep 3
echo "#==============================================================================="
rm -f /etc/hostapd/hostapd.conf
cp -f hostapd.conf /etc/hostapd/
ls -l /etc/hostapd/
echo "#==============================================================================="
sleep 3
echo "#==============================================================================="
systemctl status hostapd
sleep 4
echo "#==============================================================================="
echo " Hostapd Done"
echo "#==============================================================================="