#!/bin/bash

wall "
	#Architecture: $(uname -a)
	#CPU physical : $(nproc)
	#vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)
	#Memory Usage: $(free -m | grep Mem | awk '{print $3}')/$(free -m | grep Mem | awk '{print $2}')MB ($(free -m | grep Mem | awk '{print $3/$2*100}' | cut -b 1-4)%)
	#Disk Usage: $(df -h --total | grep total | awk '{print $3}')/$(df -h --total | grep total | awk '{print$2}') ($(df -h --total | grep total | awk '{print $5}'))
	#CPU load: $(top -bn1 | grep '^%Cpu' | awk '{print $2+$4}')%
	#Last boot: $(who -b | awk '{print $3 " " $4}')
	#LVM use: $(if [ $(lsblk | grep lvm | wc -l) -eq 0 ]; then echo no;else echo yes;fi)
	#Connexions TCP : $(netstat -an | grep ESTABLISHED | wc -l) ESTABLISHED
	#User log: $(who | wc -l)
	#Network: IP $(hostname -I) ($(ip a | grep ether | awk '{print $2}'))
	#Sudo : $(journalctl -q | grep sudo | grep COMMAND | wc -l) cmd"
