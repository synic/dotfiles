PATHS=(
  "${HOME}/.asdf/shims"
  "${HOME}/.pyenv/shims"
  "${HOME}/.gobrew/current/bin"
  "${HOME}/.gobrew/bin"
  "/opt/homebrew/bin"
  "${HOME}/bin"
  "${HOME}/.local/bin"
  "/usr/local/bin"
  "${HOME}/.yarn/bin"
  "${HOME}/.config/yarn/global/node_modules/.bin"
  "${HOME}/.pub-cache/bin"
  "${HOME}/.fig/bin"
  "${HOME}/.go/bin"
  "${HOME}/.cargo/bin"
  "${HOME}/.bun/bin"
  "/opt/homebrew/opt/libpq/bin"
)
export GOROOT="$HOME/.gobrew/current/go"
export GOPATH="$HOME/.go"
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
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
export DENO_INSTALL="/home/synic/.deno"

# ITerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
  source "${HOME}/.iterm2_shell_integration.zsh"

# Misc
export EDITOR="nvim"

# secrets
test -e "${HOME}/.zsh_secrets" && \
  source "${HOME}/.zsh_secrets"

export ERL_AFLAGS="-kernel shell_history enabled"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/homebrew/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/homebrew/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/homebrew/google-cloud-sdk/completion.zsh.inc'; fi

[ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ] && . /opt/homebrew/opt/asdf/libexec/asdf.sh

export ARDMK_DIR=/opt/homebrew/opt/arduino-mk
