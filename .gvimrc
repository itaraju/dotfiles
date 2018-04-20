" general things
set bg=dark
" maping A-CR to run commands on the last terminal
nmap <A-CR> !!send_text_term.sh <CR> u j
vmap <A-CR> !send_text_term.sh <CR> u `>j

" mapping cmd-CR to run commands in R
autocmd FileType r,rmd map <buffer> <D-CR> !!send_text_R.sh <CR> u j
autocmd FileType r,rmd vmap <buffer> <D-CR> !send_text_R.sh <CR> u `>j

" fixing python3 errors
" from: https://github.com/vim-pandoc/vim-pandoc/issues/259
if has('python3')
    command! -nargs=1 Py py3 <args>
    set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.6/Python
    set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.6
else
    command! -nargs=1 Py py <args>
    set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
    set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
endif
