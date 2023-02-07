-- Plugins that require little to no configuration are imported here. For more complex
-- plugins, see *.lua files in this directory.
return {

    -- Base plugins and dependencies
    'nvim-lua/popup.nvim',    -- Implementation of the Popup API from vim in lua
    'nvim-lua/plenary.nvim',  -- Useful lua functions used by lots of plugins
    'nvim-tree/nvim-web-devicons', -- web devicons are required by nvim-tree and lualine
    'fladson/vim-kitty',

    -- Colorschemes
    {
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd( [[colorscheme kanagawa]] )
        end
    },
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function ()
            -- vim.cmd( [[colorscheme kanagawa]] )
        end
    },
    {
        'dracula/vim',
        lazy = false,
        priority = 1000,
        config = function ()
            -- vim.cmd( [[colorscheme dracula]] )
        end
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000, -- force this to load before everything else
        config = function()
            --vim.cmd( [[colorscheme tokyonight-night]] )
        end
    },

    -- [[ Snippets ]] --
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",

    -- [[ LSP ]] --
    -- LSP configuration is more complex and I haven't figured out how to deal with it 
    -- in lazy.nvim yet.
    "neovim/nvim-lspconfig", -- enable LSP
    "williamboman/mason.nvim", -- Mason for managing feature installs
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    {
        'ray-x/lsp_signature.nvim',
        event = 'BufRead',
        config = function() require'lsp_signature'.on_attach() end,
    },

    -- [[ Git ]] --
    "lewis6991/gitsigns.nvim", -- gutter icons for git status per line
    'TimUntersberger/neogit',  -- Like fugitive, but in Lua?

    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-treesitter-context',
    'christianchiarulli/lua-dev.nvim',

    'SmiteshP/nvim-navic',
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        version = '*',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            show_dirname = true,
            show_modified = false,
            theme = {
                normal = { fg = "#DCD7BA", bg = "#181820" },

                separator = { fg = "#7E9CD8", bold = true },
                elipsis = { fg = "#7E9CD8", bold = true },
                modified = { fg = "#7E9CD8", bold = true },

                -- dirname = { fg = "#FF9E3B" },
                -- basename = { fg = "#C34043" },
                -- context = { fg = "#98BB6C" },

                context_string = { fg = "#FFFFFF" },
                -- context_file = { fg = "#658594" },
                -- context_object = { fg = "#658594" },
                -- context_module = { fg = "#658594" },
                -- context_namespace = { fg = "#658594" },
            }
        },
    },
}
