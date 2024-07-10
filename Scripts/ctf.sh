#!/usr/bin/env bash

ovpn=$(pgrep openvpn)

if [ $ovpn ]
then 
	echo "Openvpn is already running: $ovpn"
else
	htb
fi

echo -n "MACHINE NAME: "
read -r name

if [ -e /home/tico/CTF/HTB/$name ]
then
	echo 'Directory already existing'
else
	mkdir /home/tico/CTF/HTB/$name
fi
echo -n "MACHINE IP: "
read -r ip

echo $ip > ~/CTF/.IP
export ip=$ip
cd /home/tico/CTF/HTB/$name
tmux

