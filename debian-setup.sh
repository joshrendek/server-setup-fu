#!/usr/bin/env bash
# thanks to SpaceGhostC2C for several suggestions (github.com/SpaceGhost) including gemrc
apt-get install curl -y
curl https://github.com/bluescripts/server-setup-fu/raw/master/bash_profile > .bash_profile
curl https://github.com/bluescripts/server-setup-fu/raw/master/bashrc > .bash_rc
curl https://github.com/bluescripts/server-setup-fu/raw/master/gemrc > .gemrc
apt-get install php5 -y
apt-get install php5-cli -y
apt-get install git git-core -y
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
echo '[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"' >> .bash_profile
source .bash_profile
apt-get install bzip2 -y
apt-get install build-essential -y
apt-get install zlib1g-dev -y
apt-get install libopenssl-ruby libcurl4-openssl-dev libssl-dev -y
rvm package install openssl 
rvm install 1.9.2 --with-openssl-dir=/usr/local/rvm/usr
rvm --default ruby-1.9.2
gem install passenger --no-rdoc --no-ri
gem install rails 
gem install bundler 
passenger-install-nginx-module --auto  --extra-configure-flags=--with_http_ssl --extra-configure-flags=--with-http_stub_status_module --auto-download --prefix=/opt/nginx 
