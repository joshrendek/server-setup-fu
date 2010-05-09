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
yum -y install libxml*
wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz
wget http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz
tar xzvf ruby-1.8.7-p174.tar.gz 
tar xzvf rubygems-1.3.5.tgz 
cd ruby-1.8.7-p174
./configure
make
make install
cd ../
cd rubygems-1.3.5
ruby setup.rb 
gem install gemcutter --no-rdoc --no-ri
gem tumble
gem install mysql  --no-rdoc --no-ri
gem install rcov --no-rdoc --no-ri
gem install rails --no-rdoc --no-ri
cd ../
wget http://kernel.org/pub/software/scm/git/git-1.7.1.tar.gz
tar xzvf git-1.7.1.tar.gz
cd git-1.7.1
./configure
make
make install
cd ../
gem install thin --no-rdoc --no-ri
gem install mongrel --no-rdoc --no-ri
gem install mongrel_cluster --no-rdoc --no-ri
wget http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.26.tar.gz
tar xzvf lighttpd-1.4.26.tar.gz
cd lighttpd-1.4.26
./configure
make
make install
touch /var/log/lighttpd/error.log
mkdir /var/log/lighttpd
touch /var/log/lighttpd/error.log
touch /var/log/lighttpd/access.log

