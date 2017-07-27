#!/usr/bin/python

import os
import urllib

PACKAGES = """
python-pip
python-dev
vim-gtk3
emacs
docker
feh
exuberant-ctags
git
rxvt-unicode-256color
xclip
imagemagick
xutils-dev
i3lock
zsh
i3
"""

FILES = (
    ("https://raw.github.com/synic/urxvt-tabbedex/master/tabbedex",
     "/usr/lib/urxvt/perl/tabbedex"),
)

os.system("apt update")
os.system("apt install %s" % PACKAGES.replace("\n", " "))

for remote, local in FILES:
    data = urllib.urlopen(remote).read()
    h = open(local, "w")
    h.write(data)
    h.close()
    print "Wrote %s" % local

os.system("pip install virtualenv virtualenvwrapper mtg")
os.system("chsh -s /usr/bin/zsh synic")
os.system("lndir ~/.dotfiles ~")
