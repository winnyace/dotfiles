require("nvim-tree").setup({
    filters = {
        dotfiles = false,
    },
})

vim.keymap.set('n', '<leader>fm', vim.cmd.NvimTreeToggle)
