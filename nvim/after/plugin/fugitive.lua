vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.cmd('noremap <leader>gp :Git push <CR>:wincmd j <CR>')
