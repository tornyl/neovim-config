return {
    "scottmckendry/cyberdream.nvim",
    config = function()
        require("cyberdream").setup({
            -- Recommended - see "Configuring" below for more config options
            transparent = true,
            italic_comments = true,
            hide_fillchars = true,
            borderless_telescope = true,
        })
        --vim.cmd("colorscheme cyberdream") -- set the colorscheme
    end,
	 lazy=true,
}
