export PATH=~/bin:~/.local/bin:/usr/local/bin:$PATH
export DOCKER_MACHINE_NAME=default
export GIT_SSH=$HOME/bin/ssh-ident
export EDITOR="vim"

# specific env settings for OS X
if [[ `uname` == 'Darwin' ]]; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
fi
