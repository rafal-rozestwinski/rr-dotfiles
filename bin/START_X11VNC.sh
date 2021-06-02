#!/bin/bash -x
#x11vnc -storepasswd
# sudo apt-get install tigervnc-scraping-server
# mkdir -p ~/.vnc
# vncpasswd

x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/rr/.vnc/passwd -rfbport 5900 -listen localhost -shared -ncache 10 -display :0
#x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/rr/.vnc/passwd -rfbport 5900 -localhost -shared -ncache 10
#x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/rr/.vnc/passwd -rfbport 5900  -shared

#TIGERVNC:
#x0vncserver -passwordfile  ~/.vnc/passwd -display :0
