require "nvchad.mappings"

-- add yours here

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

local map = vim.keymap.set

map("n", "<Leader>a", "<cmd>AerialToggle!<CR>", { desc = "Open Aerial outline" })
map("n", "qq", ":q<CR>", { desc = "quit" })

map("v", ">", ">gv", { desc = "indent" })
map("v", "<Leader>y", "\"+y", { desc = "Copy to clipboard" })
map("v", "<Leader>f", range_formatting, { desc = "LSP range formatting" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
