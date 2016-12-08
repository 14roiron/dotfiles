" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.


runtime! debian.vim

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
"! set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/ycm-generator'
Plugin 'rip-rip/clang_complete'
"Plugin 'joequery/stupid-easymotion'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'itchyny/calendar.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'szw/vim-tags'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'sjl/vitality.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if has("syntax")
  syntax on
endif


" All of your Plugins must be added before the following line
filetype plugin indent on    " requiredt the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)


"""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","       " leader is comma

inoremap <S-CR> <Esc>
" turn off search highlight with ,-<space>
nnoremap <leader><space> :nohlsearch<CR>

" Invoke Ctrl-p with c-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'





set conceallevel=3
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

 " SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'
"let g:SuperTabDefaultCompletionType="context"

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
vmap <c-t> :call UltiSnips#SaveLastVisualSelection()<CR>gvs
"let g:UltiSnipsSnippetDirectory=["~/.vim/bundle/vim-snippets/snippets"]
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:tmux_navigator_no_mappings = 1
let mapleader = ","
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFocus<cr>
nnoremap <leader>s :w<cr>:TmuxNavigateRight<cr> 

vnoremap <leader>c "+y<cr>
vnoremap <leader>x "+ygvd<cr>
nnoremap <leader>v :set paste<cr>"+p :set paste!<cr>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
let g:AutoPairsMapCR=0

nnoremap <leader><leader>f vawy<cr> :tag <C-r>""<cr>
"nnoremap <silent>t f)a
inoremap <leader>e <Esc>f)a


":smap <C-j> <Plug>snipMateBack
":imap <C-j> <Plug>snipMateBack
":smap <C-k> <Plug>snipMateNextOrTrigger
":imap <C-k> <Plug>snipMateNextOrTrigger

""""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically update a file if it is changed externally
set autoread

" Height of the command bar
set cmdheight=2

set hlsearch	    " highlight search matches
set incsearch	    " search while characters are entered

" search is case-insensitive by default
set ignorecase
set smartcase

" Show linenumbers
set rnu
set number


set showcmd	" show last command in the bottom right

set ruler	" always show current position

" Line wrap (number of cols)
set wrap	    " wrap lines only visually
set linebreak	    " wrap only at valid characters
set textwidth=0	    " prevent vim from inserting linebreaks
set wrapmargin=0    "   in newly entered text

set tabstop=4
set shiftwidth=4
"set expandtab

" show matching braces
set showmatch

set wildmenu	    " visual autocomplete for command menu

" Stop vim from creating automatic backups "
set noswapfile
set nobackup
set nowb
"""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
if has("syntax")
  syntax on
endif

let base16colorspace=256  " Access colors present in 256 colorspace
if has('gui_running')
	    set background=light
else
		set background=dark
endif
colorscheme base16-default-dark
" UTF-8 encoding and en_US as default encoding/language
set encoding=utf8

" Define standard filetype
set ffs=unix,dos,mac

set cursorline	" highlight current active line

"""""""""""""""""""""""""""""""""""""""""""""""""
" Text and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4

set ai " Auto indent
set si " Smart indent

" modern backspace behavior
set backspace=indent,eol,start

filetype indent on	" enable filetype specific indentation

"""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-p
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'





let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'

"nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
"nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256"


" Parametres par defaut pour ack
 let g:ackprg="ack -H --nocolor --nogroup --column"
" " Place un marqueur et cherche
 nmap <leader>j mA:Ack<space>
" " Place un marqueur et cherche le mot sous le curseur
 nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
 nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"



if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

:au FocusLost * :set number
:au FocusGained * :set relativenumber



