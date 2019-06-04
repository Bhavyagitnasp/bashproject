echo "#==============================================================================="
source ./net_if_setup.sh
echo "------------------net_if_setup--scrip---Ended---------------------------"
sleep 3
#source ./wifi_if_setup.sh
echo "------------------wifi_if_setup---Ended---------------------------"
sleep 3
echo "#==============================================================================="
sleep 5
systemctl restart network.service
systemctl status network.service
echo "#==============================================================================="
