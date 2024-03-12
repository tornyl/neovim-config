return{
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    dependencies = {
        "williamboman/mason.nvim",
        {"williamboman/mason-lspconfig.nvim"},
        {"neovim/nvim-lspconfig"},
        {
            "hrsh7th/cmp-buffer",
            config = function()
                require("cmp").setup({
                        sources = {
                            name = 'buffer',
                        }
                    })
            end,

        },
        {
            "hrsh7th/cmp-path",
            config = function()
                require("cmp").setup({
                        sources = {
                            name = 'path',
                        }
                    })
            end,

        },
        {
            "hrsh7th/cmp-nvim-lua",
            config = function()
                require("cmp").setup({
                        sources = {
                            name = 'nvim_lua',
                        }
                    })
            end,

        },
        {
        'hrsh7th/nvim-cmp',
          config = function ()
            require'cmp'.setup {
            snippet = {
              expand = function(args)
                require'luasnip'.lsp_expand(args.body)
              end
            },

            sources = {
              { name = 'luasnip' },
              -- more sources
            },
          }
          end
        },
        { "saadparwaiz1/cmp_luasnip" }, 
        { "rafamadriz/friendly-snippets" },


    }
}

}

