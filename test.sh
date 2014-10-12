#/bin/bash
sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\*
java -version
yes | sudo apt-get install bison build-essential bzip2 curl dpkg-dev flex g++-multilib git git-review gnupg gperf lib32bz2-1.0 lib32bz2-dev lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev libbz2-1.0 libbz2-dev libc6-dev libghc-bzlib-dev libgl1-mesa-dev libgl1-mesa-glx:i386 libncurses5-dev libreadline6-dev libreadline6-dev:i386 libx11-dev:i386 libxml2-utils lzop mingw32 pngcrush python-markdown schedtool squashfs-tools tofrodos x11proto-core-dev xsltproc zip zlib1g-dev zlib1g-dev:i386
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
