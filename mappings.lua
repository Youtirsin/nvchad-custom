---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<Leader>a"] = {"<cmd>AerialToggle!<CR>", "Open Aerial outline"},
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<Leader>y"] = {"\"+y", "Copy to clipboard"},
  },
}

-- more keybinds!

return M
