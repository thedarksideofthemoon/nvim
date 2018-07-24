# Use nvim instead of vim
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim

# Use vi keybindings in the terminal
set editing-mode vi
set keymap vi-command

# Color scheme
BASE16_SHELL=$HOME/.config/nvim/plugged/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
alias darkbg="base16_onedark"
alias lightbg="base16_one-light"

# Promptline
if [[ -v VIM_DEVICONS ]]; then
    source $HOME/.config/nvim/promptline.sh
fi
