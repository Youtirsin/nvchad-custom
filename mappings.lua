---@type MappingsTable
local M = {}

M.general = {
  v = {
    [">"] = { ">gv", "indent"},
    ["<Leader>y"] = {"\"+y", "copy to clipboard"},
  },
}

-- more keybinds!

return M
