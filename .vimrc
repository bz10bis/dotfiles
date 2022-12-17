let mapleader="\<Space>"

set number
set numberwidth=3

set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P

set hlsearch
syntax on
set encoding=utf-8
set hidden
set nowrap
set nojoinspaces

filetype indent on
set autoindent
set cindent
set formatoptions-=cro
set tabstop=4
set shiftwidth=4
set expandtab

" Better split
set splitright
set splitbelow

" Keep undo history
set undodir=~/vimdid
set undofile

" Better wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=*.png,*.jpg,*.gif,*.min.js,*.swp

" Completion
set completeopt=menuone,noinsert,noselect

" Better display for message
set cmdheight=2

" Diag message 
set updatetime=300

" Improve search
set incsearch
set ignorecase
set smartcase
set gdefault
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> " #zz
nnoremap <silent> g* g*zz

" ===========================================
" GUI
" ===========================================

if !has('gui_running')
	set t_Co=256
endif

if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
	set termguicolors
endif

set background=dark

" ligthline conf
set laststatus=2
set noshowmode

set guioptions-=T
set vb t_vb=
set backspace=2
set nofoldenable
set foldmethod=syntax
set ttyfast
set lazyredraw
set relativenumber
set number
set colorcolumn=80
set showcmd
set mouse=a

" Show hidden chars
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" ===========================================
" KEYBOARD 
" ===========================================

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left & right to switch buffers
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>

" Ctrl+h to remove search 
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" Toogle with last buffer
nnoremap <leader><leader> <c-^>

" Explore files 
nnoremap <leader>o :Vexplore<cr>

" Show hidden chars
nnoremap <leader>, ;set invlist<cr>

" Stats
nnoremap <leader>q g<c-g>

" Leave paste mode 
autocmd InsertLeave * set nopaste

" ===========================================
" PLUGINS 
" ===========================================
"set nocompatible
"filetype off
"call plug"being()

"call pulg"end()
