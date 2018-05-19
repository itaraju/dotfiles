# - `.zshrc' is sourced in interactive shells. It should contain commands to
#     set up aliases, functions, options, key bindings, etc.
# - `.zshenv' is sourced on all invocations of the shell, unless the -f option is
#     set. It should contain commands to set the command search path, plus other
#     important environment variables. `.zshenv' should not contain commands that
#     produce output or assume the shell is attached to a tty.
# - `.zlogin' is sourced in login shells.

# viins keymap (check man zshzle)
bindkey -v
# more options for searching
setopt extendedglob
# TAB completion
# setopt menucomplete
setopt automenu

# prompt
PROMPT='%~> '

# aliases
alias l.='ls -d .*'
alias ll='ls -lh'
alias ls='ls -G'
alias top='top -stats command,pid,ppid,user,state,cpu,cpu_me,cpu_others,mem,vsize,time'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# ls colors
# (here: default+directory with cyan foreground)
# attributes:    1 2 3 4 5 6 7 8 9 0 1
export LSCOLORS="gxfxcxdxbxegedabagacad"

# create directory history (from: http://zsh.sourceforge.net/Intro/intro_6.html#SEC6)
# also use -<number>> to refer to itens in the hisotry, for cd command
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome
alias dh='dirs -v'
