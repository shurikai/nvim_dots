return {
    'nvim-tree/nvim-tree.lua',
    version = 'nightly',
    cmd = "NvimTreeToggle",
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
    },
    opts = {
        sort_by = "case_sensitive",
        view = {
            adaptive_size = true,
            mappings = {
                list = {
                    { key = "u", action = "dir_up" },
                },
            },
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    }
}
