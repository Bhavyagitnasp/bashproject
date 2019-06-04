echo "#==============================================================================="
echo "Installing postFIX"
echo "#==============================================================================="
sleep 3
yum -y install postfix
echo "#=============================================================================="
rm -f /etc/postfix/main.cf
cp -f main.cf /etc/postfix/main.cf
ls -l /etc/postfix/
sleep 3
echo "#=============================================================================="
systemctl restart postfix
systemctl enable postfix
systemctl status postfix
sleep 3
echo "#=============================================================================="
echo " Postfix done"
echo "#=============================================================================="