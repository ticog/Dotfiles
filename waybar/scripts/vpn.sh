#!/bin/bash
MachineIP=$(cat ~/CTF/.IP | tail -n 1)
tun0_ip=$(ip a | grep -oP 'inet \K[\d.]+(?=.*tun0)') && echo "󰞇 : $MachineIP"  || echo '󰞇 : No Target'