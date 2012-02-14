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
