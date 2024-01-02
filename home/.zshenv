PATHS=(
  "/opt/homebrew/bin"
  "${HOME}/bin"
  "${HOME}/.local/bin"
  "/usr/local/bin"
  "${HOME}/.yarn/bin"
  "${HOME}/.config/yarn/global/node_modules/.bin"
  "${HOME}/.pub-cache/bin"
  "${HOME}/.fig/bin"
  "/opt/homebrew/opt/libpq/bin"
)

JOINED_PATHS=${"${PATHS[*]}"// /:}
export PATH=$JOINED_PATHS:$PATH

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Python setup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONBREAKPOINT=ipdb.set_trace
VENV_WRAPPER=/opt/homebrew/bin/virtualenvwrapper.sh
source $VENV_WRAPPER

# Docker setup
export DOCKER_MACHINE_NAME=default

# Node setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export DENO_INSTALL="/home/synic/.deno"

# bun completions
[ -s "/Users/synic/.bun/_bun" ] && source "/Users/synic/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ITerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
  source "${HOME}/.iterm2_shell_integration.zsh"

# Misc
export EDITOR="nvim"
export ZVM_VI_ESCAPE_BINDKEY=fd
