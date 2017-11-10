---
title: DESTINCTINO BETWEEN WEAK HOST MODEL AND STRONG HOST MODEL
date: 2017-11-10 11:54:44
tags:
---
First we should clear out some words we use:  
1. Locally addressed packet: the packet with destination IP that belongs to the decice.  
2. Interface: the gate way which the device expose itself out to, which bind only one IP.

Connecting to Internet via IP protocal, device use certain IP address as its indentifier, such forming an Internet interface. Then there are ways for building multiple interface each with unique IP address in the same decice. Mainly, there are two model to support such ability, WEAK HOST MODEL and STRONG HOST MODEL.  

They differ in the way that whether the interface should accept the arriving packet with the destination IP that is actually point to another interface(different IP) in this same device.  

For WEAK HOST MODEL, the interface should accept any Locally addressed packet.  
For STRONGHOST MODEL, the interface should only accept packet with destination IP point to.
