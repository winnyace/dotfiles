require("bufferline").setup{}

vim.keymap.set('n', 'bl', vim.cmd.BufferLineCycleNext)
vim.keymap.set('n', 'bh', vim.cmd.BufferLineCyclePrev)

vim.cmd("nnoremap <leader>bm :BufferLineGoToBuffer 1 <CR>")
