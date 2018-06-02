# vi mode in bash
set editing-mode vi
# to have c-l to clear the screen in vi mode
bind -m vi-insert "\C-l":clear-screen

# aliases
alias l.='ls -d .*'
alias ll='ls -lh'
alias ls='ls -G'
alias Rs='Rscript --vanilla -e'
alias top='top -stats command,pid,ppid,user,state,cpu,cpu_me,cpu_others,mem,vsize,time'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
## rsync with no port config (like scp) and archive as default
alias rsync2="rsync -avz --rsh='ssh -F $HOME/.ssh/config_noport'"

# ls colors
# (here: default+directory with cyan foreground)
# attributes:    1 2 3 4 5 6 7 8 9 0 1
export LSCOLORS="gxfxcxdxbxegedabagacad"
