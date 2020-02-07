# ------------HISTORY OPTIONS-----
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#---------------------------------

# Set the editor
export EDITOR=vim

# Set the node path
export NODE_PATH=/usr/local/lib/node_modules

# LD library path
export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"

# Don't check mail when opening terminal.
unset MAILCHECK

# Ok this adds support for colours. Enjoy
export TERM=xterm-256color

