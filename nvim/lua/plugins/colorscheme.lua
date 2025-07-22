return {
  -- Catppuccin plugin definition and configuration
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- High priority to load early [1, 11]
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- Options: latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          treesitter = true,
          native_lsp = {
            enabled = true,
          },
          cmp = true,
          telescope = true,
          which_key = true,
          gitsigns = true,
        },
      })
      -- This line is important to actually set the colorscheme after setup
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Configure LazyVim to use catppuccin as the default colorscheme
  -- This ensures LazyVim itself loads catppuccin from the start. [1, 2, 4]
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
