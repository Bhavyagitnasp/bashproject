#!/bin/bash

set -o nounset                              # Treat unset variables as an error
echo "#==============================================================================="
echo "setting hostname"
echo "#==============================================================================="
hostnamectl set-hostname s18rtr.as.learn
echo "#==============================================================================="
echo "Installing base packages"
echo "#==============================================================================="
sleep 5
yum -y update
echo "group_package_types=mandatory,default,optional" >> /etc/yum.conf
yum -y group install base
echo "#==============================================================================="
echo "Installing the Extra Packages for Enterprise Linux Repository"
echo "#==============================================================================="
sleep 5
yum -y install epel-release
yum -y update
echo "#==============================================================================="
echo "Installing project specific tools"
echo "#==============================================================================="
sleep 5
yum -y install curl vim wget tmux nmap-ncat tcpdump nmap tmux
echo "#==============================================================================="
echo "Setting Up VirtualBox Guest Additions"
echo "Installing pre-requisites"
echo "#==============================================================================="
sleep 5
yum -y install kernel-devel kernel-headers dkms gcc gcc-c+
echo "#==============================================================================="
echo "Creating mount point, mounting, and installing VirtualBox Guest Additions"
echo "#==============================================================================="
sleep 5
mkdir vbox_cd
mount /dev/cdrom ./vbox_cd
./vbox_cd/VBoxLinuxAdditions.run
umount ./vbox_cd
rmdir ./vbox_cd
echo "#==============================================================================="
echo "Install Git"
echo "#==============================================================================="
yum -y install git
echo "#==============================================================================="
sleep 3
echo "Turning off and disabling Network Manager"
echo "#==============================================================================="
sleep 5
systemctl stop NetworkManager.service
systemctl disable NetworkManager.service
echo "#==============================================================================="
echo "Turning off and disabling Firewall Daemon"
echo "#==============================================================================="
sleep 5
systemctl stop firewalld.service
systemctl disable firewalld.service
echo "#==============================================================================="
echo "Enabling and starting the Network Service (ignoring angry messages)"
echo "#==============================================================================="
sleep 5
systemctl enable network.service
systemctl start network.service
echo "#==============================================================================="
echo "Setting up Instructor User"
echo "#==============================================================================="
sleep 5
