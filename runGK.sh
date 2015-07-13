#!/bin/bash
VBoxManage startvm GK-DEV
echo "Waiting for VM..."
vmstatus=$(VBoxManage list vms -l | grep -e ^Name: -e ^State | sed s/\ \ //g | awk '/GK-DEV/{getline; print}')
vmstatus=${vmstatus#*: }
vmstatus=$(echo $vmstatus | sed -e 's/([^()]*)//g' | sed -e 's/[[:space:]]*$//')

ip_ready(){
  ip=`VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP"`

  if [[ $ip == "No value set!" ]]; then
    return 1;
  else
    return 0;
  fi
}

if [[ $vmstatus == "powered off" ]]; then
  echo "VM is not running. Pls start VM first."
  exit 1;
else
  while ( ! ip_ready ); do
    sleep 3
    echo 'Waiting for machine to stand up...'
  done

  ip=`VBoxManage guestproperty get GK-DEV "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
  echo "Machine active on $ip"
  echo ""
  echo "PASSWORD: developer"
  echo "LOGIN: developer"

  until ssh developer@$ip; do
    echo 'Waiting for machine to stand up...'
  done
fi
