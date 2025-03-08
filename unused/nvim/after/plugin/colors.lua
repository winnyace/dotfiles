function color(color)
	color = color or "catppuccin-latte"
	vim.cmd.colorscheme(color)
    vim.cmd("let g:airline_theme = 'catppuccin'")
end

color()
