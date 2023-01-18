local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
    return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = { "lua",
        "markdown",
        "json",
        "html",
        "css",
        "yaml",
        "bash",
        "python",
        "java",
        "javascript",
        "typescript",
        "rust",
        "c",
        "cpp",
    },
    ignore_install = { "" }, -- list of parsrers to ignore
    sync_install = false,    -- Install languages synchronously

    highlight = {
        enable = true, -- Enable syntax highlighting. False will disable the whole plugin.
        --disable = { "" }, -- languages that will be disabled.
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { "python", "css" },
    },

    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
})
