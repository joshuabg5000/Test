#!/bin/bash
crontab -l > /tmp/dump
echo "*/5 * * * * echo Hello" >> /tmp/dump
crontab /tmp/dump
crontab -l
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

echo "export USE_CCACHE=1" >> .bashrc
source ~/.bashrc
prebuilts/misc/linux-x86/ccache/ccache -M 50G
java -version
mkdir -p .repo/local_manifests
cd .repo/local_manifests
wget https://raw.githubusercontent.com/joshuabg5000/Test/master/roomservice.xml
cd ..
cd ..
repo sync -j32
. build/envsetup.sh
lunch cm_otterx-userdebug
make -s otapackage -j3
ls -la
ls -la prebuilts/misc/linux-x86/bison
