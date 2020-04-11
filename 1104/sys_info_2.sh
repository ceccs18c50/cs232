#!/usr/bin/bash

printf "OS AND VERSION,RELEASE NUMBER,KERNEL VERSION\n"
hostnamectl
printf "AVAILABLE SHELLS\n"
cat /etc/shells
printf "CPU INFORMATION\n"
lscpu
printf "MEMORY INFORMATION\n"
free
printf "HARD DISK INFORMATION\n"
sudo parted -l
df -h
printf "FILE SYSTEM (MOUNTED)\n"
findmnt

