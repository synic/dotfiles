#!/usr/bin/python3

import os
import urllib

PACKAGES = """
arandr
bower
curl
docker
dunst
emacs
exuberant-ctags
gimp
git
htop
i3
i3lock
imagemagick
inkscape
feh
maim
mplayer
mosh
net-tools
nodejs-legacy
npm
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

REMOTE_FILES = (
    ('https://raw.github.com/synic/urxvt-tabbedex/master/tabbedex',
     '/usr/lib/urxvt/perl/tabbedex'),
)

REPOS = (
    ('https://github.com/syl20bnr/spacemacs.git', '~/.emacs.d'),
)

os.system('apt update')
os.system('apt install -y {}'.format(PACKAGES.replace('\n', ' ')))

# remove notify-osd so dunst can take over
os.system('apt remove notify-osd -y')

for remote, local in REMOTE_FILES:
    data = urllib.urlopen(remote).read()
    h = open(local, 'w')
    h.write(data)
    h.close()
    print('Wrote {}'.format(local))

for remote, local in REPOS:
    os.system('rm -rf {}'.format(local))
    os.system('git clone {} {}'.format(remote, local))

os.system('pip install virtualenv virtualenvwrapper mtg')
os.system('chsh -s /usr/bin/zsh synic')
os.system('lndir ~/.dotfiles/home ~')
os.system('xrdb -merge ~/.Xresources')
os.system('chown -R synic:synic /home/synic')
