#!/usr/bin/env bash

echo -n "MACHINE NAME: "
read -r name
mkdir /home/tico/CTF/HTB/$name

echo -n "MACHINE IP: "
read -r ip

echo $ip > ~/CTF/.IP
cd /home/tico/CTF/HTB/$name
tmux
