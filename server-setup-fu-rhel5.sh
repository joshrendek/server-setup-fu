#!/bin/sh
# Copyright 2009 Josh Rendek - BlueSripts.net
# This installs A LOT of base stuff for rails, php, ruby gems, lighttpd, git, rrdtool, mongrel and mongrel cluster
# Installs rails v2.3.3 and 2.3.4 (or whatever is latest on gem)
yum -y update
yum -y install make
yum -y install sysstat
yum -y install font*
yum -y install zip unzip
yum -y install openssl*
yum -y install getline*
yum -y install readline*
yum -y install ncurses*
yum -y install get*
yum -y install mysql*
yum -y install gcc*
yum -y install pcre*
yum -y install bzip*
yum -y install intltool
yum -y install libxml*
yum -y install pango*
yum -y install libxml* libxslt*
yum -y install curl*
yum -y install ImageMagic*
cd ~
curl https://github.com/bluescripts/server-setup-fu/raw/master/bash_profile > .bash_profile
curl https://github.com/bluescripts/server-setup-fu/raw/master/bashrc > .bash_rc
source .bash_profile
source .bash_rc 
wget ftp://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p0.tar.gz
tar xzvf ruby-1.9.2-p0.tar.gz
cd ruby-1.9.2-p0
./configure
make
make install
cd ../
wget http://kernel.org/pub/software/scm/git/git-1.7.1.tar.gz
tar xzvf git-1.7.1.tar.gz
cd git-1.7.1
./configure
make
make install
cd ../
gem install thin --no-rdoc --no-ri
gem uninstall rack -v=1.1.0
gem install mongrel --no-rdoc --no-ri
gem install mongrel_cluster --no-rdoc --no-ri
wget http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.26.tar.gz
tar xzvf lighttpd-1.4.26.tar.gz
cd lighttpd-1.4.26
./configure
make
make install
mkdir /var/log/lighttpd
touch /var/log/lighttpd/error.log
touch /var/log/lighttpd/access.log

gem install rails