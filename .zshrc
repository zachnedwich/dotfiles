

#
# User configuration sourced by interactive shells
#
export TERM='xterm-256color'

# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi

#
# User configuration sourced by interactive shells
#
# Vi mode
export KEYTIMEOUT=1
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

#
# Shared aliases from bash
#
source $HOME/.aliases

export PATH=$PATH:/home/zach/.cargo/bin


# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi
