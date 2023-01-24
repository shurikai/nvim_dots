return {
    'lewis6991/gitsigns.nvim',

    config = function ()
        require('gitsigns').setup {
            signs = {
                add = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
                change = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
                delete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
                topdelete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
                changedelete = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
                untracked = { hl = "GitSignsAdd", text = "|" , numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
            },
            signcolumn = true, -- Can be toggled with :Gitsigns toggle_signs
            numhl      = true, -- Toggle with ':Gitsigns toggle_numhl'
            linehl     = false, -- Toggle with ':Gitsigns toggle_linehl'
            word_diff  = false, -- Toggle with ':Gitsigns toggle_word_diff'
            current_line_blame = false;
            watch_gitdir = {
                interval = 1000,
                follow_files = true,
            },
            attach_to_untracked = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "right_align", -- "eol" | "overlay" | "right_align"
                delay = 1000,
            },
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil, -- use the default
            preview_config = {
                border = "single",
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1,
            },
            on_attach = function(bufnr)
                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                local gs = package.loaded.gitsigns

                map({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>')
                map({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>')

                map('n', '<leader>hS', gs.stage_buffer)
                map('n', '<leader>hR', gs.reset_buffer)
                map('n', '<leader>hs', gs.stage_hunk)
                map('n', '<leader>hu', gs.undo_stage_hunk)
                map('n', '<leader>hp', gs.preview_hunk)
                map('n', '<leader>hb', gs.blame_line)

            end
        }
    end
}
