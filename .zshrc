# variables
export LS_COLORS='di=1;34:fi=37:ln=96:pi=93:so=93:bd=93:cd=93:or=91:mi=91:ex=1;32:*.rpm=90'
lsprog="ls"

if [[ `uname` == "Darwin" ]]; then
  lsprog="gls"
fi

# boostrap plugin manager
ZGEN_HOME="${HOME}/.zgen"

if [ ! -d "$ZGEN_HOME" ]; then
  git clone --depth=1 https://github.com/tarjoilija/zgen.git "$ZGEN_HOME"
fi

source "${ZGEN_HOME}/zgen.zsh"

if ! zgen saved; then
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/kubectl
  zgen oh-my-zsh plugins/kubectx
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load unixorn/fzf-zsh-plugin

  zgen save
fi

autoload -U compinit && compinit

# vim mode
bindkey -v
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# prompt
if command -v oh-my-posh >/dev/null 2>&1; then
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/zen.yaml)"
else
  echo "oh-my-posh not installed, not setting up prompt"
fi

# options
setopt no_auto_menu
setopt interactivecomments
setopt hist_ignore_dups
setopt noflowcontrol
setopt inc_append_history
setopt no_share_history
HISTSIZE=1000000
SAVEHIST=1000000
HISTDUP=erase
KEYTIMEOUT=1
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[precommand]=none

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no

# aliases
alias dc="podman compose"
alias ls="$lsprog --color=auto --human-readable --group-directories-first --classify"

if (( $+commands[nvim] )); then
  alias vim="nvim"
fi

if [[ $TERM_PROGRAM == "WezTerm" ]]; then
  alias imgcat="wezterm imgcat"
fi

alert() {
  "$@" && osascript -e "tell application \"${TERM_PROGRAM}\" to display dialog \"Job finished\""
}

# functions
p() {
  local result
  result=$(~/bin/project_finder.py "$@")
  if [ $? -eq 0 ]; then
    cd "$result"
  fi
}

zle-keymap-select () {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne "\e[2 q"
  else
    echo -ne "\e[5 q"
  fi
}
precmd_functions+=(zle-keymap-select)
zle -N zle-keymap-select

# shell integrations
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --zsh)"
else
  echo "fzf not installed, not setting up shell integration"
fi

if [[ ! -n "$CLAUDECODE" ]] && command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh --cmd cd)"
fi

if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

if command -v fortune >/dev/null 2>&1; then
  fortune
  echo ""
fi
