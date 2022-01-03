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
#
for script in `ls $HOME/.dotfiles/zsh.d/*.zsh`; do
    source $script
done

# gotta have a fortune!
fortune -a
echo



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
