return {
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.smolconfigs").autotag()
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- minimal modes
  ["Pocco81/true-zen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    module = "shade",
    config = function()
      require("custom.plugins.smolconfigs").shade()
    end,
  },

  ["Pocco81/auto-save.nvim"] = {
    module = "autosave",
    config = function()
      require("custom.plugins.smolconfigs").autosave()
    end,
  },

  -- notes stuff
  ["nvim-neorg/neorg"] = {
    ft = "norg",
    after = "nvim-treesitter",
    config = function()
      require "custom.plugins.neorg"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },
  ["neovim/nvim-lspconfig"] = {
    opt = true,
    setup = function()
      require("core.lazy_load").on_file_open "nvim-lspconfig"
    end,
    config = function()
      require "custom.plugins.lspconfig"
    end,
  },

  ["glepnir/lspsaga.nvim"] = {
    after = "nvim-lspconfig",
    branch = "main",
    config = function()
      require "custom.plugins.lspsaga"
    end,
  },
  ["folke/which-key.nvim"] = { disable = false },
  ["tpope/vim-rails"] = {
    after = "nvim-lspconfig",
  },
  ["mfussenegger/nvim-lint"] = { disable = false },
  ["MunifTanjim/prettier.nvim"] = {
    after = "null-ls.nvim",
    config = function()
      require "custom.plugins.prettier"
    end,
  },
}
