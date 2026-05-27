return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      local function server_opts(server)
        local current = opts.servers[server]
        return current == true and {} or current or {}
      end

      opts.servers.gopls = vim.tbl_deep_extend("force", server_opts("gopls"), {
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            usePlaceholders = true,
            completeUnimported = true, -- This enables auto-import
            gofumpt = true,
          },
        },
      })
    end,
  },
}
