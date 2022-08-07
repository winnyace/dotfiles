"Winny's init.vim
"
"Plugins(via vim-plug)
call plug#begin()
Plug 'vimlab/split-term.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim'
Plug 'ap/vim-css-color'
Plug 'mg979/vim-visual-multi'
Plug 'alvan/vim-closetag'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()

"Basic
set number
set relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
syntax enable 
let mapleader = " "
colorscheme material 

"Plugin settings
"COC: <CR> for confirm completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"COC: <Tab> for moving around snippets for coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'
"split-term: splitted terminal to the right instead of left
set splitbelow "for Term

"split-term: default shell
let g:split_term_default_shell = "/usr/bin/fish"

"Binds
"Instant init.vim
nnoremap <leader>ci :e! ~/.config/nvim/init.vim <CR>

"Instant PlugInstall
nnoremap <leader>cp :PlugInstall <CR>

"Instant coc-marketplace
nnoremap <leader>cm :CocList marketplace <CR>

"Save
nnoremap <leader>s :w! <CR>

"fzf
nnoremap <leader>f :FZF ~/Documents/Projects <CR>

"NNN
nnoremap <leader>mf :NnnPicker ~/Documents/Projects <CR>

"Rust run with Cargo
autocmd FileType rust nnoremap <buffer> <leader>r :exec ':Term cargo run "#"' <CR>

"C++ compile
autocmd FileType cpp nnoremap <buffer> <leader>c :exec ':Term clang++ "#" -o #<' <CR>

"C++ run file
autocmd FileType cpp nnoremap <buffer> <leader>r :Term './#<' <CR>

"Python run file
autocmd FileType python nnoremap <buffer> <leader>r :Term python3  # <CR>
