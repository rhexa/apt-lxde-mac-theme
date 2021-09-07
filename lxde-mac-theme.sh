#!/bin/bash

sudo apt install lxappearance -y

mkdir ~/.themes
cd ~/.themes

# OpenBox theme
# SBColors_XOS.obt https://www.box-look.org/p/1336941/
wget --content-disposition https://dl2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1NzY4OTQ0NzIiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjQ4YzFkZTBmYzlmMDc0NmNmZTEzY2Q3ZGM1NDFhOGQ4MGIyZTFhYWMwZDI2YTcwZTBhMTRmNDJjZDhlNzI2MjcwYjE1NDkzM2U3ZmI3ZWQ0NzQwZGZmM2M3NzNkYmJkOTdiNGYyZTZkMzliNTZhMWExNjYxNTg0ZDYyOTAyOWQwIiwidCI6MTYzMDc2Mzc5OCwic3RmcCI6IjA2MmYyYmJkNTVmZjk4NDk3NWMwN2UyYTczYTk5NTMyIiwic3RpcCI6Ijg0LjI0OS41NS42MiJ9.zO_MpkNdW-sJ4JmaMbXopfay7KolS_-qZSHSwG1DGWE/SBColors_XOS.obt
tar -xvf SBColors_XOS.obt
rm SBColors_XOS.obt
sed -ri 's#(<titleLayout>).*(</titleLayout>)#\1CIMLN\2#g' .config/openbox/lxde-rc.xml

# Plank
sudo apt install plank -y
cd ~/.local/share/plank/themes/
# plank theme https://www.gnome-look.org/p/1399398/
wget --content-disposition https://dl2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDMwNTg5NTciLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjVkZTY0ZjgwM2Q3MWY1YWNhODVhY2JiNTQ1YWY1MTdhNDE3MDRlOGViNmFkZDk1Y2E0ZjY0OTczYmY3NzM3YjZiZTk4NDdhNjg3ZTFmZWQ4YjkwODY5OGI4ZWIzOTEwMzNjODAwZWE4MWVmZmMxYzg0NDFkMjQ5ZmU2OTI0M2JiIiwidCI6MTYzMDc2Njg3NCwic3RmcCI6IjA2MmYyYmJkNTVmZjk4NDk3NWMwN2UyYTczYTk5NTMyIiwic3RpcCI6Ijg0LjI0OS41NS42MiJ9.UOF0VoKfTtRGo4HdGRfBL3P515jXB_e9knmdZi1e64Y/mcOS-BS-White-Stock.zip
unzip mcOS-BS-White-Stock.zip
rm mcOS-BS-White-Stock.zip

# Mac Icon
# McMuse.tar.xz https://store.kde.org/p/1348081
mkdir ~/.icons
cd ~/.icons
wget --content-disposition https://dl1.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MzA0OTM4MjIiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjRmZDgwZjAwMjE4NDZjZDI1YjVhMDkwMDY2M2NmY2U5NTc4NTYzY2M3OTVhZWE3NWE3NTBjNDBjMzhlMTgwODczY2JmYjFkNWE1ZTQ3MDZlMzc4MDFkMzg3MDBmOWQzOTViMjI3YWNlNWQ4YmMyNzVmNTJlYWNhYmYzOTc4OTk4IiwidCI6MTYzMDc2NDc1NSwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.jTZSPK1f4nO1f5EnCRN7GpgzwlJsOJk5jV0-ZTtt8_0/McMuse.tar.xz
tar -xvf McMuse.tar.xz
rm McMuse.tar.xz

# Cursor
# McMojave-cursors.tar.xz https://store.kde.org/p/1355701/
wget --content-disposition https://dl3.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1ODA0MDIzODkiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImVlZTM0NTRiOGYzMmJiZjUxMGU2NjEzZGVjNDBkZTk1ZTlkMzE4YWIyN2I4Y2M0YWRhODE3MjJjMmFmOWQ3YWU1NGU0NGJhYzFmNWQ1NTk2YTZhNjQ2YzZmNWE4OTdhY2VhMDZhZmEyNDJiODQxNDhkY2MyOTYyN2IyN2I3NGYzIiwidCI6MTYzMDc2NTE1NSwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.KAwVwD49nsxiDUeEqPYLu_JXbb54Fqr-51-KBvlVPPI/McMojave-cursors.tar.xz

# Compton
sudo apt instal compton -y

# Wallpaper
mkdir ~/.wallpapers
curl -L https://wallpapercave.com/download/wallpapers-mac-wp3268411 -OJ
curl https://wallpapersbook.com/wp-content/uploads/2020/10/mac-wallpaper-download-7.jpg -OJ 