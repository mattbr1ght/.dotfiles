# source /path/to/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Home key
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
# End key
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
# Map Delete key
bindkey "\e[3~" delete-char

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$PATH:$HOME/projects/ncl-org/target/debug"
export RUSTUP_TOOLCHAIN="nightly"
export EDITOR=nvim
export GPG_TTY=$(tty)
source .env

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
alias bios='sudo systemctl reboot --firmware-setup'
#alias unzip='tar xvf'

source ~/.config/fzf/config
source /usr/share/nvm/init-nvm.sh

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
#

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters

eval $(ssh-agent)

clear;neofetch --ascii ~/.config/neofetch/planet;



export PHPVM_DIR="/home/operator/.phpvm"
export PATH="$PHPVM_DIR/bin:$PATH"
if [[ -s "$PHPVM_DIR/phpvm.sh" ]]; then
  source "$PHPVM_DIR/phpvm.sh"
fi
export PATH="/home/operator/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/operator/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# Load pyenv automatically by appending
# the following to 
# ~/.zprofile (for login shells)
# and ~/.zshrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
