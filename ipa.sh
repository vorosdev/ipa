#!/bin/bash

# Colors
greenColor="\e[0;32m\033[1m"
endColor="\033[0m\e[0m"
redColor="\e[0;31m\033[1m"
blueColor="\e[0;34m\033[1m"
yellowColor="\e[0;33m\033[1m"
purpleColor="\e[0;35m\033[1m"   
turquoiseColor="\e[0;36m\033[1m"
grayColor="\e[0;37m\033[1m"

# Ethernet
ethernet_address=$(ip addr show enp42s0 | awk '/inet / {print $2; exit}' | cut -d'/' -f1)
if [ $ethernet_address ]; then
  echo -e "\n${yellowColor}[+]${endColor} ${blueColor}Private IP ->${endColor} ${redColor}${ethernet_address}${endColor}\n" 
else
  echo -e "\n${redColor}[x]${endColor} ${grayColor}No assigned IP address${endColor}\n"
fi

# VPN
vpn_address=$(ip a | grep tun0 | tail -n 1 | awk '{print $2}' | cut -d'/' -f1)
if [ $vpn_address ]; then
  echo -e "\n${yellowColor}[+]${endColor} ${greenColor}HackTheBox IP -> ${endColor}${purpleColor}${vpn_address}${endColor}\n"
else 
    echo -e "\n${redColor}[x]${endColor} ${grayColor}Your VPN is disconnected${endColor}\n"
fi

# Victim machine
ip_address=$(/bin/cat ~/.config/bin/target | awk '{print $1}')
machine_name=$(/bin/cat ~/.config/bin/target | awk '{print $2}')
if [ $ip_address ] && [ $machine_name ]; then
  echo -e "\n${yellowColor}[+]${endColor} ${turquoiseColor}Target ->${endColor} ${purpleColor}${ip_address}${endColor} ${yellowColor}-${endColor} ${redColor}${machine_name}${endColor}\n" 
else
  echo -e "\n${redColor}[x]${endColor} ${grayColor}No target${endColor}\n"
fi
