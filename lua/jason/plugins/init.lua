return {
    -- Base plugins and dependencies
    'nvim-lua/popup.nvim',    -- Implementation of the Popup API from vim in lua
    'nvim-lua/plenary.nvim',  -- Useful lua functions used by lots of plugins
    'nvim-tree/nvim-web-devicons', -- web devicons are required by nvim-tree and lualine

    -- Colorschemes
    --{ 'catppuccin/nvim', name = 'catppuccin' },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000, -- force this to load before everything else
        config = function()
            vim.cmd( [[colorscheme tokyonight-night]] )
        end
    },

    -- [[ CMP ]] --
    -- "hrsh7th/nvim-cmp",         -- CMP
    -- "hrsh7th/cmp-buffer",
    -- "hrsh7th/cmp-path",
    -- "saadparwaiz1/cmp_luasnip", -- CMP luasnip
    -- "hrsh7th/cmp-nvim-lsp",
    -- "hrsh7th/cmp-nvim-lua",

    -- [[ Snippets ]] --
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",

    -- [[ LSP ]] --
    "neovim/nvim-lspconfig", -- enable LSP
    "williamboman/mason.nvim", -- Mason for managing feature installs
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",

    -- [[ Git ]] --
    "lewis6991/gitsigns.nvim", -- gutter icons for git status per line

    -- [[ Treesitter ]] --
    -- "nvim-treesitter/nvim-treesitter",
}
