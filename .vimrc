" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" As search patttern is typed, show where it is matching
set incsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Highlight the screen line of the cursor with CursorLine
set cursorline

" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=i
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
"set number
set relativenumber
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
" colors - industry for terminal with a dark background
colorscheme industry
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
 
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" leader more accessible
let mapleader = " "

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
 
" adding lines - without entering insert mode
nmap <C-J> o<Esc>k
nmap <C-K> O<Esc>
nmap <leader>j i<CR><ESC>
" same as above, with spaces
nmap <C-H> i <ESC>l
nmap <leader>l a <ESC>
 
" next buffer
nnoremap <leader>t :bn<CR>
nnoremap <leader>T :bp<CR>

" one less keypress (as this implies killing ; jumps, ; remapped too)
" nnoremap ; :
" vnoremap ; :
" noremap ;; ;
" suggestion from: https://konfekt.github.io/blog/2016/10/03/get-the-leader-right
nnoremap : ,
xnoremap : ,
onoremap : ,
nnoremap , :
xnoremap , :
onoremap , :

" one more keypress, but easier than reaching esc:
inoremap jj <ESC>

" easier windowing
nmap <leader>w <C-w>

" Copy & Paste from clipboard
vnoremap <C-c> "*y :let @+=@*<CR>
nmap <C-p> "+p

" Insert a single character
" as in: http://vim.wikia.com/wiki/Insert_a_single_character
function! RepeatChar(char, count)
  return repeat(a:char, a:count)
endfunction
nnoremap <leader>i :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
nnoremap <leader>a :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

"------------------------------------------------------------
" Loading pathogen https://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"------------------------------------------------------------
" Completion/Context sensitive completion options

" where to search. The initial .,w,b,u,t,i is default.
" k brings search from dictionary, kspell only if set spell
set complete=.,w,b,u,t,i,kspell

"------------------------------------------------------------
" vim-airline settings
let g:airline#extensions#tabline#enabled = 1

"------------------------------------------------------------
" vim-surround customizations

" add/remove comments with 'c' in rmd, md files (for pandoc)
" Obs: removal not working well with multiple-lines
autocmd FileType rmd,pandoc let b:surround_99 = "<!--\r-->"
autocmd FileType rmd,pandoc nmap <buffer> dsc ds-ds-ds>x

"------------------------------------------------------------
" R, Rmd customizations - Nvim-R, pandoc related

" folding code blocks and YAML section
let g:pandoc#folding#fold_fenced_codeblocks = 1
let g:pandoc#folding#fold_yaml=1

" prevent spell
let g:pandoc#spell#enabled=0

" c-i to insert %in%
autocmd FileType rmd,r imap <buffer> <C-i> %in%

" assigm operator with Alt-M
set <M-->=-
let R_assign_map = '<M-->'

" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
" R commands in R output are highlighted
let g:Rout_more_colors = 1

" R in a terminal
let R_in_buffer = 0
let R_term = 'gnome-terminal'
let R_app = "rtichoke"
let R_cmd = "R"
let R_hl_term = 0
let R_bracketed_paste = 1
