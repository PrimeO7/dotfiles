# XDG paths 
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html 
# https://wiki.archlinux.org/title/XDG_Base_Directory
export "XDG_CONFIG_HOME=$HOME/.config"
export "XDG_CACHE_HOME=$HOME/.cache"
export "XDG_DATA_HOME=$HOME/.local/share"
export "XDG_STATE_HOME=$HOME/.local/state"

# Add $HOME/.local/bin to 'PATH'
export PATH="$HOME/.local/bin:$PATH"
# Manually setting environment variables for necessary software.
# https://wiki.archlinux.org/title/XDG_Base_Directory
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# Default programs
# https://wiki.archlinux.org/title/Environment_variables#Default_programs
export BROWSER="firefox"
export EDITOR="nvim"
# export READER="zathura"
export TERMINAL="alacritty"
export VISUAL="nvim"

# fzf
export FZF_DEFAULT_COMMAND="fd --follow --hidden"
export FZF_DEFAULT_OPTS="--height 40% \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '[ -f {} ] \
&& bat --style=numbers --color=always {} \
|| tree -a -C -L 1 {}'"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
export FZF_ALT_C_OPTS="--preview 'tree -a --gitignore -C -L 2 {}'"
