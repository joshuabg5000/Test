#/bin/bash
sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\*
echo test
yes '' | sudo add-apt-repository ppa:webupd8team/java
yes | sudo apt update && sudo apt install oracle-java6-installer
