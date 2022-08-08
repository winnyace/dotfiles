local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

Plug 'vimlab/split-term.vim'
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim'
Plug 'ap/vim-css-color'
Plug 'mg979/vim-visual-multi'
Plug 'alvan/vim-closetag'
Plug 'kaicataldo/material.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug ('dracula/vim', {as = 'Dracula'})

vim.call('plug#end')
