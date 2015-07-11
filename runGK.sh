#!/bin/bash
# VBoxManage startvm GK-DEV
echo "Waiting for VM..."
vmstatus=$(VBoxManage list vms -l | grep -e ^Name: -e ^State | sed s/\ \ //g | awk '/GK-DEV/{getline; print}')

echo $vmstatus
# sleep 30
# echo "IP:" `VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
# echo "PASSWORD: developer"
# ssh developer@`VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
