#!/bin/bash

# Check if wget is installed
if [ ! -x /usr/bin/wget ] ; then
	# some extra check if wget is not installed at the usual place                                                                           
	command -v wget >/dev/null 2>&1 || { echo >&2 "Please install wget or set it in your path. Aborting."; exit 1; }
fi

sudo apt update

read -p "Enter the libinput version you would like to install: " version

workingdir="/tmp/libinputUpdate-$version"

mkdir $workingdir
cd $workingdir

# Check and fetch each file
url="http://ftp.us.debian.org/debian/pool/main/libi/libinput/libinput-bin_$version-1_amd64.deb"
wget $url &> /dev/null
if [[ "$?" != 0 ]]; then
    echo "Could not find libinput-bin at that version"
    exit 1
else
    echo "Downloaded libinput-bin"
fi

url="http://ftp.us.debian.org/debian/pool/main/libi/libinput/libinput-dev_$version-1_amd64.deb"
wget $url &> /dev/null
if [[ "$?" != 0 ]]; then
    echo "Could not find libinput-dev at that version"
    exit 1
else
    echo "Downloaded libinput-dev"
fi

url="http://ftp.us.debian.org/debian/pool/main/libi/libinput/libinput-tools_$version-1_amd64.deb"
wget $url &> /dev/null
if [[ "$?" != 0 ]]; then
    echo "Could not find libinput-tools at that version"
    exit 1
else
    echo "Downloaded libinput-tools"
fi

url="http://ftp.us.debian.org/debian/pool/main/libi/libinput/libinput10_$version-1_amd64.deb"
wget $url &> /dev/null
if [[ "$?" != 0 ]]; then
    echo "Could not find libinput10 at that version"
    exit 1
else
    echo "Downloaded libinput10"
fi

# Install all files in directory
sudo dpkg -i $workingdir/*.deb

# Install missing dependencies
sudo apt install -f

# Cleanup
rm -rf $workingdir

exit 0
