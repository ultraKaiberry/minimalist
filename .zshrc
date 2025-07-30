# Path to zsh
export SHELL=/bin/zsh

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt auto_cd


# Prompt
autoload -Uz colors && colors
PROMPT='SnowMel %F{cyan}%~%f > '


# Enable auto-completion
autoload -Uz compinit
compinit

# Enable syntax highlighting (requires plugin, see below)
source ${ZSH_HIGHLIGHT_DIR:-$HOME/.zsh/zsh-syntax-highlighting}/zsh-syntax-highlighting.zsh

# Enable autosuggestions (optional, needs plugin)
 source ${ZSH_AUTOSUGGEST_DIR:-$HOME/.zsh/zsh-autosuggestions}/zsh-autosuggestions.zsh

# Completion options
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' group-name ''

# Better globbing
setopt extended_glob

# alias bs
alias la='ls -A'
alias c='clear'
alias update='pkg upgrade && pkg update'
alias rf='rm -rf'
alias p='cd storage/shared/projects'
