return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "dockerfile-language-server",
        "docker-compose-language-service",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        filename = {
          Dockerfile = "dockerfile",
          Containerfile = "dockerfile",
        },
        pattern = {
          ["Dockerfile%..*"] = "dockerfile",
          [".*%.Dockerfile"] = "dockerfile",
          ["Containerfile%..*"] = "dockerfile",
        },
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "dockerfile",
        callback = function(event)
          vim.bo[event.buf].expandtab = true
          vim.bo[event.buf].tabstop = 4
          vim.bo[event.buf].shiftwidth = 4
          vim.bo[event.buf].softtabstop = 4
        end,
      })
    end,
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      local function server_opts(server)
        local current = opts.servers[server]
        return current == true and {} or current or {}
      end

      opts.servers.dockerls = vim.tbl_deep_extend("force", server_opts("dockerls"), {
        cmd = { "docker-langserver", "--stdio" },
        filetypes = { "dockerfile" },
      })

      opts.servers.docker_compose_language_service =
        vim.tbl_deep_extend("force", server_opts("docker_compose_language_service"), {
          cmd = { "docker-compose-langserver", "--stdio" },
          filetypes = { "yaml.docker-compose" },
        })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.dockerfile = { lsp_format = "prefer" }
    end,
  },
}
