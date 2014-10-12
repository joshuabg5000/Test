#/bin/bash
java -version
mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
mkdir ~/android && cd ~/android
repo init -u git://github.com/PAC-man/pacman.git -b pac-4.4
repo sync
echo test
ls
