# source /path/to/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Home key
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
# End key
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
# Map Delete key
bindkey "\e[3~" delete-char

# Created by newuser for 5.9
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export RUSTUP_TOOLCHAIN="nightly"

(cat ~/.cache/wal/sequences &)


alias ls='ls --color=auto'
alias rm='rm -ri'
alias grep='grep --color=auto'
alias cls='clear'
alias o='xdg-open'
alias copy='wl-copy'
alias paste='wl-paste'
alias config='nvim /home/operator/.config/config-packages.md'
alias packs='pacman -Qeq'
alias df='df -h'
alias cat='bat'
alias ts='tmux-sessionizer'
#alias unzip='tar xvf'

source ~/.config/fzf/config

#PS1='[\u@\h \W]\$ '

pconfig() {
    LOGFILE=~/config-packages.md

    # Create the log file if it doesn't exist
    touch "$LOGFILE"

    # Install packages
    paru -S "$@"

    # Append to log
    for pkg in "$@"; do
        echo "- [ ] $pkg  # installed on $(date '+%Y-%m-%d')" >> "$LOGFILE"
    done

    echo "Logged packages needing config to: $LOGFILE"
}

markconfig() {
    sed -i "s/- \[ \] $1/- [x] $1/" ~/.config/config-packages.md
    echo "Marked '$1' as configured"
}

alias pconfig-todo='cat ~/.config/config-packages.md'

#eval $(ssh-agent); clear;
neofetch;

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters
