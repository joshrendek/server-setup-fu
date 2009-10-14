#!/bin/sh
# Copyright 2009 Josh Rendek - BlueSripts.net
# This installs A LOT of base stuff for rails, php, ruby gems, lighttpd, git, rrdtool, mongrel and mongrel cluster
# Installs rails v2.3.3 and 2.3.4 (or whatever is latest on gem)
apt-get -y update
apt-get -y install sysstat
apt-get -y install openssl*
apt-get -y install mysql-server
apt-get -y install gcc
apt-get -y install pcre*
apt-get -y install bzip*
apt-get -y install intltool
apt-get -y install libxml*
apt-get -y install pango*
wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz
wget http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz
tar xzvf ruby-1.8.7-p174.tar.gz 
tar xzvf rubygems-1.3.5.tgz 
cd ruby-1.8.7-p174
./configure
./configure 
make
make install
cd ../
cd rubygems-1.3.5
ruby setup.rb 
gem install gemcutter
gem tumble
gem install mysql
gem install rcov
gem install rails
gem install -v=2.3.3 rails
cd ../
wget http://kernel.org/pub/software/scm/git/git-1.6.4.4.tar.gz
tar xzvf git-1.6.4.4.tar.gz 
cd git-1.6.4.4
./configure
make
make install
cd ../
gem install mongrel
gem install mongrel_cluster
wget http://www.lighttpd.net/download/lighttpd-1.4.23.tar.gz
tar xzvf lighttpd-1.4.23.tar.gz 
cd lighttpd-1.4.23
./configure
./configure
./configure
./configure
make
make install
touch /var/log/lighttpd/error.log
mkdir /var/log/lighttpd
touch /var/log/lighttpd/error.log
touch /var/log/lighttpd/access.log
cd
wget http://oss.oetiker.ch/rrdtool/pub/rrdtool-1.3.8.tar.gz
tar xzvf rrdtool-1.3.8.tar.gz 
cd rrdtool-1.3.8
./configure
make
make install
cd src
cp rrdtool /usr/bin
cp rrdupdate /usr/bin

