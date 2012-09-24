OMPLETION_WAITING_DOTS=true
DISABLE_AUTO_UPDATE=true
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=candy

source $ZSH/oh-my-zsh.sh

if which vim &>/dev/null; then
    export EDITOR=$(which vim)
else
    export EDITOR=$(which vi)
fi

if which virtualenvwrapper.sh &>/dev/null; then
    WORKON_HOME=$HOME/.virtualenvs

    if [[ ! -e $WORKON_HOME ]]; then
        mkdir $WORKON_HOME
    fi

    if [[ -d $WORKON_HOME ]]; then
        export WORKON_HOME
        source $(which virtualenvwrapper.sh)
    else
        unset WORKON_HOME
    fi
fi

