export WORKON_HOME=$HOME/.virtualenvs

export PATH=~/bin:~/.local/bin:/usr/local/bin:~/.deno/bin:$PATH
export DOCKER_MACHINE_NAME=default
export GIT_SSH=$HOME/bin/ssh-ident
export EDITOR="vim"

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONBREAKPOINT=ipdb.set_trace
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
VENV_WRAPPER=~/.local/bin/virtualenvwrapper.sh

source $VENV_WRAPPER
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export DENO_INSTALL="/home/synic/.deno"

export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.spicetify"
