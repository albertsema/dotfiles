local kubernetes_manifest_globs = {
  "k8s/**/*.yaml",
  "k8s/**/*.yml",
  "kubernetes/**/*.yaml",
  "kubernetes/**/*.yml",
  "manifests/**/*.yaml",
  "manifests/**/*.yml",
  "deploy/**/*.yaml",
  "deploy/**/*.yml",
  "deployments/**/*.yaml",
  "deployments/**/*.yml",
}

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "yamlfmt",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      local function server_opts(server)
        local current = opts.servers[server]
        return current == true and {} or current or {}
      end

      opts.servers.yamlls = vim.tbl_deep_extend("force", server_opts("yamlls"), {
        settings = {
          yaml = {
            schemas = {
              kubernetes = kubernetes_manifest_globs,
            },
          },
        },
      })
    end,
  },
}
