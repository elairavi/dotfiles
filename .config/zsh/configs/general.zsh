
### General Settings ###
setopt APPEND_HISTORY          # Append to the history file rather than replace it.
setopt AUTO_CD                 # [default] If can't execute the directory, perform the cd command to that.
setopt EXTENDED_GLOB           # Treat the `#`, `~` and `^` characters as part of patterns for globbing.
setopt BRACE_CCL               # Expand expressions in braces which would not otherwise undergo brace expansion.
setopt GLOB_DOTS               # Don't require a leading '.' in a filename to be matched explicitly.
setopt MARK_DIRS               # Append a trailing `/` to all directory names resulting from globbing.
setopt HIST_FIND_NO_DUPS       # don't show dupes when searching
setopt HIST_IGNORE_DUPS        # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE       # [default] Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks before recording an entry.
setopt HIST_SAVE_NO_DUPS       # Don't write duplicate entries in the history file.
setopt SHARE_HISTORY           # Share history between all sessions.
setopt COMPLETE_ALIASES        # Prevent aliases from being substituted before completion is attempted.
setopt INTERACTIVE_COMMENTS    # [default] Allow comments even in interactive shells.
setopt NO_NOMATCH              # [default] unmatched patterns are left unchanged
setopt IGNORE_EOF              # [default] prevent accidental C-d from exiting shell
setopt LIST_PACKED             # make completion lists more densely packed

## History ##
HISTFILE=~/.config/zsh/configs/zsh_history
HISTSIZE=10000
SAVEHIST=10000

## Time Look ##
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

## Fix Paste ##
zle_highlight=('paste:none')

## Use lf to switch directories ##
bindkey -s '^[l' 'lf\n'

## Update zsh plugins ##
bindkey -s '^[u' 'zup\n'

## Prevent The Prompt From Updating ##
DISABLE_UPDATE_PROMPT=true
