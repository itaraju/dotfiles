alias l.='ls -d .*'
alias ll='ls -lh'
alias ls='ls -G'
alias Rs='Rscript --vanilla -e'
alias top='top -stats command,pid,ppid,user,state,cpu,cpu_me,cpu_others,mem,vsize,time'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
## rsync with no port config (like scp) and archive as default
alias rsync2="rsync -avz --rsh='ssh -F $HOME/.ssh/config_noport'"
