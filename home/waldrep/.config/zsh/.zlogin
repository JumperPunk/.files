# use gpg-agent for ssh authentication
typeset -x SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

## Environment variables
# paths
typeset -x XDG_CONFIG_HOME="${HOME}/.config"
typeset -x XDG_DATA_HOME="${HOME}/.local/share"
typeset -x PATH="${HOME}/bin:${HOME}/scrap:${PATH}"

# default apps
typeset -x BROWSER=chromium
typeset -x TERMINAL=jp-terminal
typeset -x VISUAL=/usr/bin/vim

# make apps use XDG_DATA_HOME
typeset -x GNUPGHOME="${XDG_DATA_HOME}/gnupg"
typeset -x PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"

# make apps use XDG_CONFIG_HOME
typeset -x DOT_SAGE="${XDG_CONFIG_HOME}/sage"
typeset -x GIMP2_DIRECTORY="${XDG_CONFIG_HOME}/gimp"
typeset -x VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
typeset -x VIMDOTDIR="${XDG_CONFIG_HOME}/vim"
typeset -x LESSHISTFILE="${XDG_CONFIG_HOME}/less/history"
typeset -x LESSKEY="${XDG_CONFIG_HOME}/less/keys"

# misc
typeset -x KEYTIMEOUT=1
typeset -x GPG_TTY="${TTY}"
typeset -x VDPAU_DRIVER="i695"
typeset -x GDK_DPI_SCALE=1.25
