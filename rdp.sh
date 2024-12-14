#!/bin/bash

clear

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

echo "Cài đặt desktop!"
sudo apt install lxde -y
echo "Cài đặt thành công!"

clear

echo "Cài đặt remote"
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb -y
echo "Cài đặt thành công"

clear

sudo adduser almostcloud
sudo usermod -aG sudo almostcloud

clear

su almostcloud && echo "Nhập mã của bạn"
