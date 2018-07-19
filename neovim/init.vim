call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'drmingdrmer/vim-tabbar'
Plug 'tomasr/molokai'
Plug 'justinmk/vim-syntax-extra'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'gilligan/vim-lldb'
Plug 'pbondoer/vim-42header'
Plug 'dbgx/lldb.nvim'
call plug#end()

"Set custom tab width according to language
autocmd FileType c,cpp,asm,s,php,html set ts=4 sw=4
autocmd FileType c UltiSnipsAddFiletypes c-libft

" General config.
"set guiheadroom=0
set noeb vb t_vb=
set guioptions-=aegimrLtT
set nu
set mouse=a
set smarttab
set modeline
set ruler
set history=100
set nowrap
set title
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set timeout timeoutlen=5000 ttimeoutlen=100
"set cursor collumn and line coloration
let mapleader=";"
colorscheme molokai 

"copy/paste from/to clipboard
set directory=$HOME/.vim/swapdir//
" Undo file.
set undofile
set undodir=$HOME/.vim/undodir
set undolevels=1000
set undoreload=10000

" Hide coloration of found words
map <C-C> :nohlsearch<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"Esc remaping.
inoremap kj <esc>

" Vim easymotion configuration.
" <Leader>f{char} to move to {char}
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Vim Nerdtree
nmap <leader>t :NERDTreeToggle<CR>
" Vim Ycm Goto
nmap <leader>g :YcmCompleter GoTo<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" Remove ycm tab cycle, use C-n and C-p instead tab will complete snippets
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
