-- Neovim options
--
local vo = vim.opt
local vg = vim.g

local options = {
    backup = false,
    writebackup = false,
    swapfile = false,
    clipboard = 'unnamedplus',
    fileencoding = 'utf-8',
    termguicolors = true,

    hlsearch = true,
    ignorecase = true,
    smartcase = true,
    smartindent = true,

    splitbelow = true,
    splitright = true,

    mouse = 'a',
    pumheight = 10,
    showmode = false,
    showtabline = 2,

    undofile = true,
    updatetime = 300,

    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,

    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = 'yes',
    wrap = false,
    scrolloff = 8,
}
-- disable netrw so we can use nvim-tree
vg.loaded_netrw = 1
vg.loaded_netrwPlugin = 1

for k, v in pairs(options) do
    vo[k] = v
end
