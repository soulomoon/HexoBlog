---
title: Mac_iptable
date: 2018-01-11 12:48:14
tags:
---
First getting a list of port on your Mac  
`networksetup -listallhardwareports`

Add rules to ip table  
`sudo route add -host xxx.xxx.xxx.xxx -interface en1`  
or `sudo route add -host xxx.xxx.xxx.xxx 196.168.1.1`

View ip table ruls  
`netstat -nr`

