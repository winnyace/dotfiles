local bind = vim.keymap.set

bind('n', '<leader>s', ':w <CR>', {silent = true})
bind('n', '<leader>fm', ':NnnPicker ~/Documents/Projects <CR>', {silent = true})
bind('n', '<leader>fs', ':FZF ~/Documents/Projects <CR>', {silent = true})
bind('n', '<leader>ci', ':FZF ~/.config/nvim/<CR>', {silent = true})
bind('n', '<leader>pi', ':PlugInstall<CR>', {silent = true})
bind('n', '<leader>pcm', ':CocList marketplace<CR>', {silent = true})
bind('n', '<leader>gs', ':0G<CR>', {silent = true})
bind('n', '<leader>ga', ':Git add .<CR>', {silent = true})
bind('n', '<leader>gc', ':Git commit<CR>', {silent = true})
bind('n', '<leader>gp', ':Git push origin main<CR>', {silent = true})


-- because I couldn't really find anyway to do this without using vimscript, there we go.
-- python run
vim.cmd("autocmd FileType python nnoremap <buffer> <leader>r :Term python3  # <CR>")

-- C++ compile and run
vim.cmd("autocmd FileType cpp nnoremap <buffer> <leader>r :Term './#<' <CR>")
vim.cmd("autocmd FileType cpp nnoremap <buffer> <leader>c :exec ':Term clang++ # -o #<' <CR>")

-- Rust run with Cargo
vim.cmd("autocmd FileType rust nnoremap <buffer> <leader>r :exec ':Term cargo run # ' <CR>")
