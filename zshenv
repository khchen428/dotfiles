typeset -U path
if [[ $OSTYPE == darwin* ]]; then
    path=(/opt/local/{bin,sbin} $path)
fi
path=($HOME/bin $path)
