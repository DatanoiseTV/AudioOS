# Codename "AudioOS"
Buildroot based Raspberry Pi 4 OS with Real Time Kernel optimized for musical applications.

## Screenshot

This is how a system looks with running processes by default

![screenshot](images/screenshot.png?raw=true)

## Included Packages
* Realtime Kernel 4.19
* NTP for Time Sync
* Dropbear SSH Server & Client
* dhcpcd DHCP client
* Python 3
* Python 3 PIP
* Python 3 scipy, numpy and pyaudio
* portaudio
* Alsa Utilities
* JACK Audio
* latencytop
* htop
* PiSound support and init script

## Installing

```
1. Get latest Buildroot (https://buildroot.org/downloads/buildroot-2020.08.tar.gz)
2. Copy raspberrypi4rt_defconfig to configs/
3. make raspberrypi4rt_defconfig 
4. copy boards/raspberrypi4/* to boards/raspberrypi4
5. make (and drink a cup of tea)
```
