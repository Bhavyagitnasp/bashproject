#!/bin/bash

echo "#==============================================================================="
echo "Disabling selinux"
echo "#==============================================================================="
sleep 3
setenforce 0
sed -r -i 's/SELINUX=(enforcing|disabled)/SELINUX=disabled/' /etc/selinux/config
cat /etc/selinux/config
sleep 5
echo "#==============================================================================="
echo " Selinux Dissabled "
