if status is-login
    # If running from tty1 start sway
    if test "$(tty)" = "/dev/tty1"
        export (envsubst < $XDG_CONFIG_HOME/env)
        set --export PINENTRY_USER_DATA "USE_GNOME3"
        exec sway
    end
end

