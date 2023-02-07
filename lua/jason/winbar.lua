local M = {}

local navic = require 'nvim-navic'

M.winbar_filetype_exclude = {
    "help",
    "alpha",
    "dashboard",
    "NvimTree",
    "toggleterm",
}

local excludes = function()
    if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
        return true
    end
    return false
end

local get_location = function()
    local location = navic.get_location()
    return location
end

function M.get_winbar()
    if excludes() then
        return ""
    end
    if navic.is_available() then
        return "%-5m" .. get_location()
    else
        return "NE navic avail?"
    end
end

return M
