# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="synic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras python django virtualenvwrapper command-not-found wd zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases!
alias ll="ls -AF"
alias cp="rsync -avh --progress"

# Customize to your needs...
setopt no_auto_menu
export PATH=/home/synic/bin:/home/synic/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/synic/bin:/home/synic/Projects/android-sdk-linux/tools:/home/synic/Projects/android-sdk-linux/platform-tools:/opt/java/bin
export PATH=$PATH:/opt/gcc-arm-none-eabi-4_8-2014q3/bin:~/pebble-dev/PebbleSDK-2.8.1/bin:/opt/bin
export ANDROID_HOME=~/Projects/android-sdk-linux
export OPENCM3_DIR=~/Projects/libopencm3
bindkey -v
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-search-backward
fortune -a
echo ""
