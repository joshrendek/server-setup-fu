#!/usr/bin/env python
import urllib, re, os

lighttpd_update_xml = "http://www.lighttpd.net/feed/atom.xml"

compile_flags = ""


tmp_feed = urllib.urlopen(lighttpd_update_xml).read()
fixed_source = re.sub('&gt;', '>', tmp_feed)
fixed_source = re.sub('&lt;', '<', fixed_source)
fixed_source = re.sub('&quot;', '"', fixed_source)

links = re.finditer('http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd([^\"]*).tar.gz', fixed_source)

latest_release = ""
for i in links:
	latest_release = i.group()
	break
	
print "Downloading latest release: " + latest_release
filename = latest_release.split('/')[-1]
folder = filename.split('.tar.gz')[0]

os.popen("curl -O " + latest_release)

print "Extracting to " + folder + " ... "
os.popen("tar xzvf " + filename)

# check for LUA
check = os.popen("lighttpd -V | grep LUA").read().strip()[0]
if check == '+':
	compile_flags += "-with-lua"
	
# build it
print "Building..."
output = os.popen("cd " + folder + "; ./configure " + compile_flags + "; make; make install;").read()

print "Finished updating!"