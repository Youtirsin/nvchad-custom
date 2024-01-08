---@type MappingsTable
local M = {}

local range_formatting = function()
  local start_row, _ = unpack(vim.api.nvim_buf_get_mark(0, "<"))
  local end_row, _ = unpack(vim.api.nvim_buf_get_mark(0, ">"))
  vim.lsp.buf.format({
    range = {
      ["start"] = { start_row, 0 },
      ["end"] = { end_row, 0 },
    },
    async = true,
  })
end

M.general = {
  n = {
    ["<Leader>a"] = {"<cmd>AerialToggle!<CR>", "Open Aerial outline"},
    ["qq"] = {":q<CR>", "quit"}
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<Leader>y"] = {"\"+y", "Copy to clipboard"},
    ["<Leader>f"] = {range_formatting, "LSP range formatting"},
  },
}

-- more keybinds!

return M
