alias vi="$HOME/bin/stop-using"
alias dc="docker-compose"
alias sudo="sudo "
alias apt-get="$HOME/bin/stop-using"
alias o="octoeb"
alias eb="cd ~/Projects/eventboard.io"
alias edit_zshd="vim ~/.dotfiles/zsh.d"
alias mc="vim ."
alias da="django-admin"
alias jq="jqjq"
alias vim="nvim"

lsprog='ls'

# For OS X
if [[ `uname` == 'Darwin' ]]; then
  lsprog='gls'
  alias apt="brew"
fi

# For Linux
if [[ `uname` == 'Linux' ]]; then
  alias ssh="BINARY_SSH=ssh $HOME/bin/ssh-ident"
  alias scp="BINARY_SSH=scp $HOME/bin/ssh-ident"
fi

alias sqlite=sqlite3 # does anyone _ever_ use the old command?

if (( $+commands[bat] )); then
  alias cat="bat --theme=TwoDark"
fi

alias imgcat="wezterm imgcat"

alias ls="$lsprog --color=auto --human-readable \
    --group-directories-first --classify"
