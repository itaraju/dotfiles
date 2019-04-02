# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/itaraju/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# aliases
alias vim=/usr/bin/vimx
alias e=exit
alias r=radian

# defaults
export EDITOR=vimx
