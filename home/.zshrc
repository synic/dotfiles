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

# gotta have a fortune (but not in warp terminal because it looks like crap)!
if [[ -v $WARP_SESSION_ID ]]; then
  fortune
  echo
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && \
  source "${HOME}/.iterm2_shell_integration.zsh"

# wd workaround (see https://github.com/mfaerevaag/wd/issues/115)
wd() {
  . $HOME/.zplug/bin/wd.sh
}
