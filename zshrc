autoload -U colors compinit zsh/terminfo

if [[ $terminfo[colors] -ge 8 ]]; then
    colors

    if which gls &>/dev/null; then
        alias ls="gls --color"
    elif [[ $OSTYPE == linux* ]]; then
        alias ls="ls --color"
    else
        alias ls="ls -G"
    fi

    PROMPT="%{${fg_bold[green]}%}%n@%m %{${fg_bold[blue]}%}%~ %{${fg_no_bold[default]}%}%# "
else
    PROMPT="%n@%m %~ %# "
fi

compinit
zstyle ":completion:*:descriptions" format "%U%B%d%b%u"
zstyle ":completion:*:warnings" format "%BSorry, no matches for: %d%b"

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
