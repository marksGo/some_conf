"
" _          _ _                               _                    
"| |__   ___| | | ___    _ __ ___  _   ___   _(_)_ __ ___  _ __ ___ 
"| '_ \ / _ \ | |/ _ \  | '_ ` _ \| | | \ \ / / | '_ ` _ \| '__/ __|
"| | | |  __/ | | (_) | | | | | | | |_| |\ V /| | | | | | | | | (__ 
"|_| |_|\___|_|_|\___/  |_| |_| |_|\__, | \_/ |_|_| |_| |_|_|  \___|
"                                  |___/                            

"All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
 " settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
 " will be overwritten everytime an upgrade of the vim packages is performed.
 " It is recommended to make changes after sourcing debian.vim since it
 "alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
 let g:skip_defaults_vim = 1

 " Uncomment the next line to make Vim more Vi-compatible
 " NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes
  "numerous options, so any other options should be set AFTER setting 'compatible'.
 "set compatible
 set nocompatible

 " Vim5 and later versions support syntax highlighting. Uncommenting the next
 " line enables syntax highlighting by default.
 if has("syntax")
   syntax on
   endif

   " If using a dark background within the editing area and syntax highlighting
   " turn on this option as well
   " you can find the colorschme with command :colorscheme<space> <tab>
   set background=dark
   colorscheme desert
   hi Noraml ctermbg=black

   " Uncomment the following to have Vim jump to the last position when
   " reopening a file
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe ormal! g'\"" | endif

 "Uncomment the following to have Vim load indentation rules and plugins
"according to the detected filetype.
filetype plugin indent on



"Setting---------------------------------------------------------------------------
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
set showmode            "show the current mode:insert,normal,repale,visual,etc"
set showmatch           " Show matching brackets.
set encoding=utf-8      "use uft-8 encoding
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set autowrite           " Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=              " disable mouse usage 
set number
"set relativenumber
set hls                 "highlight the match pattern when you search
set tabstop=4   "you must set ts(tabstop) to 4 only when you set expandtab(et)
set expandtab   "the tab will be stitute with space
set shiftwidth=4 "the indent width is four space (when use << or >> to indent)
set textwidth=80
set guifont=Consolas:h18:cANSI:qDRAFT
set t_Co=256
set nobackup
set noswapfile
set undofile            "save the undo history to the undo-file"
set undodir=~/.vim/.undo//   "set the undo-file's directory"
set autochdir
set backspace=start,eol,indent  "make backspace can delete
set scrolloff=10
set nowrap
set cursorline
set list
set linebreak
set sidescrolloff=15
set ruler   "show the row number and column number of the cursor
set wildmenu            "you can use tab key to auto-complete your command,
set wildmode=longest:list,full  "and stroke it once,all macth commands coming
"and guess stroke it twice
set fillchars=eob:\   
highlight VertSplit guibg=#333333 guifg=#666666
let &t_SI="\<Esc>[6 q"."\<Esc>]12 blue\x7"   "the shape of cursor in insert mode
let &t_SR="\<Esc>[3 q"."\<Esc>]12 black\x7"   "the shape of cursor in repalce mode
let &t_EI="\<Esc>[2 q"."\<Esc>]12 green\x7"   "the shape of cursor in repalce mode
set laststatus=2      "we set laststatus=2 for the plugin airline


" nowritebackup,updatetime and signcolumn for coc.nvim
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes


"Key Mapping--------------------------------------------------------------------
"key mapping:map works in each mode, imap works in insert mode 
"nmap works in normal mode, noremap means no recursion map
"<esc> means Escape key,<C-p> means Ctrl and p, <Cr> means Enter key
"<Up>,<Down>,<left>,<right> means (sorry,i don't konw how to type them
"<nop> means no meaning,like null,<leader> is the maopleader
"if you want change a key mapping ,you must unmap it first
"you need these commands:unmap,iunmap,vunmap,etc
let mapleader=" "
inoremap jj <esc>

"some vim hot keys--------
"no hightsearch
nnoremap <leader><Cr> :nohls<Cr>    
noremap <C-s> :w<Cr>
noremap <C-q> :q!<Cr>
noremap <C-R> :source .vimrc<Cr>
noremap <leader><leader> <Esc>/<++><Cr>:nohls<Cr>c4l
nnoremap fl :r !figlet 

