execute pathogen#infect()

filetype plugin indent on            

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'flazz/vim-colorschemes'
Plugin 'lfilho/cosco.vim'
Plugin 'VundleVim/Vundle.vim'
Bundle 'takac/vim-hardtime'
call vundle#end()            " required
""""""""""END VUNDLE """""""""""""

let g:airline_theme='minimalist'

"HardTime
let g:hardtime_maxcount = 4
let g:hardtime_default_on = 4
let g:list_of_normal_keys = ["j", "k", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

"Custom vim
let g:auto_save = 1 
set number
set number relativenumber
syntax on
inoremap jk <Esc>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>m :w!<cr>
nmap <leader>w :wq!<cr>
vnoremap t :'<,'>!pbcopy<cr>u


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTREE 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeQuitOnOpen=1
nnoremap <leader>a :w<CR>:NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>s :source $MYVIMRC<CR>
map <S-Down> <C-E>
map <S-Up> <C-Y>map <S-Down> <C-E>noremap 
