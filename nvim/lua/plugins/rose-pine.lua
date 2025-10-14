return {
  -- add rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      -- customize rose-pine options here if needed
    },
  },

  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
