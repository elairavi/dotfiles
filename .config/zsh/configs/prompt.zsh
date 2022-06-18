
### Prompt Config ###

## Git ##
autoload -Uz vcs_info
autoload -U colors && colors
zstyle ':vcs_info:*' enable git

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
#
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!'
    fi
}

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[white]%}%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[green]%} %b%{$fg[white]%}"

## Prompt Arrow ##
PROMPT='%(?:%{$fg[white]%}➜ :%{$fg[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}'
RPROMPT='${VIMODE}'
PROMPT+="\$vcs_info_msg_0_ "
