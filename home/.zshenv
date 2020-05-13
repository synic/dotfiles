export WORKON_HOME=$HOME/.virtualenvs

export PATH=~/bin:~/.local/bin:/usr/local/bin:$PATH
export DOCKER_MACHINE_NAME=default
export GIT_SSH=$HOME/bin/ssh-ident
export EDITOR="vim"

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONBREAKPOINT=ipdb.set_trace
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
VENV_WRAPPER=/usr/local/bin/virtualenvwrapper.sh
source $VENV_WRAPPER
