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
alias mc="vim ."

lsprog='ls'
if [[ `uname` == 'Darwin' ]]; then
    lsprog='gls'
fi

alias ls="$lsprog --color=auto --human-readable \
    --group-directories-first --classify"
