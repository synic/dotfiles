#!/usr/bin/python

import os
import urllib

PACKAGES = """
arandr
curl
docker
dunst
emacs
exuberant-ctags
git
htop
i3
i3lock
imagemagick
feh
maim
mosh
net-tools
pasystray
rofi
rxvt-unicode-256color
silversearcher-ag
thunar
python-pip
python-dev
xutils-dev
vim-gnome
xclip
zsh
"""

FILES = (
    ('https://raw.github.com/synic/urxvt-tabbedex/master/tabbedex',
     '/usr/lib/urxvt/perl/tabbedex'),
)

os.system('apt update')
os.system('apt install -y {}'.format(PACKAGES.replace('\n', ' ')))

# remove notify-osd so dunst can take over
os.system('apt remove dunst -y')

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
os.system('chown -R synic:synic /home/synic')
