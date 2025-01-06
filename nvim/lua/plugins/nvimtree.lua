-- lua/plugins/nvimtree.lua
local M = {}

function M.setup()
    require('nvim-tree').setup({
        view = {
            mappings = {
                list = {
                    { key = {"<CR>", "o"}, action = "edit" },
                    { key = "v", action = "vsplit" },
                    { key = "s", action = "split" },
                    { key = "R", action = "refresh" },
                    { key = "a", action = "create" },
                    { key = "d", action = "remove" },
                    { key = "r", action = "rename" },
                },
            },
        },
    })
end

return M
