-- Plugins that require little to no configuration are imported here. For more complex
-- plugins, see *.lua files in this directory.
return {
    -- Base plugins and dependencies
    'nvim-lua/popup.nvim',    -- Implementation of the Popup API from vim in lua
    'nvim-lua/plenary.nvim',  -- Useful lua functions used by lots of plugins
    'nvim-tree/nvim-web-devicons', -- web devicons are required by nvim-tree and lualine

    -- Colorschemes
    --{ 'catppuccin/nvim', name = 'catppuccin' },
    {
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd( [[colorscheme kanagawa]] )
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

    -- [[ Git ]] --
    "lewis6991/gitsigns.nvim", -- gutter icons for git status per line
}
