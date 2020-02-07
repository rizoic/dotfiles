# Map vim to vi
alias vi='vim'

# Set open for xdg-open
alias o="rifle"

# Some tmux-related shell aliases

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new -s'

# Lists all ongoing sessions
alias tl='tmux ls'

# Quickly start a jupyter notebook
alias jn='tmux new-session -d -s "jupyter" jupyter notebook'

# Lets accept 1 out of 5 times you are going to type it sl. :)
alias sl="ls"

# Aliases for conda
alias cac="conda activate"
alias cda="conda deactivate"

# Alias for libreoffice utilities
alias lcalc="libreoffice --calc"

# Alias for xclip
# For the default clipboard
alias c='xargs echo -n|xclip -selection clipboard'
alias v='xclip -selection clipboard -o'

# Launch ranger
alias r='ranger'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Make rm safer by pointing it to safe-rm
alias rm='safe-rm'

# Make a youtube audio player
alias plya='tmux new-session -d -s "mpv" mpv --no-video'

