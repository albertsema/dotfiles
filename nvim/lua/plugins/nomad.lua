return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        extension = {
          nomad = "hcl.nomad",
        },
        pattern = {
          [".*%.nomad%.hcl$"] = "hcl.nomad",
          [".*/nomad/.*%.hcl$"] = "hcl.nomad",
          [".*/nomad%-jobs/.*%.hcl$"] = "hcl.nomad",
          [".*%.consul%.hcl$"] = "hcl",
          [".*/consul/.*%.hcl$"] = "hcl",
          [".*/consul%.d/.*%.hcl$"] = "hcl",
          [".*/consul/.*%.json$"] = "json",
          [".*/consul%.d/.*%.json$"] = "json",
        },
      })

      vim.treesitter.language.register("hcl", { "hcl.nomad", "nomad" })
    end,
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      local function server_opts(server)
        local current = opts.servers[server]
        return current == true and {} or current or {}
      end

      opts.servers.nomad_lsp = vim.tbl_deep_extend("force", server_opts("nomad_lsp"), {
        filetypes = { "hcl.nomad", "nomad" },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft["hcl.nomad"] = { "nomad_fmt" }
      opts.formatters_by_ft.nomad = { "nomad_fmt" }
    end,
  },
}
