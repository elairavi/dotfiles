
### Aliases ###

# Navigation/Remove/Move #
alias q='exit'
alias ls='ls -Fh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias la='ls -a -1'
alias ..='cd ..'
alias c='clear'
alias bat='bat --theme Nord'
alias cat='bat'
alias rm='rm -r -i'
alias rmf='rm -rf'
alias cp='cp -r -iv'
alias mv='mv -i'
alias se='~/Documents/scripts/fzf-search'
alias scr='~/Documents/scripts/fzf-scripts'

# Nvim/Nvim Jumps #
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias bsp='cd ~/.config && nvim bspwm/bspwmrc'
alias key='cd ~/.config && nvim bspwm/autoload/keys/sxhkdrc'
alias bar='cd ~/.config && nvim polybar/config'
alias tt='cd ~/Documents/git-box/trackerslist && git pull && nvim trackers_all.txt'
alias init='cd ~/.config/nvim'

# Pacman And Aur Stuff #
alias msync='rdo pacman-mirrors --country Germany,France,Austria,Spain --api --protocol https && rdo pacman -Syyu'
alias mstatus='pacman-mirrors --status'
alias update='rdo pacman -Syu'
alias upgrade='rdo pacman -Syyu'
alias install='rdo pacman -Syu'
alias search='pacman -Ss'
alias pacinfo='pacman -Si'
alias purge='rdo pacman -Rncs'
alias remove='rdo pacman -R'
alias aurse='paru -Ss'
alias aurinfo='paru -Si'
alias aurpu='paru -Rncs'
alias pkg='~/Documents/scripts/pkg'
# alias pac='~/Documents/scripts/pac'
# alias aur='~/Documents/scripts/aur'

# Firewall And Timeshift #
alias ufs='rdo ufw status verbose'
alias ufa='rdo ufw allow'
alias ufd='rdo ufw delete allow'
alias tsg='rdo timeshift-gtk'
alias tsl='rdo timeshift --list'
alias tsc='rdo timeshift --create --comment'
alias tsd='rdo timeshift --delete'
alias tsda='rdo timeshift --delete-all'
alias tsr='rdo timeshift --restore'

# Media #
alias media='~/Documents/scripts/media && /usr/bin/lf ~/.local/remote/lfmac'
alias dlp='yt-dlp'
alias yt='~/Documents/scripts/youtube/yt-nonfree/ytfzf -t -l --thumbnail-quality=1'
alias ytv='~/Documents/scripts/youtube/yt-nonfree/ytfzf -d -t -l -f'
alias yta='~/Documents/scripts/youtube/yt-nonfree/ytfzf -d -m -t -l'
alias ytl='~/Documents/scripts/youtube/yt-nonfree/ytfzf -S --sort -t -l --thumbnail-quality=1'
alias mp3='youtube-dl --ignore-config --extract-audio \
    --audio-format "mp3" --audio-quality 0 --embed-thumbnail \
    --add-metadata --metadata-from-title "%(artist)s - %(title)s" \
    --output "$HOME/Downloads/Sub-down/%(title)s.%(ext)s"'

# System #
alias fat='rdo mkfs.vfat -I'
alias lock='gpg -c --no-symkey-cache --cipher-algo AES256'
alias sys='~/Documents/scripts/sysz'
alias rb='rdo reboot now'
alias po='rdo poweroff'
alias mem='~/Documents/scripts/mem'
alias cpu='~/Documents/scripts/cpu-watch'
alias fm='watch free -h'
alias space='du -d 1 -h'
alias pf='ping -c 5'
alias vac='rdo ~/Documents/scripts/clean'
alias gu='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias startx='startx ~/.config/x11/.xinitrc'
alias sx='startx ~/.config/x11/.xinitrc'
alias sudo='rdo'
alias sshg='ssh-keygen -t rsa -b 4096'
alias sshc='ssh-copy-id'

# Password Stuff #
alias pg='~/Documents/scripts/pass-gen.py -l 200'

# Look Of The System #
alias sxiv='nsxiv -b'
alias sxg='nsxiv -b -t ~/Pictures/wallpapers/art'
alias nf='~/Documents/scripts/neofetch'
alias neofetch='~/Documents/scripts/neofetch'

# Git #
alias clone='git clone'
alias add='git add'
alias commit='git commit -m'
alias push='git push'
alias remote='git remote'
alias gr='git rm'
alias gp='git pull'
alias gs='git status'
alias gd='git diff | bat'
alias gl='git log | bat'

# Shortcuts #
alias mip='curl -4 https://ifconfig.co'
alias src='source ~/.config/zsh/.zshrc'
alias gz='tar -zcvf'
alias utar='tar -xzf'
alias speed='speedtest'
alias lf='~/.config/lf/scripts/lfub'
alias lfr='/usr/bin/lf'
alias lfs='/usr/bin/lf ~/.local/remote'
alias zup='find ~/.config/zsh/plugins -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias gitup='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias top='gotop'
alias cal='cal -m -y'
alias dym='dym -y'
alias wget='wget --hsts-file=$HOME/.cache/wget-hsts -t 10 -c --tries=75'
# alias get='wget --hsts-file=$HOME/.cache/wget-hsts -t 10 -c --tries=75 -P'
