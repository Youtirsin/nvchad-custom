return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp", "prettier"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },

  -- mine

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      local config = require('session_manager.config')
      require('session_manager').setup({
        autoload_mode = config.AutoloadMode.CurrentDir
      })
    end,
  },

  {
    "stevearc/aerial.nvim",
    lazy = false,
    config = function()
      require("aerial").setup()
    end,
  },
}
