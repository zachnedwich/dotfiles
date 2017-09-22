

#
# User configuration sourced by interactive shells
#

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

#
# NVM plugin
#
source ~/.zsh-nvm/zsh-nvm.plugin.zsh


# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi
