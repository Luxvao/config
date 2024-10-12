# Interactive setup
if status --is-interactive
    # Variables
    set command_stack ""
    # Special variable. Used for specifying conditions for locking zellij
    set zellij_lock_parameters hx helix nvim /usr/bin/helix /usr/bin/nvim /home/bor/.config/helix/helix_greeting

    # Paths
    fish_add_path /home/bor/.cargo/bin/ /home/bor/flutter/bin

    # Aliases 
    alias hx="~/.config/helix/helix_greeting | helix"

    # Events
    function fish_preexec --on-event fish_preexec
        # Get the actual command being ran
        set -l command (string split ' ' $argv)[1]

        # Push to command_stack
        set -a command_stack $command

        if not test -z $ZELLIJ_SESSION_NAME
            for parameter in $zellij_lock_parameters
                if test $command = $parameter
                    zellij --session $ZELLIJ_SESSION_NAME action switch-mode locked >/dev/null 2>/dev/null
                end
            end
        end
    end

    function fish_postexec --on-event fish_postexec
        # Get last command and check if it's helix/neovim
        set -l command $command_stack[-1]

        # Pop it off
        set -e command_stack[-1]

        if not test -z $ZELLIJ_SESSION_NAME
            for parameter in $zellij_lock_parameters
                if test $command = $parameter
                    zellij --session $ZELLIJ_SESSION_NAME action switch-mode normal >/dev/null 2>/dev/null
                end
            end
        end
    end

    # Starship
    starship init fish | source
end
