" colors
colorscheme industry
set bg=dark

" enabling mouse for all modes
set mouse=a

" maping A-CR to run commands on the last terminal
nmap <A-CR> !!send_text_term.sh <CR> u j
vmap <A-CR> !send_text_term.sh <CR> u `>j

" mapping cmd-CR to run commands in R
autocmd FileType r,rmd map <buffer> <D-CR> !!send_text_R.sh <CR> u j
autocmd FileType r,rmd vmap <buffer> <D-CR> !send_text_R.sh <CR> u `>j

" compiling RMarkdown files in R.app
autocmd FileType rmd nmap <leader>K :silent !knit_in_R.sh %:p<CR>

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
