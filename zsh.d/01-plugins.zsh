# autoload -U +X bashcompinit && bashcompinit
# autoload -Uz compinit && compinit
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '^x^e' edit-command-line

# load zplug
if [[ ! -f ~/.zplug/init.zsh ]]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# installed plugins
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", defer:0
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/virtualenvwrapper", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "tonyseek/oh-my-zsh-virtualenv-prompt", as:plugin, defer:3
zplug "zsh-users/zsh-history-substring-search", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "lukechilds/zsh-nvm", from:github
zplug "supercrabtree/k", from:github
zplug "zuxfoucault/colored-man-pages_mod", from:github
zplug "mfaerevaag/wd", as:command, use:"wd.sh", hook-load:"wd() { . $ZPLUG_REPOS/mfaerevaag/wd/wd.sh }"
zplug "jeffreytse/zsh-vi-mode"
zplug "junegunn/fzf", use:"shell/*.zsh"
zplug "romkatv/powerlevel10k", as:theme, depth:1

# source plugins and add commands to $PATH
zplug load

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

test -e $HOME/.iterm2_shell_integrations.zsh && \
    source $HOME/.iterm_shell_integrations.zsh
