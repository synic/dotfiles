autoload -U +X bashcompinit && bashcompinit

# load plugins
source $HOME/.dotfiles/zsh.d/plugins.zsh

# load colors for ls
source $HOME/.dotfiles/zsh.d/colors.zsh

# custom functions
source $HOME/.dotfiles/zsh.d/functions.zsh

# aliases
alias vi="$HOME/bin/stop-using vi"
alias dc="docker-compose"
alias sudo="sudo "
alias ssh="BINARY_SSH=ssh $HOME/bin/ssh-ident"
alias scp="BINARY_SSH=scp $HOME/bin/ssh-ident"
alias apt-get="$HOME/bin/stop-using apt-get"
alias o="octoeb"
alias eb="cd ~/Projects/eventboard.io"
alias edit_zshd="vim ~/.dotfiles/zsh.d"

# customization options
setopt no_auto_menu
export EDITOR="vim"
bindkey -e
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-search-backward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

fortune -a
echo
