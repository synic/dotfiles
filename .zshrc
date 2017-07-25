autoload -U +X bashcompinit && bashcompinit

# load antigen
source $HOME/.dotfiles/.zsh.d/antigen.zsh

antigen use oh-my-zsh

# antigen plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle lukechilds/zsh-nvm
antigen bundle robbyrussell/oh-my-zsh plugins/virtualenvwrapper
antigen bundle robbyrussell/oh-my-zsh plugins/pip
antigen bundle tonyseek/oh-my-zsh-virtualenv-prompt

antigen apply

# fix ls colors on OS X
export LS_COLORS_BOLD='no=00:fi=00:di=;34:ln=01;95:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.tex=01;33:*.sxw=01;33:*.sxc=01;33:*.lyx=01;33:*.pdf=0;35:*.ps=00;36:*.asm=1;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=1;30:*.am=1;33:*.py=0;34:'
export LS_COLORS_NORM='no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.deb=00;31:*.rpm=00;31:*.jar=00;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.mpg=00;35:*.mpeg=00;35:*.avi=00;35:*.fli=00;35:*.gl=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.ogg=00;35:*.mp3=00;35:*.wav=00;35:*.tex=00;33:*.sxw=00;33:*.sxc=00;33:*.lyx=00;33:*.pdf=0;35:*.ps=00;36:*.asm=0;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=0;30:*.am=0;33:*.py=0;34:'
export MY_LS_COLORS="${MY_LS_COLORS:-LS_COLORS_BOLD}"
eval export LS_COLORS=\${$MY_LS_COLORS}
export LSCOLORS=exfxcxdxbxexexabagacad

# aliases
alias vi="$HOME/bin/stop-using vi"
alias dc="docker-compose"
alias sudo="sudo "
alias ssh="BINARY_SSH=ssh $HOME/bin/ssh-ident"
alias scp="BINARY_SSH=scp $HOME/bin/ssh-ident"
alias apt-get="$HOME/bin/stop-using apt-get"

# load my theme
source $HOME/.dotfiles/.zsh.d/synic.zsh-theme

# customization options
setopt no_auto_menu
export EDITOR="vim"
bindkey -e
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-search-backward
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
source ${HOME}/Projects/octoeb/completion.sh

# functions
histsearch() { grep "$@" ~/.zsh_history }

fortune -a
echo ""
