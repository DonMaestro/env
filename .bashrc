#
# ~/.bashrc
#

source ${XDG_CONFIG_HOME}/rc

#PS1="[\e[3;95m\u@\h\e[0m \W] \\$ "


# Add this lines at the top of .bashrc:
# [[ $- == *i* ]] && source $HOME/.config/blesh/ble.sh --noattach

# your bashrc settings come here...

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
	. /usr/share/bash-completion/bash_completion

