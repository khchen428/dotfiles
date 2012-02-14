typeset -U path
if [[ $OSTYPE == darwin* ]]; then
    path=(/opt/local/{bin,sbin} $path)
fi
path=($HOME/bin $path)

if which vim &>/dev/null; then
    export EDITOR=$(which vim)
else
    export EDITOR=$(which vi)
fi
