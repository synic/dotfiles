PATHS=(
  "/opt/homebrew/bin"
  "${HOME}/bin"
  "${HOME}/.local/bin"
  "/usr/local/bin"
  "${HOME}/Library/Python/3.9/bin"
  "${HOME}/.deno/bin"
  "${HOME}/.yarn/bin"
  "${HOME}/.config/yarn/global/node_modules/.bin"
  "${HOME}/.pub-cache/bin"
  "${HOME}/.fig/bin"
  "/opt/homebrew/opt/libpq/bin"
)

JOINED_PATHS=${"${PATHS[*]}"// /:}
export PATH=$JOINED_PATHS:$PATH
export WORKON_HOME=$HOME/.virtualenvs
export DOCKER_MACHINE_NAME=default
export GIT_SSH=$HOME/bin/ssh-ident
export EDITOR="nvim"

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONBREAKPOINT=ipdb.set_trace
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
VENV_WRAPPER=/opt/homebrew/bin/virtualenvwrapper.sh

source $VENV_WRAPPER

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export DENO_INSTALL="/home/synic/.deno"

export PATH=~/fvm/default/bin:$PATH
eval $(/opt/homebrew/bin/brew shellenv)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
