" general things
set bg=dark
" maping A-CR to run commands on the last terminal
nmap <A-CR> !!send_text_term.sh <CR> u
vmap <A-CR> !send_text_term.sh <CR> u