"vim motion-----------
noremap <C-j> 6j
noremap H 7h
noremap <C-k> 6k
noremap L 7l

"vim windows---------
noremap s <nop>
noremap sj :set nosplitbelow<Cr> :split<Cr>
noremap sk :set splitbelow<Cr> :split<Cr>
noremap sl :set nosplitright<Cr> :vsplit<Cr>
noremap sr :set splitright<Cr> :vsplit<Cr>

noremap sh <C-w>t<C-w>H<Cr>
noremap sv <C-w>t<C-w>K<Cr>

noremap <left> :vertical resize +5<Cr>
noremap <right> :vertica: resize -5<Cr>
noremap <up> :res +5<Cr>
noremap <down> :res -5<Cr>

noremap <leader>j <C-w>j
noremap<leader>k <C-w>k
noremap<leader>h <C-w>h
noremap<leader>l <C-w>l
noremap <leader>c <C-w>c
noremap <leader>q <C-w>q

"vim tab -----------
noremap ti :tabe<Cr>
noremap tj :-tabnext<Cr>
noremap tk :+tabnext<Cr>

"some shortcuts for vim's plugin-----------------.
"----------------key-shortcuts-nerdtree--------------
"nnoremap <leader>n :NERDTreeFocus<CR>       
"nnoremap <C-n> :NERDTree<CR>
"open or close the nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>          
"find where is the file you work on 
nnoremap <C-f> :NERDTreeFind<CR>


"----------------key-shortcuts-coc.nvim--------------









"Plugin--------------------------------------------------------------------------

"-----------------configuration for vim-plug---------
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


"-----------------configuration for NERDTree---------
" Start NERDTree and leave the cursor in other windows
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

"show the lines of file
let g:NERDTreeFileLines = 1

"we use vim-plug to manage(install,remove or update) our plugin

"    :PlugInstall to install the plugins
"    :PlugUpdate to install or update the plugins
"    :PlugDiff to review the changes from the last update
"    :PlugClean to remove plugins no longer in the list

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF',{'do':'./install.sh'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'



" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

let g:vim_markdown_folding_disabled=1

" set to 1, nvim will open the preview window after entering the Markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the MarkdownPreview command can be used for all files,
" by default it can be use in Markdown files only
" default: 0
let g:mkdp_command_for_global = 1

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = '/usr/bin/firefox'

" options for Markdown rendering
" mkit: markdown-it options for rendering
" katex: KaTeX options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: whether to disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: means the cursor position is always at the middle of the preview page
"   top: means the Vim top viewport always shows up at the top of the preview page
"   relative: means the cursor position is always at relative positon of the preview page
" hide_yaml_meta: whether to hide YAML metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" set default theme (dark or light)
" By default the theme is defined according to the preferences of the system
let g:mkdp_theme = 'light'

nmap <leader>p :MarkdownPreview<Cr>
nmap <leader>s :MarkdownPreviewStop<Cr>
nmap <C-p> :MarkdownPreviewToggle<Cr>


Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
call plug#end()


"Plugin-coc.nvim-----------------------------------------------------------------
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config

"{ hey,i use a tips to find the beginning and end of the all configuration for
"coc.nvim:you just find the bracket before 'hey' and make the cursor on it and
"type '%',yes the % key could find the macthing brackets

let g:coc_global_extensions=[
            \ 'coc-python',
            \  'coc-dictionary' ,
            \  'coc-vimlsp',
            \  'coc-git',
             \ 'coc-marketplace',
              \ 'coc-tag',
              \ 'coc-word',
              \ 'coc-emoji']


" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `gN` and `gn` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> gN <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"Use <C-n>, <C-p>, <up> and <down> to navigate completion list: >
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"
inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"


"Use <C-e> and <C-y> to cancel and confirm completion: >
inoremap <silent><expr> <C-e> coc#pum#visible() ? coc#pum#cancel() : "\<C-e>"
inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"hi CocMenuSel ctermbg=151 ctermfg=20 

hi CocFloating cterm=bold ctermbg=233 ctermfg=White  
"hi CocFloatDividingLine ctermbg=White
hi CocFloatActive ctermbg=159
hi CocMenuSel ctermbg=39 ctermfg=black cterm=bold


"},hey got you ^-^!

"------------------------------------------------------------------------------------
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
  endif

