vim.g.mapleader = " "

vim.keymap.set ('n', '<leader>s', ':w <CR>', {})
vim.keymap.set ('n', '<leader>t', ':Term <CR>', {})

vim.cmd("nmap <silent> <leader>wh :wincmd h<CR>")
vim.cmd("nmap <silent> <leader>wl :wincmd l<CR>")
vim.cmd("nmap <silent> <leader>wj :wincmd j<CR>")
vim.cmd("nmap <silent> <leader>wk :wincmd k<CR>")

vim.cmd("autocmd FileType cpp nnoremap <buffer> <leader>r :Term './#<' <CR>")
vim.cmd("autocmd FileType cpp nnoremap <buffer> <leader>c :make %< <CR>")

vim.cmd("autocmd FileType rust nnoremap <buffer> <leader>r :Term cargo run <CR>")
vim.cmd("autocmd FileType rust nnoremap <buffer> <leader>c :Term cargo check <CR>")

vim.cmd("autocmd FileType python nnoremap <buffer> <leader>r :Term python3  # <CR>")

vim.cmd("autocmd FileType cs nnoremap <buffer> <leader>r :Term dotnet run -v m<CR>")
