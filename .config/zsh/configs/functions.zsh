
### zsh Functions ###

## Auto Start Xorg Server ##
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx "~/.config/x11/.xinitrc"
fi

## Terminal Calculator ##
calc() python3 -c "from math import *; print($*);"

## List Stuff After CD ##
cd () { builtin cd "$@" && ls -a -1 }

## Global Extract ##
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xvzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via this, try again later:)" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

## Plugin Manager ##
function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$HOME/.config/zsh/plugins/$PLUGIN_NAME" ]; then
    else
        git clone "https://github.com/$1.git" "$HOME/.config/zsh/plugins/$PLUGIN_NAME"
    fi
}

## Plugins ##
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "Aloxaf/fzf-tab"
zsh_add_plugin "ohmyzsh/ohmyzsh"  ## I Only Need One Thing From 0hmyzsh
zsh_add_plugin "BlaineEXE/zsh-cmd-status"
zsh_add_plugin "hlissner/zsh-autopair"
