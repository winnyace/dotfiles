"Winny's init.vim
"Plugins(via vim-plug)
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vimlab/split-term.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim'
Plug 'ap/vim-css-color'
Plug 'mg979/vim-visual-multi'
Plug 'alvan/vim-closetag'
Plug 'jcherven/jummidark.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()

"Basic
set number
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
syntax enable 

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
let g:split_term_default_shell = "/usr/bin/zsh"

"Binds
"Instant init.vim
map <C-S-i> :e! /home/ion/.config/nvim/init.vim <CR>

"Instant PlugInstall
map <C-A-p> :PlugInstall <CR>

"Instant coc-marketplace
map <C-A-o> :CocList marketplace <CR>

"Save
map <C-s> :w! <CR>
imap <C-s> <ESC> :w! <CR>

"fzf
map <C-f> :FZF <CR>
imap <C-f> <ESC> :FZF <CR>

"NNN
map <C-A-f> :NnnPicker ~/Documents/Projects <CR>
imap <C-A-f> :NnnPicker ~/Documents/Projects <CR>

"Instant VTerm
map <C-t> :VTerm <CR>

"Rust run with Cargo
autocmd FileType rust map eF9> :exec ':Term cargo run "#"' <CR>
autocmd FileType rust imap <F9> :exec ':Term cargo run "#"' <CR>

"C++ compile
autocmd FileType cpp map <buffer> <F9> :exec ':Term g++ "#" -o #<' <CR>
autocmd FileType cpp imap <buffer> <F9> <ESC> :exec ':Term g++ "#" -o #<' <CR>

"C++ run file
autocmd FileType cpp map <buffer> <F5> :Term './#<' <CR>
autocmd FileType cpp imap <buffer> <F5> <ESC> :Term ./#<' <CR>

"Python run file
autocmd FileType python map <buffer> <F5> :exec':Term python3 #'<CR>
autocmd FileType python imap <buffer> <F5> :exec':Term python3 #'<CR>

autocmd FileType typescript map <buffer> <F5> :exec':Term ts-node #'<CR>
autocmd FileType typescript imap <buffer> <F5> :exec':Term ts-node #'<CR>
