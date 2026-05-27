local markdownlint_config = vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml"

local function glow_preview()
  if vim.fn.executable("glow") == 0 then
    vim.notify("glow is not installed or not on PATH", vim.log.levels.ERROR)
    return
  end

  local tmp = vim.fn.tempname() .. ".md"
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  vim.fn.writefile(lines, tmp)

  local escaped_tmp = vim.fn.shellescape(tmp)
  local cmd = "glow -p " .. escaped_tmp .. "; rm -f " .. escaped_tmp

  require("snacks").terminal.open(cmd, {
    interactive = true,
    win = {
      width = 0.9,
      height = 0.9,
    },
  })
end

return {
  {
    "folke/snacks.nvim",
    init = function()
      vim.api.nvim_create_user_command("Glow", glow_preview, {
        desc = "Preview current buffer with glow",
      })
    end,
    keys = {
      {
        "<leader>cg",
        "<cmd>Glow<cr>",
        ft = { "markdown", "markdown.mdx" },
        desc = "Glow Preview",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}
      opts.formatters["markdownlint-cli2"] = vim.tbl_deep_extend("force", opts.formatters["markdownlint-cli2"] or {}, {
        prepend_args = { "--config", markdownlint_config },
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters = opts.linters or {}
      opts.linters["markdownlint-cli2"] = vim.tbl_deep_extend("force", opts.linters["markdownlint-cli2"] or {}, {
        args = { "--config", markdownlint_config, "-" },
      })
    end,
  },
}
