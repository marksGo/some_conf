" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

set nocompatible
" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on


let mapleader = " "


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse-=a		" Enable mouse usage (all modes)
hi Identifier ctermfg=blue cterm=none
set number
set nocompatible
filetype on
syntax on
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set hlsearch
set history=1000
set wildmenu
set showmatch
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.xlsx,*.flv,*.pyc,*.img

"for Plugin vim-airline
set laststatus=2


call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'Yggdroot/LeaderF',{'do':'./install.sh'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'connorholyday/vim-snazzy'
Plug ''
call plug#end()

color snazzy
let g:SnazzyTransport = 1
let g:lightline = {'colorscheme':'snazzy'}
hi comment ctermfg = 6


noremap h i
noremap H I
noremap i j
noremap j h

noremap I 5j
noremap J 5h
noremap K 7k
noremap L 7l
map s <nop>

map ; :
map si :set nosplitbelow<Cr> :split<Cr>
map sk :set splitbelow<Cr> :split<Cr>
map sj :set nosplitright<Cr> :vsplit<Cr>
map sl :set splitright<Cr> :vsplit<Cr>

map sh <C-w>t<C-w>H<Cr>
map sv <C-w>t<C-w>K<Cr>

map <left> :vertical resize +5<Cr>
map <right> :vertica: resize -5<Cr>
map <up> :res +5<Cr>
map <down> :res -5<Cr>

map ti :tabe<Cr>
map tj :-tabnext<Cr>
map tl :+tabnext<Cr>


map S :w<Cr>
map R :source $MYVIMRC<Cr>
map Q :q<Cr>


map <leader>i <C-w>j
map<leader>k <C-w>k
map<leader>j <C-w>h
map<leader>l <C-w>l

map <C-n> : NERDTreeToggle<CR>






" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
