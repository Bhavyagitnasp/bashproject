echo "#==============================================================================="
echo "Installing and setting NSD "
echo "#==============================================================================="
sleep 5
yum -y install nsd
echo "#==============================================================================="
sleep 5
cp -f 18.16.10.in-addr.arpa.zone1 /etc/nsd/18.16.10.in-addr.arpa.zone
cp -f s18.as.learn.zone1 /etc/nsd/s18.as.learn.zone
ls -l /etc/nsd/
sleep 5
echo "#==============================================================================="
systemctl start nsd
systemctl enable nsd
systemctl status nsd
sleep 3
echo "#==============================================================================="
