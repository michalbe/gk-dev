#!/bin/bash
VBoxManage startvm GK-DEV
echo "Witing for VM..."
sleep 30
echo "IP:" `VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
echo "PASSWORD: developer"
ssh developer@`VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
