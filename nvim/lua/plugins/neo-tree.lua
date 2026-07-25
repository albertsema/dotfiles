return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          always_show = {
            ".claude",
            ".codex",
            ".zshrc",
            ".gitconfig",
            ".github",
            ".gitignore",
            ".gitattributes",
            ".gitmodules",
            ".editorconfig",
            ".env",
            ".env.example",
            ".dockerignore",
          },
        },
      },
    },
  },
}
