# load zplug
if [[ ! -f ~/.zplug/init.zsh ]]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# installed plugins
zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", defer:0
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/virtualenvwrapper", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "tonyseek/oh-my-zsh-virtualenv-prompt", as:plugin, defer:3
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/vagrant", from:oh-my-zsh, if:"which vagrant"
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"
zplug "lukechilds/zsh-nvm"

# install plugins if there are plugins that have not been installed
if ! zplug check; then
    echo
    printf 'Install zsh plugins? [y/N]: '
    if read -q; then
        echo
        zplug install
    fi
fi

# source plugins and add commands to $PATH
zplug load

# load my theme
source $HOME/.dotfiles/.zsh.d/synic.zsh-theme
