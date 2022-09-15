# starts new terminal (urxvt) at "current" directory
# current directory given by ${XDG_RUNTIME_DIR}/.cwd
# and automatically set by zsh's precmd() { pwd > "${XDG_RUNTIME_DIR}/.cwd" }
# based on comments in:
#   https://faq.i3wm.org/question/150/how-to-launch-a-terminal-from-here/
#   https://superuser.com/q/735660
if [ -e "${XDG_RUNTIME_DIR}/.cwd" ]
then
    urxvt256c -cd "$(< ${XDG_RUNTIME_DIR}/.cwd)" &
else
    urxvt256c
fi

