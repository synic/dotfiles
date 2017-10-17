#!/usr/bin/python

import os
import urllib

PACKAGES = """
python-pip
python-dev
vim-gnome
emacs
docker
rofi
feh
mosh
maim
arandr
exuberant-ctags
git
rxvt-unicode-256color
thunar
xclip
imagemagick
curl
xutils-dev
i3lock
zsh
i3
htop
"""

FILES = (
    ('https://raw.github.com/synic/urxvt-tabbedex/master/tabbedex',
     '/usr/lib/urxvt/perl/tabbedex'),
)

os.system('apt update')
os.system('apt install {}'.format(PACKAGES.replace("\n", " ")))

for remote, local in FILES:
    data = urllib.urlopen(remote).read()
    h = open(local, 'w')
    h.write(data)
    h.close()
    print 'Wrote {}'.format(local)

os.system('pip install virtualenv virtualenvwrapper mtg')
os.system('chsh -s /usr/bin/zsh synic')
os.system('lndir ~/.dotfiles ~')
os.system('xrdb -merge ~/.Xresources')
