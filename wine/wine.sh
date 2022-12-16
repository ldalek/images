#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export TZ="Etc/UTC"

dpkg --add-architecture i386
apt-get -y update
apt-get -y install wine-stable

apt-get -y install winetricks
apt-get -y install virtualenv python3-pip
apt-get -y install xvfb
apt-get -y install xdotool scrot

apt-get -y install cpio imagemagick

apt-get -y install python3-numpy
apt-get -y install python3-scipy
apt-get -y install python3-matplotlib
apt-get -y install python3-sphinx python3-sphinx-rtd-theme

# Remove unneeded stuff
rm -rf /var/lib/apt /var/lib/dpkg
