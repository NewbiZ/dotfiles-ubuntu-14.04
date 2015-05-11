" Vim configuration file (.vimrc)
" Last edited: 2009-09-04
" Aurelien Vallee <vallee.aurelien@gmail.com>

" Pathogen bundle infection
execute pathogen#infect()

"==============================================================================
" BASIC PREFERENCES
"==============================================================================
" Show special endline and tab characters
set list
set listchars=tab:→\ ,trail:⋅

" Always show status line, even when only 1 buffer is opened
set laststatus=2

" Drop 'vi' compatibility
set nocompatible

" No backup nor swap files
set nobackup
set nowritebackup

" Syntax highlighting enabled
syntax on

" Use file type to guess syntax highlighting and indentation
filetype plugin on
filetype plugin indent on

" Tabs are 2 characters wide
set tabstop=4

" Indentation size is 2 characters
set shiftwidth=4

" Tabs are converted to spaces
set expandtab

" Display the cursor position on the bottom right corner
set ruler

" Allow backspace, space, and arrow keys to wrap lines
set whichwrap=b,s,<,>,[,]

" Display line numbers
set number

" Quicky display matching paren/bracket when typing
"set showmatch

" Display --INSERT-- or --REPLACE-- in status line
set showmode

" Enable basic mouse support (selection, placement and scrolling)
set mouse=a

" Define places where backspace is allowed to remove a character
set backspace=indent,eol,start

" Highlight the current line background
set cursorline

" Do not wrap text, keep it in a single line
set nowrap

" Enable incremental search
set incsearch

" Enable zenburn color scheme, with a darker background
set background=dark
colors bubblegum-256-dark

" Start scrolling 5 lines before the window border
set so=5

"==============================================================================
" MAPPINGS
"==============================================================================
" Center search results
noremap n nzz
noremap N Nzz

"==============================================================================
" Powerline configuration
"==============================================================================
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1

let g:syntastic_c_no_include_search=1
let g:syntastic_c_check_header=1
