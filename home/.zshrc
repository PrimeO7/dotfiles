# Set PATH
typeset -U PATH path
path=("$path[@]" "$HOME/.local/bin")
export PATH

# Enable colors
autoload -U colors && colors

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Basic auto/tab completion
autoload -Uz compinit
zstyle ':completion:*' menu select
# case-insensitive autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/philipp/.zshrc'

autoload -Uz promptinit
promptinit
# End of lines added by compinstall
# syntax highlighting
if [ -d "/usr/share/zsh/plugins/zsh-syntax-highlighting" ]; then
	source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Starship prompt
eval "$(starship init zsh)"

# ALIASES GENERAL
alias v='nvim'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls -lAh'
alias cb='xclip -selection clipboard'
alias zzz='systemctl hibernate'

# ALIASES FOR GIT
alias gls='git log --show-signature --graph --abbrev-commit'
alias grt='cd "$(git rev-parse --show-toplevel)"'

# ALIASES FOR 42CURSUS
alias francinette=/home/philipp/francinette/tester.sh
alias paco=/home/philipp/francinette/tester.sh
alias 42exam='cd ~/Downloads && bash -c "$(curl https://grademe.fr)"'

# ALIASES FOR PACKAGE MANAGEMENT
alias pacs="pacman -Slq | fzf --multi --preview 'pacman -Si {}' | xargs -ro sudo pacman -S"
alias pacq="pacman -Qq | fzf --multi --preview 'pacman -Qi {}' | xargs -ro pacman -Qi"
alias pacr="pacman -Qq | fzf --multi --preview 'pacman -Qi {}' | xargs -ro sudo pacman -Rns"
alias aurs="paru -Slq | fzf --multi --preview 'paru -Si {}' | xargs -ro paru -S"

# GPG PINENTRY
export GPG_TTY=$(tty)

# FZF Source
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
