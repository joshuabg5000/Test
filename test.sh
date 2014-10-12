#!/bin/bash

echo "this is for Ubuntu 12.04"


sudo apt-get install -y gcc ccache
sudo apt-get install -y git-core gnupg flex bison gperf build-essential zip curl libc6-dev x11proto-core-dev libreadline6-dev:i386 libgl1-mesa-glx:i386 g++-multilib mingw32 openjdk-6-jdk tofrodos python-markdown libxml2-utils schedtool pngcrush xsltproc zlib1g-dev:i386 python-software-properties
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\*
sudo add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main"
sudo apt-get update
sudo apt-get install -y oracle-java6-installer
ls -la /etc/alternatives/java* && ls -la /etc/alternatives/jar
java -version
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G

echo "finished. You can now add your favorite Repo. Have fun"
yes "" | repo init -u git://github.com/PAC-man/pacman.git -b pac-4.4
repo sync
