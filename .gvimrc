" colors
colorscheme industry
set bg=dark

" fonts
set guifont=Monaco:h12

" enabling mouse for all modes
set mouse=a

" no scrollbars
set guioptions-=rL

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

" gruvbox conf (https://github.com/morhetz/gruvbox/wiki/Configuration)
let g:gruvbox_contrast_dark = 'hard'

" ------------------------------------------------
" Key mappings

" using mac command key (all commented-out here, as cmd-ctrl were system-wide switched)
" imap <D-r> <c-r>
" nmap <D-r> <c-r>
" macm Edit.Select\ All key=<D-A>
" imap <D-a> <c-a>
" nmap <D-a> <c-a>
" macm Edit.Cut key=<D-X>
" imap <D-x> <c-x>
" nmap <D-x> <c-x>
" macm File.Print key=<D-P>
" imap <D-p> <c-p>
" macm File.New\ Window key=<D-N>
" imap <D-n> <c-n>
" macm Edit.Find.Find\.\.\. key=<D-F>
" imap <D-f> <c-f>
" macm File.Open\.\.\. key=<D-O>
" imap <D-o> <c-o>
" nmap <D-o> <c-o>
" macm Tools.List\ Errors key=<D-L>
" imap <D-l> <c-l>
" imap <D-]> <c-]>
" nmap <D-]> <c-]>

" maping A-CR to run commands on the last terminal
nmap <A-CR> !!send_text_term.sh <CR><Undo><Down>
vmap <A-CR> !send_text_term.sh <CR><Undo> `><Down>

" mapping cmd-CR to run commands in R
autocmd FileType r,rmd map <buffer> <D-CR> !!send_text_R.sh <CR><Undo><Down>
autocmd FileType r,rmd vmap <buffer> <D-CR> !send_text_R.sh <CR><Undo>`><Down>

" compiling RMarkdown files in R.app
autocmd FileType rmd nmap <leader>K :silent !knit_in_R.sh %:p<CR>
