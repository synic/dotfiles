#!/usr/bin/python

import os
import urllib

PACKAGES = """
python-pip
python-dev
vim-gtk
xutils-dev
feh
exuberant-ctags
git
xfonts-terminus
awesome
awesome-extra
rxvt-unicode-256color
xbacklight
xclip
imagemagick
xutils-dev
i3lock
xautolock
libxss1
libappindicator1
"""

FILES = (
    ("https://raw.github.com/synic/urxvt-tabbedex/master/tabbedex", "/usr/lib/urxvt/perl/tabbedex"),
)

os.system("apt-get install %s" % PACKAGES.replace("\n", " "))

for remote, local in FILES:
    data = urllib.urlopen(remote).read()
    h = open(local, "w")
    h.write(data)
    h.close()
    print "Wrote %s" % local

os.system("pip install virtualenv virtualenvwrapper")
