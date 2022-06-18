
### Vim Mode ###

## Basic Settings ##
bindkey -v
export KEYTIMEOUT=15
export EDITOR='nvim'

## Edit a line in nvim with ctrl-v ##
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

## Escape Key To kj / backward-delete-char ##
bindkey -M viins 'kj' vi-cmd-mode
bindkey -v '^?' backward-delete-char

## Change Cursor Shape for Different Vim Modes ##
function zle-keymap-select () {
    VIMODE="${${KEYMAP/vicmd/}/(main|viins)}"
    # VIMODE="${${KEYMAP/vicmd/}/(main|viins)/}"
    # VIMODE="${${KEYMAP/vicmd/N}/(main|viins)/I}"
    zle reset-prompt
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}
