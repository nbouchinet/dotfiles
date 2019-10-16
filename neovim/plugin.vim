call plug#begin('~/.config/nvim/plugged')
" Install nightly build, replace ./install.sh with install.cmd on windows
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
" Or install latest release tag
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" Or build from source code
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Install ctrlp plugin
Plug 'kien/ctrlp.vim'
" Install vim surround
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
" Gruvbox
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kshenoy/vim-signature'
call plug#end()
