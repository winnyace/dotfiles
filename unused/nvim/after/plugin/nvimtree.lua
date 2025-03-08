require("nvim-tree").setup({
    view = {
        width = 20,
    },
    filters = {
        dotfiles = false,
    },
})

vim.keymap.set('n', '<leader>fm', vim.cmd.NvimTreeToggle)
