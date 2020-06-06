if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path $HOME/.local/bin
    export (envsubst < $XDG_CONFIG_HOME/env)
end

# silence
set fish_greeting

