echo "#==============================================================================="
echo "Installing DoveCot"
echo "#==============================================================================="
sleep 3
yum -y install dovecot
echo "#=============================================================================="
sleep 2
systemctl start dovecot
systemctl enable dovecot
systemctl status dovecot
echo "===========================+++++++++++++======================================="
rm -f /etc/dovecot/dovecot.conf
cp -f dovecot.conf /etc/dovecot/
ls -l /etc/dovecot/
sleep 3
echo "#=============================================================================="
systemctl restart dovecot
systemctl enable dovecot
systemctl status dovecot
echo "#=============================================================================="
echo " Postfix done"
echo "#=============================================================================="
