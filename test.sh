#!/bin/bash

echo "this is for Ubuntu 12.04"


sudo apt-get install -y gcc -qq ccache
sudo apt-get install -y -qq git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\*
sudo add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main"
sudo apt-get update -qq
sudo apt-get install -qq -y oracle-java6-installer
ls -la /etc/alternatives/java* && ls -la /etc/alternatives/jar
java -version
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G

echo "finished. You can now add your favorite Repo. Have fun"
jdk_switcher use openjdk6
javac -version
java -version
yes "" | repo init -q -u git://github.com/PAC-man/pacman.git -b pac-4.4
echo syncing
repo sync -q
ls -a
./build-pac.sh -f wx_na_wf
