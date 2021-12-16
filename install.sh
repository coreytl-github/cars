#!/bin/sh

echo "Make sure this script is ran as root!"
echo "What user are you going to use (User must already exist): " && read USER
pacman -S doas
echo "Enter a password for the user:\n"
passwd $USER
echo "permit $USER as root" > /etc/doas.conf
