return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local configs = require('nvim-treesitter.configs')

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
            refactor = {
                highlight_definitions = {
                    enable = true,
                    clear_on_cursor_move = true,
                },
                smart_rename = {
                    enable = true,
                    keymaps = {
                        smart_rename = 'grr',
                    },
                },
                navigation = {
                    enable = true,
                    keymaps = {
                        goto_definition_lsp_fallback = 'gnd',
                        list_definitions = 'gnD',
                        list_definitions_toc = 'gO',
                        goto_next_usage = '<A-*>',
                        goto_previous_usage = '<A-#>',
                    },
                },
            },
        })
    end
}
