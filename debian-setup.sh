#!/bin/bash
# thanks to SpaceGhostC2C for several suggestions (irc.freenode) including gemrc
apt-get install curl
curl https://github.com/bluescripts/server-setup-fu/raw/master/bash_profile > .bash_profile
curl https://github.com/bluescripts/server-setup-fu/raw/master/bashrc > .bash_rc
curl https://github.com/bluescripts/server-setup-fu/raw/master/gemrc > .gemrc
apt-get install php5
apt-get install php5-cli
apt-get install git git-core
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
echo '[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"' >> .bash_profile
source .bash_profile
apt-get install bzip2
apt-get install build-essential
apt-get install zlib1g-dev
apt-get install libopenssl-ruby libcurl4-openssl-dev libssl-dev 
rvm package install openssl
rvm install 1.9.2 --with-openssl-dir=/usr/local/rvm/usr
rvm --default ruby-1.9.2
gem install passenger --no-rdoc --no-ri
gem install rails 
gem install bundler 
