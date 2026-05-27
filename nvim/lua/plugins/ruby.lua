local function minitest_command()
  local buffer_dir = vim.fn.expand("%:p:h")
  local gemfile = vim.fs.find("Gemfile", { path = buffer_dir, upward = true })[1]

  if gemfile and vim.fn.executable("bundle") == 1 then
    return { "bundle", "exec", "ruby", "-Itest" }
  end

  return { "ruby", "-Itest" }
end

local ruby_lsp = vim.g.lazyvim_ruby_lsp or "ruby_lsp"
local ruby_formatter = vim.g.lazyvim_ruby_formatter or "rubocop"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "ruby",
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "erb-formatter",
        "erb-lint",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          enabled = ruby_lsp == "ruby_lsp",
        },
        rubocop = {
          enabled = ruby_formatter == "rubocop",
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ruby = { ruby_formatter },
        eruby = { "erb_format" },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "zidhuss/neotest-minitest",
    },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      opts.adapters["neotest-minitest"] = vim.tbl_deep_extend("force", opts.adapters["neotest-minitest"] or {}, {
        test_cmd = minitest_command,
      })
    end,
  },
}
