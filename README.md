synic's dotfiles
================

I suppose this isn't just my dotfiles anymore, it's everything configuration
related that I want to keep in git. It does not include my vim or my spacemacs
configuration, since I often install those on a system without wanting to
include all of my other dotfiles, and they are rather large and involved. They
are located:

- https://github.com/synic/dotvim
- https://github.com/synic/dotspacemacs

It's organized like this:

### Directories:

- `etc` - Files that normally go in `/etc`, udev rules, X configuration,
    systemd, etc.
- `files` - Misc files, things that I want to save but don't have a specific
    place to go.
- `home` - Configuration and other files that go in my home directory. These
    are stored in a structure that matches where they go in my home directory,
    so that I can use `lndir` to install them quickly. Things like i3
    configuration, hammerspoon, any scripts that go in `$HOME/bin`, etc.
- `scripts` . Setup scripts for the various operating systems I use. These
    sceripts are meant to bootstrap a new system to a usable state, complete
    with my preferred configuration for everything.
- `wallpapers` - Scripts and images that I use for wallpapers.
- `xresources.d` - Xresource config. These are included from
    `$HOME/.Xresources`
- `zsh.d` - My zsh configuration files. Included from `$HOME/.zshrc`.

### Installation:

To use, install GNU stow (`brew install stow` on MacOS), and then type
the following:

```bash
$ git clone https://github.com/synic/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ stow .
```
