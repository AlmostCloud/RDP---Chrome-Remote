#!/bin/bash
sudo apt update && sudo apt upgrade -y
apt install wget sudo nano git curl -y
clear

echo "🅰🅻🅼🅾🆂🆃 🅲🅻🅾🆄🅳"

echo Có muốn tạo RDP Chrome Remote Desktop cho vps của bạn không!

read -p "Đồng ý cho tạo hay không? (y/n): " -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Installation aborted."
    exit 1
fi

clear
