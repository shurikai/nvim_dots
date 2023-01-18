local fn = vim.fn

-- Automatically install Packer if it hasn't been
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer. Close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Reload Neovim whenever you save the plugins.lua file.
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Protect the packer call so it doesn't error on the first use.
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Initialize packer
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {border = "rounded" }
        end,
    },
}

return require('packer').startup(function(use)
    -- Base plugins and dependencies
    use 'wbthomason/packer.nvim' -- Have packer manage itself
    use 'nvim-lua/popup.nvim'    -- Implementation of the Popup API from vim in lua
    use 'nvim-lua/plenary.nvim'  -- Useful lua functions used by lots of plugins

    -- Colorschemes
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use 'folke/tokyonight.nvim'

    -- My plugins
    -- Lualine status line plugin
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }

    use "windwp/nvim-autopairs" -- autopairs integrates with CMP and Treesitter
    use "akinsho/bufferline.nvim" -- NVIM bufferline
    use "akinsho/toggleterm.nvim"
    use "RRethy/vim-illuminate" -- highlight other uses of word under cursor
    use "lukas-reineke/indent-blankline.nvim"

    -- cmp plugins
    use { "hrsh7th/nvim-cmp" }         -- CMP
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "saadparwaiz1/cmp_luasnip" } -- CMP luasnip
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-nvim-lua" }

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- [[ LSP ]] --
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- Mason for managing feature installs
    use "williamboman/mason-lspconfig.nvim"
    use "jose-elias-alvarez/null-ls.nvim"

    -- telescope
    use { "nvim-telescope/telescope.nvim" }

    -- Git
    use { "lewis6991/gitsigns.nvim" }

    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"

end)
