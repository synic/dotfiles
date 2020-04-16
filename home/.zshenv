export WORKON_HOME=$HOME/.virtualenvs

export PATH=~/bin:~/.local/bin:/usr/local/bin:$PATH
export DOCKER_MACHINE_NAME=default
export GIT_SSH=$HOME/bin/ssh-ident
export EDITOR="vim"

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

VENV_WRAPPER=/usr/share/virtualenvwrapper/virtualenvwrapper.sh
export PYTHONBREAKPOINT=pdbpp.set_trace
source $VENV_WRAPPER
