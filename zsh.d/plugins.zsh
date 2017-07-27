# load antigen

if [[ ! -f $HOME/.dotfiles/cache/antigen/antigen.zsh ]]; then
    git clone https://github.com/zsh-users/antigen.git \
        $HOME/.dotfiles/cache/antigen
fi

source $HOME/.dotfiles/cache/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle lukechilds/zsh-nvm
antigen bundle robbyrussell/oh-my-zsh plugins/virtualenvwrapper
antigen bundle robbyrussell/oh-my-zsh plugins/pip
antigen bundle tonyseek/oh-my-zsh-virtualenv-prompt
antigen bundle supercrabtree/k
antigen bundle zuxfoucault/colored-man-pages_mod

antigen apply

# load my theme
source $HOME/.dotfiles/zsh.d/synic.zsh-theme

test -e $HOME/.iterm2_shell_integration.zsh && \
    source $HOME/.iterm2_shell_integration.zsh
test -e $HOME/Projects/octoeb/completion.sh && \
    source $HOME/Projects/octoeb/completion.sh
