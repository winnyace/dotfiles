require("bufferline").setup{}

vim.keymap.set('n', 'bl', vim.cmd.BufferLineCycleNext)
vim.keymap.set('n', 'bh', vim.cmd.BufferLineCyclePrev)
vim.keymap.set('n', 'bxh', vim.cmd.BufferLineCloseLeft)
vim.keymap.set('n', 'bxl', vim.cmd.BufferLineCloseRight)

vim.cmd("nnoremap <leader>bm :BufferLineGoToBuffer 1 <CR>")
