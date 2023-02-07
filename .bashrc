#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$HOME/.local/bin:$PATH

PS1='[\u@\h \W]\$ '

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
	. /usr/share/bash-completion/bash_completion
  [[ $(fgconsole 2>/dev/null) == 1  ]] && exec startx -- vt1

# Aliases

alias dotfiles='/usr/bin/git --git-dir=/home/ezequiel/dotfiles/ --work-tree=/home/ezequiel'
alias grep='grep --color=auto'
alias bat='bat --style=plain --paging=never'
alias ls='exa --group-directories-first'
alias tree='exa -T'

# Programs to run on startup

neofetch
