# XDG paths 
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html 
# https://wiki.archlinux.org/title/XDG_Base_Directory
export "XDG_CONFIG_HOME=$HOME/.config"
export "XDG_CACHE_HOME=$HOME/.cache"
export "XDG_DATA_HOME=$HOME/.local/share"
export "XDG_STATE_HOME=$HOME/.local/state"

# Manually setting environment variables for necessary software.
# https://wiki.archlinux.org/title/XDG_Base_Directory
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
