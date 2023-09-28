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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# gotta have a fortune!
fortune
echo

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# bun completions
[ -s "/Users/synic/.bun/_bun" ] && source "/Users/synic/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
