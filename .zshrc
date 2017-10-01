###############################################################################
#                                      _          _                           #
#                      ___ _   _ _ __ (_) ___ ___| |__                        #
#                     / __| | | | '_ \| |/ __/ __| '_ \                       #
#                     \__ \ |_| | | | | | (__\__ \ | | |                      #
#                     |___/\__, |_| |_|_|\___|___/_| |_|                      #
#                          |___/                                              #
#                              arolsen@gmail.com                              #
#                                                                             #
###############################################################################

for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
    source $script
done

# gotta have a fortune!
fortune -a
echo

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/synic/.nvm/versions/node/v6.5.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/synic/.nvm/versions/node/v6.5.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh