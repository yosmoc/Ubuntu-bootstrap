export LANG=en_US.UTF-8
alias ls="ls -a --color=auto"
alias t="tig"
alias ta="tig --all"
alias k="kubectl"
export PATH=$PATH:~/tools
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.yarn/bin
export HOST=${HOST}
export EDITOR=vim
setopt correct
function chpwd() { ls }
setopt auto_pushd
setopt pushd_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
