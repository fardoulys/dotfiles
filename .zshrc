# It's my zsh config!

# Path to your oh-my-zsh installation.
  export ZSH="/home/ardo/.oh-my-zsh"

# theme
ZSH_THEME="agnoster"

# nicely formatted timestamps for "history" command
HIST_STAMPS="%a %d/%m/%y %l:%M %p"

# plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias tmuxconfig="vim ~/.tmux.conf"
