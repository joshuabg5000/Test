#!/bin/bash
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G
java -version
./build-pac.sh -f wx_na_wf
ls -a
ls -a prebuilts/misc/linux-x86
ls -a prebuilts/misc
ls -a prebuilts
