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
zplug "plugins/vagrant", from:oh-my-zsh, if:"which vagrant"
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"
zplug "lukechilds/zsh-nvm", from:github
zplug "supercrabtree/k", from:github
zplug "zuxfoucault/colored-man-pages_mod", from:github

# install plugins if there are plugins that have not been installed
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to $PATH
zplug load

# load my theme
source $HOME/.dotfiles/zsh.d/synic.zsh-theme

test -e $HOME/.iterm2_shell_integrations.zsh && \
    source $HOME/.iterm_shell_integrations.zsh
test -e $HOME/Projects/octoeb/completion.sh && \
    source $HOME/Projects/octoeb/completion.sh
