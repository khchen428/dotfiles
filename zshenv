typeset -U path
path=($HOME/bin {$HOME,/opt}/local/{bin,sbin} $path)
path=($^path(-/N))
