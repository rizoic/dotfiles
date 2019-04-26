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
alias jn="jupyter notebook"

# Lets accept 1 out of 5 times you are going to type it sl. :)
alias sl="ls"

# Aliases for conda
alias cac="conda activate"
alias cda="conda deactivate"

# Alias for libreoffice utilities
alias lcalc="libreoffice --calc"

# Alias for xclip
# For the default clipboard
alias c='xclip -selection clipboard'
alias v='xclip -selection clipboard -o'

# Launch ranger
alias r='ranger'

# Launch sublime text
alias s='subl'

