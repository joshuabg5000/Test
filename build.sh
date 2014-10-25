#!/bin/bash
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G
java -version
sudo apt-get install bison
rm build-pac.sh
wget https://raw.githubusercontent.com/joshuabg/android_vendor_pac/pac-4.4/tools/build-pac.sh
chmod +x build-pac.sh
./build-pac.sh -f wx_na_wf
ls -la
ls -la prebuilts/misc/linux-x86/bison
