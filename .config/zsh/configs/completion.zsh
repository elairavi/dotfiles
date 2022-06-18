
### Zsh Completion ###

## Basic Completion ##
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zmodload zsh/complist
_comp_options+=(globdots)

## Auto Completion keybinding ##
(( ! ${+ZSH_AUTOSUGGEST_ACCEPT_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_ACCEPT_WIDGETS
	ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
		forward-char
		end-of-line
		vi-forward-char
		vi-end-of-line
		vi-add-eol
	)
}

bindkey '^b'   backward-word
bindkey '^[f'  forward-word

## zcompdump ##
() { emulate -L zsh
     local -r cache_dir=${XDG_CACHE_HOME:-$HOME/.cache}/zsh
     autoload -Uz _store_cache compinit
     zstyle ':completion:*' use-cache true
     zstyle ':completion:*' cache-path $cache_dir/.zcompcache
     [[ -f $cache_dir/.zcompcache/.make-cache-dir ]] || _store_cache .make-cache-dir
     compinit -C -d $cache_dir/.zcompdump
}
