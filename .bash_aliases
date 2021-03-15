
# https://stackoverflow.com/questions/2518127/how-to-reload-bashrc-settings-without-logging-out-and-back-in-again
# source ~/.bashrc
# . ~/.bashrc

# https://unix.stackexchange.com/questions/20396/make-cd-automatically-ls
# Changing dir and looking at contents 2 lvl deep
function cd {
builtin cd "$@" && ls -la && tree -f -L 2 -h -D --du
}

# https://www.tecmint.com/linux-tree-command-examples/
# List tree 2 levels deep with all sizes and hidden files
alias t='tree -f -L 2 -h -D --du -a'

# ZSH-like history in bash
# https://stackoverflow.com/questions/42299437/zsh-like-history-in-bash
# ctrl+r or up down when writing
bind '"\e[A": history-search-backward'
bind '"\eOA": history-search-backward'
