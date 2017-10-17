#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles YES

if ! [ -e /usr/local/bin/brew ]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
fi

if ! [ -e /usr/local/bin/brew-cask ]; then
    # Install Homebrew Cask
    brew tap caskroom/cask
    brew install caskroom/cask/brew-cask
fi

brew cask install \
    alfred \
    caffeine \
    clipmenu \
    dash \
    displaylink \
    evernote \
    gfxcardstatus \
    google-chrome \
    intellij-idea \
    iterm2 \
    itsycal \
    lastpass \
    nicecast \
    mou \
    musicbrainz-picard \
    p4merge \
    rescuetime \
    steam \
    the-unarchiver \
    transmission \
    transmit \
    vagrant \
    vagrant-manager \
    vlc \
    vmware-fusion \
    the_silver_searcher

brew tap railwaycat/emacsmacport
brew install emacs-mac --with-spacemacs-icon

brew install \
    git \
    mercurial

brew install --HEAD mobile-shell


if ! [ -d '/Applications/LastPass.app' ]; then

    brew cask install lastpass
    open '/opt/homebrew-cask/Caskroom/lastpass/latest/LastPass Installer.app'
    read -p "Press [Enter] key to continue..."
fi
