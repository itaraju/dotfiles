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

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

autoload -U colors
colors

precmd() { pwd > "${XDG_RUNTIME_DIR}/.cwd" }

# aliases
alias vim=/usr/bin/vimx
alias e=exit
alias r='R --no-save --quiet'
alias h='highlight --out-format=ansi'
alias ll='ls -lh --color=auto'
alias diff='diff --color=always'
alias less='less -RSi'

# defaults
export EDITOR=vis
