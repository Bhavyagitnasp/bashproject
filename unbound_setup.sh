echo "#==============================================================================="
echo "Installing and setting UnbounD "
echo "#==============================================================================="
sleep 2
yum -y install unbound
echo "#==============================================================================="
ls -l /etc/unbound/
sleep 3
rm -f /etc/unbound/unbound.conf
cp -f unbound.conf /etc/unbound/unbound.conf
cp -f root.hints /etc/unbound/root.hints
ls -l /etc/unbound/
echo "#==============================================================================="
sleep 3
systemctl restart unbound
systemctl enable unbound
systemctl status unbound
sleep 3
echo "#==============================================================================="
echo " Unbound installed and started"
echo "#==============================================================================="          
