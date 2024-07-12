syntax on
set number
set shiftwidth=4
set smartindent
set autoindent
set colorcolumn=80

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'instant-markdown/vim-instant-markdown', {'for': ['markdown', 'markdown.pandoc']}
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }

call plug#end()

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000
" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like Bash completion.
set wildmode=list:longest
set background=dark

set noswapfile
set printoptions=number:y

nnoremap <SPACE> <Nop>
let mapleader=" "
set timeoutlen=3000
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :Ex<CR>
nnoremap <leader>f :browse oldfiles<CR>
nnoremap <leader>b :bnext<CR>
nnoremap <leader>n :enew<CR>
nnoremap <leader>v <c-v>
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set laststatus=2
set statusline=%F%m%r%h%w%=\ [%04l,%04v]\ [%p%%]\ [%L]

let g:ale_fixers = {
            \   'c': ['clang-format'],
            \   'go': ['gofmt'],
            \   'powershell': ['psscriptanalyzer', 'remove_trailing_lines', 'trim_whitespace'],
            \}

let g:ale_fix_on_save = 1
let g:deoplete#enable_at_startup = 1

source C:/users/tgudl/vimfiles/PowershellFormatters.vim
