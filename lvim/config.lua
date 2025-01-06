-- Color Scheme
lvim.colorscheme = "catppuccin-mocha"

-- Format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.go", ".rb", ".rs" }


-- User defined plugins
lvim.plugins = {
  -- color scheme
  { "catppuccin/nvim", as = "catppuccin" },

  -- github copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}

-- Github copilot config
local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  suggestion = {
    keymap = {
      accept = "<c-l>",
      next = "<c-j>",
      prev = "<c-k>",
      dismiss = "<c-h>",
    },
  },
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
