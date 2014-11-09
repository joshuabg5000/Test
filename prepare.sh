#!/bin/bash
echo "Preparing"
sudo apt-get update -qq -y
yes | sudo apt-get upgrade -qq -y
sudo apt-get install -y gcc -qq ccache
sudo apt-get install -y -qq git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
java -version
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G
echo "Adding cm12 repo"
yes "" | repo init -q -u git://github.com/CyanogenMod/android.git -b cm-12.0
echo "Syncing"
repo sync -q
